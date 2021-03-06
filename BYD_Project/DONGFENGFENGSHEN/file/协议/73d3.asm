
    车型ID：73d3

    模拟：协议模拟-->73d3

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E9

进入命令:

  $~  REQ000:7E1 02 10 01 00 00 00 00 00       $~  ANS000:7E9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E1 02 3E 00 00 00 00 00 00       $!  ANS000:7E9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E1 03 19 02 2F 00 00 00 00       $#  ANS000:7E9 03 19 02 2F 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/c6000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E1 04 14 FF FF FF 00 00 00       $$  ANS000:7E9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E1 03 22 F1 87 00 00 00 00       $%  ANS000:7E9 03 22 F1 87 00 00 00 00
  $%  REQ001:7E1 03 22 F1 89 00 00 00 00       $%  ANS001:7E9 03 22 F1 89 00 00 00 00
  $%  REQ002:7E1 03 22 F1 8A 00 00 00 00       $%  ANS002:7E9 03 22 F1 8A 00 00 00 00
  $%  REQ003:7E1 03 22 F1 8C 00 00 00 00       $%  ANS003:7E9 03 22 F1 8C 00 00 00 00
  $%  REQ004:7E1 03 22 F1 90 00 00 00 00       $%  ANS004:7E9 03 22 F1 90 00 00 00 00
  $%  REQ005:7E1 03 22 F1 95 00 00 00 00       $%  ANS005:7E9 03 22 F1 95 00 00 00 00
  $%  REQ006:7E1 03 22 F1 97 00 00 00 00       $%  ANS006:7E9 03 22 F1 97 00 00 00 00
  $%  REQ007:7E1 03 22 F1 99 00 00 00 00       $%  ANS007:7E9 03 22 F1 99 00 00 00 00
  $%  REQ008:7E1 03 22 F1 79 00 00 00 00       $%  ANS008:7E9 03 22 F1 79 00 00 00 00
  $%  REQ009:7E1 03 22 F1 8E 00 00 00 00       $%  ANS009:7E9 03 22 F1 8E 00 00 00 00

  $%  000:零件号:                $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%c%c%c%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  001:软件版本号(OEM):       $%    $%  ANS001.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  002:供应商标识:            $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:ECU序列号:             $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $%  004:VIN:                   $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  005:软件版本号(OEM):       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  006:系统名称:              $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $%  007:编程日期:              $%    $%  ANS007.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  008:硬件版本号(OEM):       $%    $%  ANS008.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  009:车辆转配零件号:        $%    $%  ANS009.BYTE004  $%  HEX(x1,x2);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流1
  $  00.数据流1
  $  REQ000:7E1 03 22 20 03 00 00 00 00       $  ANS000:7E9 03 22 20 03 00 00 00 00
  $  REQ001:7E1 03 22 20 04 00 00 00 00       $  ANS001:7E9 03 22 20 04 00 00 00 00
  $  REQ002:7E1 03 22 20 05 00 00 00 00       $  ANS002:7E9 03 22 20 05 00 00 00 00
  $  REQ003:7E1 03 22 20 15 00 00 00 00       $  ANS003:7E9 03 22 20 15 00 00 00 00
  $  REQ004:7E1 03 22 20 21 00 00 00 00       $  ANS004:7E9 03 22 20 21 00 00 00 00
  $  REQ005:7E1 03 22 20 22 00 00 00 00       $  ANS005:7E9 03 22 20 22 00 00 00 00
  $  REQ006:7E1 03 22 20 23 00 00 00 00       $  ANS006:7E9 03 22 20 23 00 00 00 00
  $  REQ007:7E1 03 22 20 31 00 00 00 00       $  ANS007:7E9 03 22 20 31 00 00 00 00
  $  REQ008:7E1 03 22 20 32 00 00 00 00       $  ANS008:7E9 03 22 20 32 00 00 00 00
  $  REQ009:7E1 03 22 20 33 00 00 00 00       $  ANS009:7E9 03 22 20 33 00 00 00 00
  $  REQ010:7E1 03 22 20 41 00 00 00 00       $  ANS010:7E9 03 22 20 41 00 00 00 00
  $  REQ011:7E1 03 22 20 42 00 00 00 00       $  ANS011:7E9 03 22 20 42 00 00 00 00
  $  REQ012:7E1 03 22 20 43 00 00 00 00       $  ANS012:7E9 03 22 20 43 00 00 00 00
  $  REQ013:7E1 03 22 20 51 00 00 00 00       $  ANS013:7E9 03 22 20 51 00 00 00 00
  $  REQ014:7E1 03 22 20 52 00 00 00 00       $  ANS014:7E9 03 22 20 52 00 00 00 00
  $  REQ015:7E1 03 22 20 61 00 00 00 00       $  ANS015:7E9 03 22 20 61 00 00 00 00

  $  000.换档电机1转速                   $    $  rpm      $    $  ANS000.BYTE004  $  if(x1<0x80)y=(x1<<24)+(x2<<16)+(x3<<8)+x4;else y=(x1*256*256*256-4294967296)+(x2*65536)+(x3*256)+x4;
  $  001.变速电机1电流                   $    $  A        $    $  ANS001.BYTE004  $  y=(x1*256+x2)/128;
  $  002.变速电机1电源电压               $    $  V        $    $  ANS002.BYTE004  $  y=(x1*256+x2)/1000;
  $  003.换挡电机1供电电压               $    $  V        $    $  ANS003.BYTE004  $  y=(x1*256+x2)/1000;
  $  004.离合器电机1转速                 $    $  rpm      $    $  ANS004.BYTE004  $  if(x1<0x80)y= x1*256+x2;else y=x1*256+x2-65536;
  $  005.离合器电机1电流                 $    $  A        $    $  ANS005.BYTE004  $  y=(x1*256+x2)/128.0;
  $  006.离合器电机1供电电压             $    $  V        $    $  ANS006.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/512;else y=(x1*256+x2-65536)/512;
  $  007.离合器电机2转速                 $    $  rpm      $    $  ANS007.BYTE004  $  if(x1<0x80)y= x1*256+x2;else y=x1*256+x2-65536;
  $  008.离合器电机2电流                 $    $  A        $    $  ANS008.BYTE004  $  y=(x1*256+x2)/128.0;
  $  009.离合器电机2供电电压             $    $  V        $    $  ANS009.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/512;else y=(x1*256+x2-65536)/512;
  $  010.离合器冷却电机转速              $    $  rpm      $    $  ANS010.BYTE004  $  if(x1<0x80)y= x1*256+x2;else y=x1*256+x2-65536;
  $  011.离合器冷却电机电流              $    $  A        $    $  ANS011.BYTE004  $  y=(x1*256+x2)/128.0;
  $  012.离合器冷却电机供电电压          $    $  V        $    $  ANS012.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/512;else y=(x1*256+x2-65536)/512;
  $  013.离合器1压力传感器信号           $    $  mbar     $    $  ANS013.BYTE004  $  if(x1<0x80)y=(x1*256+x2)*2;else y=(x1*256+x2-65536)*2;
  $  014.离合器1压力传感器供电电压       $    $  V        $    $  ANS014.BYTE004  $  y=(x1*256+x2)/1000;
  $  015.离合器2压力传感器信号           $    $  mbar     $    $  ANS015.BYTE004  $  if(x1<0x80)y=(x1*256+x2)*2;else y=(x1*256+x2-65536)*2;

  $)  01.数据流2
  $  01.数据流2
  $  REQ000:7E1 03 22 20 62 00 00 00 00       $  ANS000:7E9 03 22 20 62 00 00 00 00
  $  REQ001:7E1 03 22 20 71 00 00 00 00       $  ANS001:7E9 03 22 20 71 00 00 00 00
  $  REQ002:7E1 03 22 20 72 00 00 00 00       $  ANS002:7E9 03 22 20 72 00 00 00 00
  $  REQ003:7E1 03 22 20 81 00 00 00 00       $  ANS003:7E9 03 22 20 81 00 00 00 00
  $  REQ004:7E1 03 22 20 82 00 00 00 00       $  ANS004:7E9 03 22 20 82 00 00 00 00
  $  REQ005:7E1 03 22 20 91 00 00 00 00       $  ANS005:7E9 03 22 20 91 00 00 00 00
  $  REQ006:7E1 03 22 20 92 00 00 00 00       $  ANS006:7E9 03 22 20 92 00 00 00 00
  $  REQ007:7E1 03 22 20 93 00 00 00 00       $  ANS007:7E9 03 22 20 93 00 00 00 00
  $  REQ008:7E1 03 22 20 94 00 00 00 00       $  ANS008:7E9 03 22 20 94 00 00 00 00
  $  REQ009:7E1 03 22 20 A1 00 00 00 00       $  ANS009:7E9 03 22 20 A1 00 00 00 00
  $  REQ010:7E1 03 22 20 A2 00 00 00 00       $  ANS010:7E9 03 22 20 A2 00 00 00 00
  $  REQ011:7E1 03 22 20 B1 00 00 00 00       $  ANS011:7E9 03 22 20 B1 00 00 00 00
  $  REQ012:7E1 03 22 20 B2 00 00 00 00       $  ANS012:7E9 03 22 20 B2 00 00 00 00
  $  REQ013:7E1 03 22 20 C1 00 00 00 00       $  ANS013:7E9 03 22 20 C1 00 00 00 00

  $  000.离合器2压力传感器供电电压       $    $  V        $    $  ANS000.BYTE004  $  y=(x1*256+x2)/1000;
  $  001.输入轴1转速传感器信号           $    $  rpm      $    $  ANS001.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/2;else y=(x1*256+x2-65536)/2;
  $  002.输入轴1转速传感器供电电压       $    $  V        $    $  ANS002.BYTE004  $  y=(x1*256+x2)/1000;
  $  003.输入轴2转速传感器信号           $    $  rpm      $    $  ANS003.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/2;else y=(x1*256+x2-65536)/2;
  $  004.输入轴2转速传感器供电电压       $    $  V        $    $  ANS004.BYTE004  $  y=(x1*256+x2)/1000;
  $  005.变速器P档锁位置传感器信号       $    $  Incr     $    $  ANS005.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/64;else y=(x1*256+x2-65536)/64;
  $  006.变速器范围传感器占空比1         $    $           $    $  ANS006.BYTE004  $  y=(x1*256+x2)/10;
  $  007.变速器位置传感器占空比1         $    $           $    $  ANS007.BYTE004  $  y=(x1*256+x2)/10;
  $  008.变速箱位置传感器供电电压        $    $  V        $    $  ANS008.BYTE004  $  y=(x1*256+x2)/1000;
  $  009.温度传感器信号                  $    $  degC     $    $  ANS009.BYTE004  $  y=x-40;
  $  010.温度传感器供电电压              $    $  V        $    $  ANS010.BYTE004  $  y=(x1*256+x2)/1000;
  $  011.B+高电压                        $    $  V        $    $  ANS011.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/512;else y=(x1*256+x2-65536)/512;
  $  012.GND电压                         $    $  V        $    $  ANS012.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/512;else y=(x1*256+x2-65536)/512;
  $  013.变速杆位置                      $    $           $    $  ANS013.BYTE004  $  if(x1==0x00)y=@00b0;else if(x1==0x01)y=@00b1;else if(x1==0x02)y=@00b2;else if(x1==0x03)y=@00b3;else if(x1==0x04)y=@00b4;else if(x1==0x05)y=@01be;else if(x1==0x06)y=@01bf;else if(x1==0x07)y=@003a;else if(x1==0x08)y=@01c0;else if(x1==0x11)y=@01c1;else if(x1==0x12)y=@00b3;else if(x1==0x13)y=@00b4;else if(x1==0x14)y=@01c2;else y=@00b0;

  $)  02.数据流3
  $  02.数据流3
  $  REQ000:7E1 03 22 20 F8 00 00 00 00       $  ANS000:7E9 03 22 20 F8 00 00 00 00
  $  REQ001:7E1 03 22 21 31 00 00 00 00       $  ANS001:7E9 03 22 21 31 00 00 00 00
  $  REQ002:7E1 03 22 21 34 00 00 00 00       $  ANS002:7E9 03 22 21 34 00 00 00 00
  $  REQ003:7E1 03 22 22 05 00 00 00 00       $  ANS003:7E9 03 22 22 05 00 00 00 00
  $  REQ004:7E1 03 22 34 5F 00 00 00 00       $  ANS004:7E9 03 22 34 5F 00 00 00 00
  $  REQ005:7E1 03 22 22 2B 00 00 00 00       $  ANS005:7E9 03 22 22 2B 00 00 00 00
  $  REQ006:7E1 03 22 22 5E 00 00 00 00       $  ANS006:7E9 03 22 22 5E 00 00 00 00
  $  REQ007:7E1 03 22 22 41 00 00 00 00       $  ANS007:7E9 03 22 22 41 00 00 00 00
  $  REQ008:7E1 03 22 22 42 00 00 00 00       $  ANS008:7E9 03 22 22 42 00 00 00 00
  $  REQ009:7E1 03 22 22 43 00 00 00 00       $  ANS009:7E9 03 22 22 43 00 00 00 00
  $  REQ010:7E1 03 22 22 45 00 00 00 00       $  ANS010:7E9 03 22 22 45 00 00 00 00
  $  REQ011:7E1 03 22 22 44 00 00 00 00       $  ANS011:7E9 03 22 22 44 00 00 00 00
  $  REQ012:7E1 03 22 22 46 00 00 00 00       $  ANS012:7E9 03 22 22 46 00 00 00 00
  $  REQ013:7E1 03 22 22 47 00 00 00 00       $  ANS013:7E9 03 22 22 47 00 00 00 00

  $  000.选用模式                           $    $           $    $  ANS000.BYTE004  $  if(x1==0x00)y=@0040;else if(x1==0x02)y=@01bc;else if(x1==0x05)y=@01bd;else y=@00b0;
  $  001.可编程存储器(EEPROM)错误标志       $    $           $    $  ANS001.BYTE004  $  if(x1==0x00)y=@01b8;else if(x1==0x01)y=@01b9;else if(x1==0x03)y=@01ba;else if(x1==0x04)y=@01bb;else y=@00b0;
  $  002.故障灯状态                         $    $           $    $  ANS002.BYTE004  $  if(x1==0x01)y=@0149;else y=@014a;
  $  003.TCU(自动变速箱)的温度              $    $  degC     $    $  ANS003.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/4;else y=(x1*256+x2-65536)/4;
  $  004.IUPR值                             $    $           $    $  ANS004.BYTE004  $  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $  005.油底壳温度                         $    $  degC     $    $  ANS005.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/4;else y=(x1*256+x2-65536)/4;
  $  006.离合器1实际应用占空比              $    $  %        $    $  ANS006.BYTE004  $  if(x1<0x80)y=(x1*256+x2)*100/32768;else y=(x1*256+x2-65536)*100/32768;
  $  007.油底壳油温度值                     $    $  degC     $    $  ANS007.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/4;else y=(x1*256+x2-65536)/4;
  $  008.发动机温度                         $    $  degC     $    $  ANS008.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/4;else y=(x1*256+x2-65536)/4;
  $  009.环境温度                           $    $  degC     $    $  ANS009.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/4;else y=(x1*256+x2-65536)/4;
  $  010.离合器1理想的占空比                $    $  %        $    $  ANS010.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/10;else y= (x1*256+x2-65536)/10;
  $  011.发动机转速                         $    $  rpm      $    $  ANS011.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/2;else y= (x1*256+x2-65536)/2.0;
  $  012.离合器2理想的占空比                $    $  %        $    $  ANS012.BYTE004  $  if(x1<0x80)y=(x1*256+x2)/10;else y= (x1*256+x2-65536)/10;
  $  013.发动机温度状态                     $    $           $    $  ANS013.BYTE004  $  if(x1==0x00)y=@01c3;else if(x1==0x01)y=@01c4;else if(x1==0x02)y=@01c5;else if(x1==0x03)y=@01c6;else if(x1==0x04)y=@01ab;else if(x1==0x05)y=@01c7;else y=@00b0;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
