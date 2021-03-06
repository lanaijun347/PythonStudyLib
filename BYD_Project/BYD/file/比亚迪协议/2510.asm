
    车型ID：2510

    模拟：协议模拟-->2510

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7B3 02 10 01 00 00 00 00 00       $~  ANS000:7BB 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7B3 02 3E 80 00 00 00 00 00       $!  ANS000:7BB 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7B3 03 19 02 09 00 00 00 00       $#  ANS000:7BB 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0e000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7B3 04 14 FF FF FF 00 00 00       $$  ANS000:7BB 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7B3 03 22 F1 93 00 00 00 00       $%  ANS000:7BB 03 22 F1 93 00 00 00 00
  $%  REQ001:7B3 03 22 F1 94 00 00 00 00       $%  ANS001:7BB 03 22 F1 94 00 00 00 00
  $%  REQ002:7B3 03 22 F1 95 00 00 00 00       $%  ANS002:7BB 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7B3 03 22 00 06 00 00 00 00       $  ANS000:7BB 03 22 00 06 00 00 00 00
  $  REQ001:7B3 03 22 00 07 00 00 00 00       $  ANS001:7BB 03 22 00 07 00 00 00 00
  $  REQ002:7B3 03 22 00 08 00 00 00 00       $  ANS002:7BB 03 22 00 08 00 00 00 00
  $  REQ003:7B3 03 22 00 09 00 00 00 00       $  ANS003:7BB 03 22 00 09 00 00 00 00
  $  REQ004:7B3 03 22 00 0A 00 00 00 00       $  ANS004:7BB 03 22 00 0A 00 00 00 00
  $  REQ005:7B3 03 22 00 0B 00 00 00 00       $  ANS005:7BB 03 22 00 0B 00 00 00 00
  $  REQ006:7B3 03 22 00 0C 00 00 00 00       $  ANS006:7BB 03 22 00 0C 00 00 00 00
  $  REQ007:7B3 03 22 00 0D 00 00 00 00       $  ANS007:7BB 03 22 00 0D 00 00 00 00
  $  REQ008:7B3 03 22 00 10 00 00 00 00       $  ANS008:7BB 03 22 00 10 00 00 00 00
  $  REQ009:7B3 03 22 00 11 00 00 00 00       $  ANS009:7BB 03 22 00 11 00 00 00 00

  $  000:压缩机控制状态                         $    $               $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@00d2;0x01: y=@011a;default: y=@001c;
  $  001:压缩机实际状态                         $    $               $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@00d2;0x01: y=@011a;default: y=@001c;
  $  002:压缩机目标转速                         $    $  rpm          $    $  ANS002.BYTE004  $  y=(x1<<8)+x2;
  $  003:压缩机实际转速                         $    $  rpm          $    $  ANS003.BYTE004  $  y=(x1<<8)+x2;
  $  004:负载电压                               $    $  V            $    $  ANS004.BYTE004  $  y=(x1<<8)+x2;
  $  005:负载电流                               $    $  A            $    $  ANS005.BYTE004  $  y=x1*0.125;
  $  006:压缩机当前功率                         $    $  W            $    $  ANS006.BYTE004  $  y=(x1<<8)+x2;
  $  007:IPM/IGBT(绝缘栅双极型晶体管)温度       $    $  degree C     $    $  ANS007.BYTE004  $  y=x1-100;
  $  008:相电流                                 $    $  A            $    $  ANS008.BYTE004  $  y=x1*0.125;
  $  009:电流采样电路状态                       $    $               $    $  ANS009.BYTE004  $  if(((x1&0x03)==0)) y=@0022;else if(((x1&0x03)==1)) y=@03c1;else if(((x1&0x03)==2)) y=@03c2;else if(((x1&0x03)==3)) y=@03c3;else y=@001c;
  $  010:三相电流状态                           $    $               $    $  ANS009.BYTE004  $  if(((x1&0x0C)==0)) y=@0022;else if(((x1&0x0C)==4)) y=@03c1;else if(((x1&0x0C)==8)) y=@03c2;else if(((x1&0x0C)==12)) y=@03c3;else y=@001c;
  $  011:IPM/IGBT(绝缘栅双极型晶体管)状态       $    $               $    $  ANS009.BYTE004  $  if(((x1&0x10)==0)) y=@0022;else if(((x1&0x10)==16)) y=@003a;else y=@001c;
  $  012:内部温度传感器状态                     $    $               $    $  ANS009.BYTE004  $  if(((x1&0x20)==0)) y=@0022;else if(((x1&0x20)==32)) y=@003a;else y=@001c;
  $  013:内部电流状态                           $    $               $    $  ANS009.BYTE004  $  if(((x1&0xC0)==0)) y=@0022;else if(((x1&0xC0)==64)) y=@03c9;else if(((x1&0xC0)==128)) y=@03ca;else if(((x1&0xC0)==192)) y=@03cb;else y=@001c;
  $  014:启动状态                               $    $               $    $  ANS009.BYTE005  $  if(((x1&0x01)==0)) y=@0022;else if(((x1&0x01)==1)) y=@04b2;else y=@001c;
  $  015:内部温度状态                           $    $               $    $  ANS009.BYTE005  $  if(((x1&0x06)==0)) y=@0022;else if(((x1&0x06)==2)) y=@03c4;else if(((x1&0x06)==4)) y=@04b1;else if(((x1&0x06)==6)) y=@009e;else y=@001c;
  $  016:转速状态                               $    $               $    $  ANS009.BYTE005  $  if(((x1&0x08)==0)) y=@0022;else if(((x1&0x08)==8)) y=@003a;else y=@001c;
  $  017:压缩机负载状态                         $    $               $    $  ANS009.BYTE005  $  if(((x1&0x30)==0)) y=@0022;else if(((x1&0x30)==16)) y=@03c7;else if(((x1&0x30)==32)) y=@03c8;else if(((x1&0x30)==48)) y=@009e;else y=@001c;
  $  018:母线电压状态                           $    $               $    $  ANS009.BYTE005  $  if(((x1&0xC0)==0)) y=@0022;else if(((x1&0xC0)==64)) y=@03c5;else if(((x1&0xC0)==128)) y=@03c6;else if(((x1&0xC0)==192)) y=@009e;else y=@001c;
  $  019:内部低压电状态                         $    $               $    $  ANS009.BYTE006  $  if(((x1&0x03)==0)) y=@0022;else if(((x1&0x03)==1)) y=@03cd;else if(((x1&0x03)==2)) y=@03ce;else if(((x1&0x03)==3)) y=@009e;else y=@001c;
  $  020:相电压状态                             $    $               $    $  ANS009.BYTE006  $  if(((x1&0x04)==0)) y=@0022;else if(((x1&0x04)==4)) y=@03cc;else y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7B3 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
