
    车型ID：1518

    模拟：协议模拟-->1518

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

  $*$*DTC/feff0000_2BYTE


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

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=x1*0.1;
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=x1*0.1;
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:750 03 22 00 04 00 00 00 00       $  ANS000:758 03 22 00 04 00 00 00 00
  $  REQ001:750 03 22 00 05 00 00 00 00       $  ANS001:758 03 22 00 05 00 00 00 00

  $  000:靠背调节开关后倾信号       $    $        $    $  ANS000.BYTE004  $  if(x1&0x01) y=@0004;else y=@0005;
  $  001:靠背调节开关前倾信号       $    $        $    $  ANS000.BYTE004  $  if(x1&0x02)y=@0004;else y=@0005;
  $  002:座盆调节开关下调信号       $    $        $    $  ANS000.BYTE004  $  if(x1&0x04)y=@0004;else y=@0005;
  $  003:座盆调节开关上调信号       $    $        $    $  ANS000.BYTE004  $  if(x1&0x08)y=@0004;else y=@0005;
  $  004:高度调节开关下调信号       $    $        $    $  ANS000.BYTE004  $  if(x1&0x10)y=@0004;else y=@0005;
  $  005:高度调节开关上调信号       $    $        $    $  ANS000.BYTE004  $  if(x1&0x20)y=@0004;else y=@0005;
  $  006:水平调节开关后滑信号       $    $        $    $  ANS000.BYTE004  $  if(x1&0x40)y=@0004;else y=@0005;
  $  007:水平调节开关前滑信号       $    $        $    $  ANS000.BYTE004  $  if(x1&0x80)y=@0004;else y=@0005;
  $  008:座椅系统状态信息           $    $        $    $  ANS000.BYTE005  $  if(x1&0x01) y=@003a;else y=@0022;
  $  009:座椅系统工作状态           $    $        $    $  ANS000.BYTE005  $  switxh(x1&0x0F)0x00:y=@0259 0x01: y=@0259;0x02:y=@025a; 0x03: y=@025a;0x04:y=@025b; 0x05: y=@025b;0x06:y=@0476; 0x07: y=@0476;default: y=@001c;
  $  010:电源档位状态               $    $        $    $  ANS000.BYTE005  $  switxh(x1&0x30)0x00: y=@00d3;0x10: y=@025c;0x20: y=@00d4;0x30: y=@001c;default:y=@0076;
  $  011:电源电压                   $    $  V     $    $  ANS001.BYTE004  $  y=x1*19.9/255;
  $  012:水平调节电机当前位置       $    $        $    $  ANS001.BYTE005  $  y=x1*256+x2;
  $  013:靠背调节电机当前位置       $    $        $    $  ANS001.BYTE007  $  y=x1*256+x2;
  $  014:座盆调节电机当前位置       $    $        $    $  ANS001.BYTE009  $  y=x1*256+x2;
  $  015:高度调节电机当前位置       $    $        $    $  ANS001.BYTE011  $  y=x1*256+x2;
  $  016:水平调节电机行程           $    $        $    $  ANS001.BYTE013  $  y=x1*256+x2;
  $  017:靠背调节电机行程           $    $        $    $  ANS001.BYTE015  $  y=x1*256+x2;
  $  018:座盆调节电机行程           $    $        $    $  ANS001.BYTE017  $  y=x1*256+x2;
  $  019:高度调节电机行程           $    $        $    $  ANS001.BYTE019  $  y=x1*256+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:750 30 01 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
