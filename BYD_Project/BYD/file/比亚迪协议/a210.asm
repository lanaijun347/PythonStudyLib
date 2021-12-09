
    车型ID：a210

    模拟：协议模拟-->a210

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:747 02 10 01 00 00 00 00 00       $~  ANS000:74F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:747 02 3E 80 00 00 00 00 00       $!  ANS000:74F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:747 04 18 00 00 FF 00 00 00       $#  ANS000:74F 04 18 00 00 FF 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a20d0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:747 03 14 00 FF 00 00 00 00       $$  ANS000:74F 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:747 03 22 00 01 00 00 00 00       $%  ANS000:74F 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%.1f],x1*0.1);
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.状态量
  $  00.状态量
  $  REQ000:747 03 22 00 04 00 00 00 00       $  ANS000:74F 03 22 00 04 00 00 00 00

  $  000:L1系统位置记忆       $    $       $    $  ANS000.BYTE004  $  if(x1&0x01) y=@025d;else y=@025e;
  $  001:L2系统位置记忆       $    $       $    $  ANS000.BYTE004  $  if(x1&0x02) y=@025d;else y=@025e;
  $  002:L3系统位置记忆       $    $       $    $  ANS000.BYTE004  $  if(x1&0x04) y=@025d;else y=@025e;
  $  003:系统状态             $    $       $    $  ANS000.BYTE005  $  if(x1&0x02) y=@003a;else y=@0022;
  $  004:系统工作状态         $    $       $    $  ANS000.BYTE004  $  if((x1&0x60)==0x20)y=@0259;else if((x1&0x60)==0x40)y=@025a;else if((x1&0x60)==0x60)y=@025b;else y=@009e;
  $  005:电源档位状态         $    $       $    $  ANS000.BYTE004  $  if((x1&0x18)==0x00 )y=@009f;else if((x1&0x18)==0x08)y=@025c;else if((x1&0x18)==0x10) y=@00a0;else if((x1&0x18)==0x18) y=@009e;
  $  006:请检查记忆系统       $    $       $    $  ANS000.BYTE005  $  if(x1&0x01)y=@009f;else y=@00a0;

  $)  01.模拟量
  $  01.模拟量
  $  REQ000:747 03 22 00 05 00 00 00 00       $  ANS000:74F 03 22 00 05 00 00 00 00

  $  000:记忆倒车翻转前垂直位置电压       $    $  V     $    $  ANS000.BYTE004  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;
  $  001:记忆倒车翻转前水平位置电压       $    $  V     $    $  ANS000.BYTE006  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;
  $  002:左后视镜水平记忆位置1            $    $  V     $    $  ANS000.BYTE008  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;
  $  003:左后视镜水平记忆位置2            $    $  V     $    $  ANS000.BYTE010  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;
  $  004:左后视镜水平记忆位置3            $    $  V     $    $  ANS000.BYTE012  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;
  $  005:左后视镜垂直记忆位置1            $    $  V     $    $  ANS000.BYTE014  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;
  $  006:左后视镜垂直记忆位置2            $    $  V     $    $  ANS000.BYTE016  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;
  $  007:左后视镜垂直记忆位置3            $    $  V     $    $  ANS000.BYTE018  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;
  $  008:右后视镜水平记忆位置1            $    $  V     $    $  ANS000.BYTE020  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;
  $  009:右后视镜水平记忆位置2            $    $  V     $    $  ANS000.BYTE022  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;
  $  010:右后视镜水平记忆位置3            $    $  V     $    $  ANS000.BYTE024  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;
  $  011:右后视镜垂直记忆位置1            $    $  V     $    $  ANS000.BYTE026  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;
  $  012:右后视镜垂直记忆位置2            $    $  V     $    $  ANS000.BYTE028  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;
  $  013:右后视镜垂直记忆位置3            $    $  V     $    $  ANS000.BYTE030  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;
  $  014:水平调节电机位置1                $    $        $    $  ANS000.BYTE032  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  015:水平调节电机位置2                $    $        $    $  ANS000.BYTE040  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  016:水平调节电机位置3                $    $        $    $  ANS000.BYTE048  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  017:靠背调节电机位置1                $    $        $    $  ANS000.BYTE034  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  018:靠背调节电机位置2                $    $        $    $  ANS000.BYTE042  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  019:靠背调节电机位置3                $    $        $    $  ANS000.BYTE050  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  020:座盆调节电机位置1                $    $        $    $  ANS000.BYTE036  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  021:座盆调节电机位置2                $    $        $    $  ANS000.BYTE044  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  022:座盆调节电机位置3                $    $        $    $  ANS000.BYTE052  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  023:高度调节电机位置1                $    $        $    $  ANS000.BYTE038  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  024:高度调节电机位置2                $    $        $    $  ANS000.BYTE046  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  025:高度调节电机位置3                $    $        $    $  ANS000.BYTE054  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  026:管柱轴向调节电机位置1            $    $        $    $  ANS000.BYTE056  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  027:管柱轴向调节电机位置2            $    $        $    $  ANS000.BYTE060  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  028:管柱轴向调节电机位置3            $    $        $    $  ANS000.BYTE064  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  029:管柱角度调节电机位置1            $    $        $    $  ANS000.BYTE058  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  030:管柱角度调节电机位置2            $    $        $    $  ANS000.BYTE062  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  031:管柱角度调节电机位置3            $    $        $    $  ANS000.BYTE066  $  if((x1*256+x2)<=0x0FFE) y=x1*256+x2;else if((x1*256+x2)==0x0FFF)y=@00be;else y=@009e;
  $  032:左后视镜当前水平位置             $    $        $    $  ANS000.BYTE068  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;
  $  033:左后视镜当前垂直位置             $    $        $    $  ANS000.BYTE070  $  if((x1*256+x2)<=0x0212) y=x1*2.56+x2*0.01;else y=@009e;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:747 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
