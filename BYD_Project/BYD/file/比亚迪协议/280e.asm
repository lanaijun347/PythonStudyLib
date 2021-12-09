
    车型ID：280e

    模拟：协议模拟-->280e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:747 02 10 01 00 00 00 00 00       $~  ANS000:74F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:747 02 3E 80 00 00 00 00 00       $!  ANS000:74F 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:747 03 19 02 09 00 00 00 00       $#  ANS000:74F 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/7e000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:747 04 14 FF FF FF 00 00 00       $$  ANS000:74F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:747 03 22 F1 93 00 00 00 00       $%  ANS000:74F 03 22 F1 93 00 00 00 00
  $%  REQ001:747 03 22 F1 94 00 00 00 00       $%  ANS001:74F 03 22 F1 94 00 00 00 00
  $%  REQ002:747 03 22 F1 95 00 00 00 00       $%  ANS002:74F 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:747 03 22 00 04 00 00 00 00       $  ANS000:74F 03 22 00 04 00 00 00 00
  $  REQ001:747 03 22 00 05 00 00 00 00       $  ANS001:74F 03 22 00 05 00 00 00 00

  $  000:L1系统位置记忆                      $    $        $    $  ANS000.BYTE004  $  if(x1&0x01) y=@025d;else y=@025e;
  $  001:L2系统位置记忆                      $    $        $    $  ANS000.BYTE004  $  if(x1&0x02) y=@025d;else y=@025e;
  $  002:L3系统位置记忆                      $    $        $    $  ANS000.BYTE004  $  if(x1&0x04) y=@025d;else y=@025e;
  $  003:电源档位状态                        $    $        $    $  ANS000.BYTE004  $  switxh(x1&0x18)0x00: y=@00d3;0x08: y=@025c;0x10: y=@00d4;default: y=@001c;
  $  004:系统工作状态                        $    $        $    $  ANS000.BYTE004  $  switxh(x1&0x60)0x20: y=@0259;0x40: y=@025a;0x60: y=@025b;default: y=@001c;
  $  005:请检查记忆系统                      $    $        $    $  ANS000.BYTE005  $  if(x1&0x01) y=@00d3;else y=@00d4;
  $  006:系统状态                            $    $        $    $  ANS000.BYTE005  $  if(x1&0x02) y=@003a;else y=@0022;
  $  007:记忆倒车翻转前垂直位置电压          $    $  V     $    $  ANS001.BYTE004  $  y=((x1<<8)+x2)*0.01;
  $  008:记忆倒车翻转前水平位置电压          $    $  V     $    $  ANS001.BYTE006  $  y=((x1<<8)+x2)*0.01;
  $  009:左外后视镜水平记忆系统位置1         $    $  V     $    $  ANS001.BYTE008  $  y=((x1<<8)+x2)*0.01;
  $  010:左外后视镜水平记忆位置2             $    $  V     $    $  ANS001.BYTE010  $  y=((x1<<8)+x2)*0.01;
  $  011:左外后视镜水平记忆位置3             $    $  V     $    $  ANS001.BYTE012  $  y=((x1<<8)+x2)*0.01;
  $  012:左外后视镜垂直记忆位置1             $    $  V     $    $  ANS001.BYTE014  $  y=((x1<<8)+x2)*0.01;
  $  013:左外后视镜垂直记忆位置2             $    $  V     $    $  ANS001.BYTE016  $  y=((x1<<8)+x2)*0.01;
  $  014:左外后视镜垂直记忆位置3             $    $  V     $    $  ANS001.BYTE018  $  y=((x1<<8)+x2)*0.01;
  $  015:右外后视镜水平记忆系统位置1         $    $  V     $    $  ANS001.BYTE020  $  y=((x1<<8)+x2)*0.01;
  $  016:右外后视镜水平记忆位置2             $    $  V     $    $  ANS001.BYTE022  $  y=((x1<<8)+x2)*0.01;
  $  017:右外后视镜水平记忆位置3             $    $  V     $    $  ANS001.BYTE024  $  y=((x1<<8)+x2)*0.01;
  $  018:右外后视镜垂直记忆位置1             $    $  V     $    $  ANS001.BYTE026  $  y=((x1<<8)+x2)*0.01;
  $  019:右外后视镜垂直记忆位置2             $    $  V     $    $  ANS001.BYTE028  $  y=((x1<<8)+x2)*0.01;
  $  020:右外后视镜垂直记忆位置3             $    $  V     $    $  ANS001.BYTE030  $  y=((x1<<8)+x2)*0.01;
  $  021:水平调节电机系统位置1               $    $        $    $  ANS001.BYTE032  $  y=(x1<<8)+x2;
  $  022:靠背调节电机系统位置1               $    $        $    $  ANS001.BYTE034  $  y=(x1<<8)+x2;
  $  023:座盆调节电机系统位置1               $    $        $    $  ANS001.BYTE036  $  y=(x1<<8)+x2;
  $  024:高度调节电机系统位置1               $    $        $    $  ANS001.BYTE038  $  y=(x1<<8)+x2;
  $  025:水平调节电机系统位置2               $    $        $    $  ANS001.BYTE040  $  y=(x1<<8)+x2;
  $  026:靠背调节电机系统位置2               $    $        $    $  ANS001.BYTE042  $  y=(x1<<8)+x2;
  $  027:座盆调节电机系统位置2               $    $        $    $  ANS001.BYTE044  $  y=(x1<<8)+x2;
  $  028:高度调节电机系统位置2               $    $        $    $  ANS001.BYTE046  $  y=(x1<<8)+x2;
  $  029:水平调节电机系统位置3               $    $        $    $  ANS001.BYTE048  $  y=(x1<<8)+x2;
  $  030:靠背调节电机系统位置3               $    $        $    $  ANS001.BYTE050  $  y=(x1<<8)+x2;
  $  031:座盆调节电机系统位置3               $    $        $    $  ANS001.BYTE052  $  y=(x1<<8)+x2;
  $  032:高度调节电机系统位置3               $    $        $    $  ANS001.BYTE054  $  y=(x1<<8)+x2;
  $  033:电动管柱轴向调节电机系统位置1       $    $        $    $  ANS001.BYTE056  $  y=(x1<<8)+x2;
  $  034:电动管柱角度调节电机系统位置1       $    $        $    $  ANS001.BYTE058  $  y=(x1<<8)+x2;
  $  035:电动管柱轴向调节电机系统位置2       $    $        $    $  ANS001.BYTE060  $  y=(x1<<8)+x2;
  $  036:电动管柱角度调节电机系统位置2       $    $        $    $  ANS001.BYTE062  $  y=(x1<<8)+x2;
  $  037:电动管柱轴向调节电机系统位置3       $    $        $    $  ANS001.BYTE064  $  y=(x1<<8)+x2;
  $  038:电动管柱角度调节电机系统位置3       $    $        $    $  ANS001.BYTE066  $  y=(x1<<8)+x2;
  $  039:左外后视镜当前水平位置              $    $  V     $    $  ANS001.BYTE068  $  y=((x1<<8)+x2)*0.01;
  $  040:左外后视镜当前垂直位置              $    $  V     $    $  ANS001.BYTE070  $  y=((x1<<8)+x2)*0.01;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:747 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
