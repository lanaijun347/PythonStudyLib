
    车型ID：0b49

    模拟：协议模拟-->0b49

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:752 02 10 01 00 00 00 00 00       $~  ANS000:75A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:752 02 3E 80 00 00 00 00 00       $!  ANS000:75A 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:752 04 18 00 00 FF 00 00 00       $#  ANS000:75A 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/0b490000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:752 03 14 00 FF 00 00 00 00       $$  ANS000:75A 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:752 03 22 00 01 00 00 00 00       $%  ANS000:75A 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d],(x1/10),(x1%10));
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d.%d],(x1/10),(x1%10));
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.状态量
  $  00.状态量
  $  REQ000:752 03 22 00 04 00 00 00 00       $  ANS000:75A 03 22 00 04 00 00 00 00

  $  000:系统工作状态       $    $       $    $  ANS000.BYTE004  $  if((x1&0x06)==0x02)y=@0259;else if((x1&0x06)==0x04)y=@025a;else if((x1&0x06)==0x06)y=@025b;else y=@009e;
  $  001:系统状态           $    $       $    $  ANS000.BYTE004  $  if(x1&0x01)y=@003a;else y=@0022;
  $  002:电源档位状态       $    $       $    $  ANS000.BYTE004  $  if((x1&0x18)==0x08)y=@025c;else if((x1&0x18)==0x10)y=@00a0;else if((x1&0x18)==0x18)y=@009e;else y=@009f;

  $)  01.模拟量
  $  01.模拟量
  $  REQ000:752 03 22 00 05 00 00 00 00       $  ANS000:75A 03 22 00 05 00 00 00 00

  $  000:后视镜垂直传感器电压             $    $  V     $    $  ANS000.BYTE008  $  if((x1*256+x2)<0x0213) y=(x1*256+x2)*0.01;else if((x1*256+x2)==0x0fff)y=@00be;else y=@009e;
  $  001:后视镜水平传感器电压             $    $  V     $    $  ANS000.BYTE010  $  if((x1*256+x2)<0x0213) y=(x1*256+x2)*0.01;else if((x1*256+x2)==0x0fff)y=@00be;else y=@009e;
  $  002:记忆倒车翻转前垂直位置电压       $    $  V     $    $  ANS000.BYTE004  $  if((x1*256+x2)<0x0213) y=(x1*256+x2)*0.01;else if((x1*256+x2)==0xfff)y=@00be;else y=@009e;
  $  003:记忆倒车翻转前水平位置电压       $    $  V     $    $  ANS000.BYTE006  $  if((x1*256+x2)<0x0213) y=(x1*256+x2)*0.01;else if((x1*256+x2)==0xfff)y=@00be;else y=@009e;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:752 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
