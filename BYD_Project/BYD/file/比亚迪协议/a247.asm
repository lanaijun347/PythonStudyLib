
    车型ID：a247

    模拟：协议模拟-->a247

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:750 02 10 01 00 00 00 00 00       $~  ANS000:758 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:750 02 3E 80 00 00 00 00 00       $!  ANS000:758 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:750 04 18 00 00 FF 00 00 00       $#  ANS000:758 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a2350000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:750 03 14 00 FF 00 00 00 00       $$  ANS000:758 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:750 03 22 00 01 00 00 00 00       $%  ANS000:758 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.状态量
  $  00.状态量
  $  REQ000:750 03 22 00 04 00 00 00 00       $  ANS000:758 03 22 00 04 00 00 00 00

  $  000:座椅工作状态               $    $       $    $  ANS000.BYTE005  $  if((x1&0x0e)==0x00)y=@0259;else if((x1&0x0e)==0x02)y=@025a;else if((x1&0x0e)==0x04)y=@025b;else if((x1&0x0e)==0x06)y=@025f;else if((x1&0x0e)==0x08)y=@0260;else y=@009e;
  $  001:电源档位状态               $    $       $    $  ANS000.BYTE005  $  if((x1&0x30)==0x00)y=@009f;else if((x1&0x30)==0x10)y=@025c;else if((x1&0x30)==0x20)y=@00a0;else if((x1&0x30)==0x30)y=@009e;
  $  002:座椅系统状态信息           $    $       $    $  ANS000.BYTE005  $  if(x1&0x01)y=@003a;else y=@0022;
  $  003:背靠调节开关后倾信号       $    $       $    $  ANS000.BYTE004  $  if(x1&0x01)y=@009f;else y=@00a0;
  $  004:背靠调节开关前倾信号       $    $       $    $  ANS000.BYTE004  $  if(x1&0x02)y=@009f;else y=@00a0;
  $  005:座盆调节开关下调信号       $    $       $    $  ANS000.BYTE004  $  if(x1&0x04)y=@009f;else y=@00a0;
  $  006:座盆调节开关上调信号       $    $       $    $  ANS000.BYTE004  $  if(x1&0x08)y=@009f;else y=@00a0;
  $  007:高度调节开关下调信号       $    $       $    $  ANS000.BYTE004  $  if(x1&0x10)y=@009f;else y=@00a0;
  $  008:高度调节开关上调信号       $    $       $    $  ANS000.BYTE004  $  if(x1&0x20)y=@009f;else y=@00a0;
  $  009:水平调节开关后滑信号       $    $       $    $  ANS000.BYTE004  $  if(x1&0x40)y=@009f;else y=@00a0;
  $  010:水平调节开关前滑信号       $    $       $    $  ANS000.BYTE004  $  if(x1&0x80)y=@009f;else y=@00a0;

  $)  01.模拟量
  $  01.模拟量
  $  REQ000:750 03 22 00 05 00 00 00 00       $  ANS000:758 03 22 00 05 00 00 00 00

  $  000:电源电压                   $    $  V     $    $  ANS000.BYTE004  $  y=x1*19.8/255;
  $  001:水平调节电机行程           $    $        $    $  ANS000.BYTE013  $  if((x1*256+x2)<0x0fff) y=(x1*256+x2);else if((x1*256+x2)==0x0fff)y=@00be;else y=@009e;
  $  002:靠背调节电机行程           $    $        $    $  ANS000.BYTE015  $  if((x1*256+x2)<0x0fff) y=(x1*256+x2);else if((x1*256+x2)==0x0fff)y=@00be;else y=@009e;
  $  003:座盆调角电机行程           $    $        $    $  ANS000.BYTE017  $  if((x1*256+x2)<0x0fff) y=(x1*256+x2);else if((x1*256+x2)==0x0fff)y=@00be;else y=@009e;
  $  004:高度调节电机行程           $    $        $    $  ANS000.BYTE019  $  if((x1*256+x2)<0x0fff) y=(x1*256+x2);else if((x1*256+x2)==0x0fff)y=@00be;else y=@009e;
  $  005:水平调节电机当前位置       $    $        $    $  ANS000.BYTE005  $  if((x1*256+x2)<0x0fff) y=(x1*256+x2);else if((x1*256+x2)==0x0fff)y=@00be;else y=@009e;
  $  006:背靠调节电机当前位置       $    $        $    $  ANS000.BYTE007  $  if((x1*256+x2)<0x0fff) y=(x1*256+x2);else if((x1*256+x2)==0x0fff)y=@00be;else y=@009e;
  $  007:座盆调节电机当前位置       $    $        $    $  ANS000.BYTE009  $  if((x1*256+x2)<0x0fff) y=(x1*256+x2);else if((x1*256+x2)==0x0fff)y=@00be;else y=@009e;
  $  008:高度调节电机当前位置       $    $        $    $  ANS000.BYTE011  $  if((x1*256+x2)<0x0fff) y=(x1*256+x2);else if((x1*256+x2)==0x0fff)y=@00be;else y=@009e;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:750 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
