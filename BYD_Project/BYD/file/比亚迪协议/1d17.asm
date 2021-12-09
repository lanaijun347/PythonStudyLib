
    车型ID：1d17

    模拟：协议模拟-->1d17

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

  $*$*DTC/feff0000_2BYTE


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

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=x1*0.1;
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=x1*0.1;
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:725 03 22 00 03 00 00 00 00       $  ANS000:72D 03 22 00 03 00 00 00 00
  $  REQ001:725 03 22 00 04 00 00 00 00       $  ANS001:72D 03 22 00 04 00 00 00 00
  $  REQ002:725 03 22 00 05 00 00 00 00       $  ANS002:72D 03 22 00 05 00 00 00 00

  $  000:灯光总开关AUTO开关       $    $       $    $  ANS000.BYTE004  $  if(x1&0x01)y=@0005;else y=@0004;
  $  001:灯光总开关小灯开关       $    $       $    $  ANS000.BYTE004  $  if(x1&0x02)y=@0005;else y=@0004;
  $  002:前雾灯开关               $    $       $    $  ANS000.BYTE004  $  if(x1&0x04)y=@0005;else y=@0004;
  $  003:后雾灯开关               $    $       $    $  ANS000.BYTE004  $  if(x1&0x08)y=@0005;else y=@0004;
  $  004:远光灯开关               $    $       $    $  ANS000.BYTE004  $  if(x1&0x10)y=@0005;else y=@0004;
  $  005:会车灯开关               $    $       $    $  ANS000.BYTE004  $  if(x1&0x20)y=@0005;else y=@0004;
  $  006:左转向灯开关             $    $       $    $  ANS000.BYTE004  $  if(x1&0x40)y=@0005;else y=@0004;
  $  007:右转向灯开关             $    $       $    $  ANS000.BYTE004  $  if(x1&0x80)y=@0005;else y=@0004;
  $  008:前刮水器MIST开关         $    $       $    $  ANS001.BYTE004  $  if(x1&0x01)y=@0005;else y=@0004;
  $  009:前刮水器HI档开关         $    $       $    $  ANS001.BYTE004  $  if(x1&0x02)y=@0005;else y=@0004;
  $  010:前刮水器LO档开关         $    $       $    $  ANS001.BYTE004  $  if(x1&0x04)y=@0005;else y=@0004;
  $  011:前刮水器INT开关          $    $       $    $  ANS001.BYTE004  $  if((x1&0x7F)<0x10)y=@045d;else if((x1&0x7F)<0x20)y=@045e;else if((x1&0x7F)<0x30)y=@045f;else if((x1&0x7F)<0x40)y=@0460;else if((x1&0x7F)<0x50)y=@0461;else y=@001c;
  $  012:前水刮器AUTO开关         $    $       $    $  ANS001.BYTE005  $  if((x1&0x03)==0x00)y=@0469;else if((x1&0x03)==0x01)y=@046a;else if((x1&0x03)==0x02)y=@046b;else if((x1&0x03)==0x03)y=@046c;
  $  013:前洗涤器开关             $    $       $    $  ANS001.BYTE005  $  if(x1&0x04)y=@0005;else y=@0004;
  $  014:回家照明功能时间         $    $       $    $  ANS002.BYTE004  $  if((x1&0x07)==0x00)y=@0642;else if((x1&0x07)==0x01)y=@0463;else if((x1&0x07)==0x02)y=@0464;else if((x1&0x07)==0x03)y=@0465;else if((x1&0x07)==0x04)y=@0466;else if((x1&0x07)==0x05)y=@0467;else if((x1&0x07)==0x06)y=@0468;else y=@001c;
  $  015:离家照明功能时间         $    $       $    $  ANS002.BYTE004  $  if((x1&0x38)==0x00)y=@0641;else if((x1&0x38)==0x08)y=@0457;else if((x1&0x38)==0x10)y=@0458;else if((x1&0x38)==0x18)y=@0459;else if((x1&0x38)==0x20)y=@045a;else if((x1&0x38)==0x28)y=@045b;else if((x1&0x38)==0x30)y=@045c;else y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:725 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
