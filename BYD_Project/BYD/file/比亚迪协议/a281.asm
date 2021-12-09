
    车型ID：a281

    模拟：协议模拟-->a281

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7C7 02 10 01 00 00 00 00 00       $~  ANS000:7CF 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7C7 02 3E 01 00 00 00 00 00       $!  ANS000:7CF 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7C7 04 18 00 00 FF 00 00 00       $#  ANS000:7CF 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a2810000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7C7 03 14 00 FF 00 00 00 00       $$  ANS000:7CF 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7C7 03 22 00 01 00 00 00 00       $%  ANS000:7CF 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=x1/10.0;
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=x1/10.0;
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d/%d/%d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.状态量
  $  00.状态量
  $  REQ000:7C7 03 22 00 04 00 00 00 00       $  ANS000:7CF 03 22 00 04 00 00 00 00

  $  000:电源档位状态           $    $       $    $  ANS000.BYTE005  $  if((x1&0x03)==0) y=@0022;else if((x1&0x03)==1) y=@003a;else if((x1&0x03)==2) y=@009f;else y=@0076;
  $  001:调节开关缩回信号       $    $       $    $  ANS000.BYTE004  $  if((x1&0x0F)<0x08) y=@009f;else y=@0022;
  $  002:系统状态信息           $    $       $    $  ANS000.BYTE004  $  if((x1&0x1F)<0x10) y=@025b;else y=@025f;
  $  003:调节开关上倾信号       $    $       $    $  ANS000.BYTE004  $  if(x1&0x01) y=@009e;else y=@00be;
  $  004:调节开关下倾信号       $    $       $    $  ANS000.BYTE004  $  if(x1&0x02) y=@009e;else y=@00be;
  $  005:调节开关伸出信号       $    $       $    $  ANS000.BYTE004  $  if(x1&0x04) y=@009e;else y=@00be;
  $  006:工作状态信息           $    $       $    $  ANS000.BYTE004  $  if(x1<0x20) y=@0259;else if((x1<0x40)&&(x1>=0x20)) y=@025a;else if((x1<0x60)&&(x1>=0x40)) y=@025b;else if((x1<0x80)&&(x1>=0x60)) y=@025f;else if((x1<0xA0)&&(x1>=0x80)) y=@025e;else y=@0076;

  $)  01.模拟量
  $  01.模拟量
  $  REQ000:7C7 03 22 00 05 00 00 00 00       $  ANS000:7CF 03 22 00 05 00 00 00 00

  $  000:电源电压                   $    $  V     $    $  ANS000.BYTE004  $  y=x1*19.8/255;
  $  001:轴向调节电机行程           $    $        $    $  ANS000.BYTE009  $  if((x1*256+x2)>2047) y=@00a0;else y=x1*256+x2;
  $  002:角度调节电机行程           $    $        $    $  ANS000.BYTE011  $  if((x1*256+x2)>2047) y=@00a0;else y=x1*256+x2;
  $  003:轴向调节电机当前位置       $    $        $    $  ANS000.BYTE005  $  if((x1*256+x2)>2047) y=@00a0;else y=x1*256+x2;
  $  004:角度调节电机当前位置       $    $        $    $  ANS000.BYTE007  $  if((x1*256+x2)>2047) y=@00a0;else y=x1*256+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7C7 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
