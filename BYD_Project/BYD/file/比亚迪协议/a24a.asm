
    车型ID：a24a

    模拟：协议模拟-->a24a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:720 02 10 01 00 00 00 00 00       $~  ANS000:728 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:720 02 3E 01 00 00 00 00 00       $!  ANS000:728 02 3E 01 00 00 00 00 00

退出命令:

  $@  REQ000:720 01 20 00 00 00 00 00 00       $@  ANS000:728 01 20 00 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:720 04 18 00 00 FF 00 00 00       $#  ANS000:728 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a2490000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:720 03 14 00 FF 00 00 00 00       $$  ANS000:728 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:720 03 22 00 01 00 00 00 00       $%  ANS000:728 03 22 00 01 00 00 00 00
  $%  REQ001:720 03 22 00 03 00 00 00 00       $%  ANS001:728 03 22 00 03 00 00 00 00
  $%  REQ002:720 03 22 00 05 00 00 00 00       $%  ANS002:728 03 22 00 05 00 00 00 00
  $%  REQ003:720 03 22 00 20 00 00 00 00       $%  ANS003:728 03 22 00 20 00 00 00 00

  $%  000:软件版本:          $%    $%  ANS000.BYTE004  $%  HEX(x1);
  $%  001:硬件版本:          $%    $%  ANS001.BYTE005  $%  HEX(x1);
  $%  002:日期:              $%    $%  ANS001.BYTE007  $%  y=SPRINTF([%d-%d-%d],x1,x2,x3);
  $%  003:主板序列号:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d%d%d%d%d%d%d%d%d%d],x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:VIN:               $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.钥匙识别
  $  00.钥匙识别
  $  REQ000:720 03 22 00 02 00 00 00 00       $  ANS000:728 03 22 00 02 00 00 00 00

  $  000:第一把钥匙ID       $    $       $    $  ANS000.BYTE004  $  if(x1==0x01)y=x2*16777216+x3*65536+x4*256+x5;else y=@0076;

  $)  01.遥控器收发
  $  01.遥控器收发
  $  REQ000:720 03 22 00 03 00 00 00 00       $  ANS000:728 03 22 00 03 00 00 00 00

  $  000:钥匙的ID       $    $       $    $  ANS000.BYTE004  $  y=x1*16777216+x2*65536+x3*256+x4;

  $)  02.门把手探测器
  $  02.门把手探测器
  $  REQ000:720 03 22 00 04 00 00 00 00       $  ANS000:728 03 22 00 04 00 00 00 00

  $  000:门把手探测器状态       $    $       $    $  ANS000.BYTE004  $  if(x1==0x01)y=@031c;else y=@031d;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:720 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
