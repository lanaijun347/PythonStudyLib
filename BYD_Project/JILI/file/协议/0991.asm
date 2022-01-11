
    车型ID：0991

    模拟：协议模拟-->0991

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7EA

进入命令:

  $~  REQ000:7E2 02 10 01 00 00 00 00 00       $~  ANS000:7EA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E2 02 3E 00 00 00 00 00 00       $!  ANS000:7EA 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E2 03 19 02 09 00 00 00 00       $#  ANS000:7EA 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ac000000


  $#  01.读故障码库
  $#  REQ000:7E2 02 19 0A 00 00 00 00 00       $#  ANS000:7EA 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ac000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="0"/>
   </FUNCTION>
  <FUNCTION type="0" num="1">
     <param type="string" value="0"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E2 04 14 FF FF FF 00 00 00       $$  ANS000:7EA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E2 03 22 F1 12 00 00 00 00       $%  ANS000:7EA 03 22 F1 12 00 00 00 00
  $%  REQ001:7E2 03 22 F1 80 00 00 00 00       $%  ANS001:7EA 03 22 F1 80 00 00 00 00
  $%  REQ002:7E2 03 22 F1 87 00 00 00 00       $%  ANS002:7EA 03 22 F1 87 00 00 00 00
  $%  REQ003:7E2 03 22 F1 8A 00 00 00 00       $%  ANS003:7EA 03 22 F1 8A 00 00 00 00
  $%  REQ004:7E2 03 22 F1 8B 00 00 00 00       $%  ANS004:7EA 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E2 03 22 F1 8C 00 00 00 00       $%  ANS005:7EA 03 22 F1 8C 00 00 00 00
  $%  REQ006:7E2 03 22 F1 90 00 00 00 00       $%  ANS006:7EA 03 22 F1 90 00 00 00 00
  $%  REQ007:7E2 03 22 F1 93 00 00 00 00       $%  ANS007:7EA 03 22 F1 93 00 00 00 00
  $%  REQ008:7E2 03 22 F1 95 00 00 00 00       $%  ANS008:7EA 03 22 F1 95 00 00 00 00
  $%  REQ009:7E2 03 22 F1 98 00 00 00 00       $%  ANS009:7EA 03 22 F1 98 00 00 00 00
  $%  REQ010:7E2 03 22 F1 99 00 00 00 00       $%  ANS010:7EA 03 22 F1 99 00 00 00 00
  $%  REQ011:7E2 03 22 F1 9D 00 00 00 00       $%  ANS011:7EA 03 22 F1 9D 00 00 00 00
  $%  REQ012:7E2 03 22 F1 82 00 00 00 00       $%  ANS012:7EA 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:引导程序软件识别号:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:零件号:                                      $%    $%  ANS002.BYTE004  $%  0 ASCII
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)刷写日期:                     $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:ECU(电子控制器)安装日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:标定软件版本号:                              $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E2 03 22 F1 89 00 00 00 00       $  ANS000:7EA 03 22 F1 89 00 00 00 00
  $  REQ001:7E2 03 22 60 02 00 00 00 00       $  ANS001:7EA 03 22 60 02 00 00 00 00
  $  REQ002:7E2 03 22 60 03 00 00 00 00       $  ANS002:7EA 03 22 60 03 00 00 00 00
  $  REQ003:7E2 03 22 60 04 00 00 00 00       $  ANS003:7EA 03 22 60 04 00 00 00 00
  $  REQ004:7E2 03 22 60 05 00 00 00 00       $  ANS004:7EA 03 22 60 05 00 00 00 00
  $  REQ005:7E2 03 22 60 06 00 00 00 00       $  ANS005:7EA 03 22 60 06 00 00 00 00
  $  REQ006:7E2 03 22 60 07 00 00 00 00       $  ANS006:7EA 03 22 60 07 00 00 00 00
  $  REQ007:7E2 03 22 60 08 00 00 00 00       $  ANS007:7EA 03 22 60 08 00 00 00 00
  $  REQ008:7E2 03 22 60 09 00 00 00 00       $  ANS008:7EA 03 22 60 09 00 00 00 00
  $  REQ009:7E2 03 22 60 0B 00 00 00 00       $  ANS009:7EA 03 22 60 0B 00 00 00 00
  $  REQ010:7E2 03 22 60 0E 00 00 00 00       $  ANS010:7EA 03 22 60 0E 00 00 00 00
  $  REQ011:7E2 03 22 60 11 00 00 00 00       $  ANS011:7EA 03 22 60 11 00 00 00 00
  $  REQ012:7E2 03 22 60 12 00 00 00 00       $  ANS012:7EA 03 22 60 12 00 00 00 00
  $  REQ013:7E2 03 22 60 14 00 00 00 00       $  ANS013:7EA 03 22 60 14 00 00 00 00
  $  REQ014:7E2 03 22 60 1E 00 00 00 00       $  ANS014:7EA 03 22 60 1E 00 00 00 00
  $  REQ015:7E2 03 22 60 21 00 00 00 00       $  ANS015:7EA 03 22 60 21 00 00 00 00
  $  REQ016:7E2 03 22 60 26 00 00 00 00       $  ANS016:7EA 03 22 60 26 00 00 00 00
  $  REQ017:7E2 03 22 60 27 00 00 00 00       $  ANS017:7EA 03 22 60 27 00 00 00 00

  $  000.制造商ECU(电子控制器)软件版本号                      $    $  /     $    $  ANS000.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  001.巡航控制开关-CC                                      $    $  /     $    $  ANS001.BYTE004  $  switxh(x)0x00:y=@0a2a;0x01:y=@0efa;0x02:y=@0efb;0x03:y=@0efc;0x04:y=@0efd;0x05:y=@0efe; default:y=@000b;
  $  002.巡航控制开关-ACC                                     $    $  /     $    $  ANS001.BYTE005  $  switxh(x)0x00:y=@0a2a;0x01:y=@0eff;0x02:y=@0a2c;0x03:y=@0f00; default:y=@000b;
  $  003.左转向开关                                           $    $  /     $    $  ANS002.BYTE004  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  004.右转向开关                                           $    $  /     $    $  ANS002.BYTE004  $  if(((x>>1)&1))y=@0170;else y=@010e;
  $  005.危险报警开关(用手长按住开关才能体现结果)             $    $  /     $    $  ANS002.BYTE004  $  if(((x>>2)&1))y=@0170;else y=@010e;
  $  006.位置灯开关                                           $    $  /     $    $  ANS002.BYTE004  $  if(((x>>3)&1))y=@0170;else y=@010e;
  $  007.近光灯开关                                           $    $  /     $    $  ANS002.BYTE004  $  if(((x>>4)&1))y=@0170;else y=@010e;
  $  008.自动灯开关                                           $    $  /     $    $  ANS002.BYTE004  $  if(((x>>5)&1))y=@0170;else y=@010e;
  $  009.左转向反馈(用手长按住开关才能体现结果)               $    $  /     $    $  ANS002.BYTE004  $  if(((x>>6)&1))y=@01d0;else y=@0dcd;
  $  010.右转向反馈(用手长按住开关才能体现结果)               $    $  /     $    $  ANS002.BYTE004  $  if(((x>>7)&1))y=@0170;else y=@010e;
  $  011.刹车踏板开关                                         $    $  /     $    $  ANS002.BYTE005  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  012.前雾灯开关                                           $    $  /     $    $  ANS002.BYTE005  $  if(((x>>1)&1))y=@0170;else y=@010e;
  $  013.后雾灯开关                                           $    $  /     $    $  ANS002.BYTE005  $  if(((x>>2)&1))y=@0170;else y=@010e;
  $  014.远光灯开关                                           $    $  /     $    $  ANS002.BYTE005  $  if(((x>>3)&1))y=@0170;else y=@010e;
  $  015.倒车档开关(用手长按住开关才能体现结果)               $    $  /     $    $  ANS002.BYTE005  $  if(((x>>5)&1))y=@0170;else y=@010e;
  $  016.左前门门开开关                                       $    $  /     $    $  ANS003.BYTE004  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  017.右前门门开开关                                       $    $  /     $    $  ANS003.BYTE004  $  if(((x>>1)&1))y=@0170;else y=@010e;
  $  018.左后门门开开关                                       $    $  /     $    $  ANS003.BYTE004  $  if(((x>>2)&1))y=@0170;else y=@010e;
  $  019.右后门门开开关                                       $    $  /     $    $  ANS003.BYTE004  $  if(((x>>3)&1))y=@0170;else y=@010e;
  $  020.后备箱打开开关                                       $    $  /     $    $  ANS003.BYTE004  $  if(((x>>4)&1))y=@0170;else y=@010e;
  $  021.引擎盖打开开关                                       $    $  /     $    $  ANS003.BYTE004  $  if(((x>>5)&1))y=@0170;else y=@010e;
  $  022.中控锁锁止开关(用手长按住开关才能体现结果)           $    $  /     $    $  ANS004.BYTE004  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  023.中控锁解锁开关(用手长按住开关才能体现结果)           $    $  /     $    $  ANS004.BYTE004  $  if(((x>>1)&1))y=@0170;else y=@010e;
  $  024.后备箱开启开关                                       $    $  /     $    $  ANS004.BYTE004  $  if(((x>>3)&1))y=@0170;else y=@010e;
  $  025.驾驶员车门锁止状态                                   $    $  /     $    $  ANS004.BYTE004  $  if(((x>>5)&1))y=@0170;else y=@010e;
  $  026.除驾驶员外其他三车门锁止状态                         $    $  /     $    $  ANS004.BYTE004  $  if(((x>>6)&1))y=@01d0;else y=@0dcd;
  $  027.前雨刮清洗开关                                       $    $  /     $    $  ANS005.BYTE004  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  028.前雨刮间歇开关                                       $    $  /     $    $  ANS005.BYTE004  $  if(((x>>1)&1))y=@0170;else y=@010e;
  $  029.前雨刮停止开关                                       $    $  /     $    $  ANS005.BYTE004  $  if(((x>>2)&1))y=@0170;else y=@010e;
  $  030.前雨刮高速开关                                       $    $  /     $    $  ANS005.BYTE004  $  if(((x>>3)&1))y=@0170;else y=@010e;
  $  031.前雨刮低速开关                                       $    $  /     $    $  ANS005.BYTE004  $  if(((x>>4)&1))y=@0170;else y=@010e;
  $  032.前雨刮间歇时间档                                     $    $  /     $    $  ANS006.BYTE004  $  switxh(x)0x00:y=@0943;0x01:y=@0791;0x02:y=@0792;0x03:y=@0793;0x04:y=@0944;0x05:y=@0945;0x06:y=@0946;0xFF:y=@00be;
  $  033.点火开关状态                                         $    $  /     $    $  ANS007.BYTE004  $  switxh(x)0x00:y=@01cf;0x01:y=@015c;0x02:y=@04da;0x03:y=@015f;0x04:y=@034b;0x05:y=@034c;0x06:y=@034d;0x09:y=@034e;0x0A:y=@034f;0x0c:y=@0350;0x0D:y=@0351;0x0E:y=@0352;0x0F:y=@0353;0x10:y=@0354;0x11:y=@0355;0x12:y=@0356;0x14:y=@0357;0x15:y=@0358; default:y=@000b;
  $  034.后除霜开关                                           $    $  /     $    $  ANS008.BYTE004  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  035.后视镜折叠开关                                       $    $  /     $    $  ANS009.BYTE004  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  036.点火状态                                             $    $  /     $    $  ANS010.BYTE004  $  switxh(x)0x00:y=@0a34;0x01:y=@0a33; default:y=@000b;
  $  037.记录最近一次闭锁源                                   $    $  /     $    $  ANS011.BYTE004  $  switxh(x)0x00:y=@0002;0x01:y=@0342;0x02:y=@0343;0x03:y=@0005;0x04:y=@0006;0x05:y=@0007;0x06:y=@0344;0x07:y=@00d5;0x08:y=@0345;0x0a:y=@00d4;0x0b:y=@00d7;0x0c:y=@0347;0x0d:y=@0ee8;0x0e:y=@0349;0x0f:y=@034a;default:y=@0ee9;
  $  038.记录倒数第二次闭锁源                                 $    $  /     $    $  ANS011.BYTE005  $  switxh(x)0x00:y=@0002;0x01:y=@0342;0x02:y=@0343;0x03:y=@0005;0x04:y=@0006;0x05:y=@0007;0x06:y=@0344;0x07:y=@00d5;0x08:y=@0345;0x0a:y=@00d4;0x0b:y=@00d7;0x0c:y=@0347;0x0d:y=@0ee8;0x0e:y=@0349;0x0f:y=@034a;default:y=@0ee9;
  $  039.记录倒数第三次闭锁源                                 $    $  /     $    $  ANS011.BYTE006  $  switxh(x)0x00:y=@0002;0x01:y=@0342;0x02:y=@0343;0x03:y=@0005;0x04:y=@0006;0x05:y=@0007;0x06:y=@0344;0x07:y=@00d5;0x08:y=@0345;0x0a:y=@00d4;0x0b:y=@00d7;0x0c:y=@0347;0x0d:y=@0ee8;0x0e:y=@0349;0x0f:y=@034a;default:y=@0ee9;
  $  040.记录倒数第四次闭锁源                                 $    $  /     $    $  ANS011.BYTE007  $  switxh(x)0x00:y=@0002;0x01:y=@0342;0x02:y=@0343;0x03:y=@0005;0x04:y=@0006;0x05:y=@0007;0x06:y=@0344;0x07:y=@00d5;0x08:y=@0345;0x0a:y=@00d4;0x0b:y=@00d7;0x0c:y=@0347;0x0d:y=@0ee8;0x0e:y=@0349;0x0f:y=@034a;default:y=@0ee9;
  $  041.运动模式开关(用手长按住开关才能体现结果)             $    $  /     $    $  ANS012.BYTE004  $  if(((x>>1)&1))y=@0170;else y=@010e;
  $  042.模式保存开关(用手长按住开关才能体现结果)             $    $  /     $    $  ANS012.BYTE004  $  if(((x>>7)&1))y=@0170;else y=@010e;
  $  043.驾驶员侧玻璃开关                                     $    $  /     $    $  ANS013.BYTE004  $  switxh(x&0x07)0x0:y=@0ee7;0x1:y=@03c3;0x2:y=@03c4;0x3:y=@03c5;0x4:y=@03c6;0x5:y=@00be; default:y=@000b;
  $  044.驾驶门乘员侧玻璃开关                                 $    $  /     $    $  ANS013.BYTE004  $  switxh((x>>3)&0x07)0x0:y=@0ee7;0x1:y=@03c3;0x2:y=@03c4;0x3:y=@03c5;0x4:y=@03c6;0x5:y=@00be; default:y=@000b;
  $  045.驾驶门左后侧玻璃开关                                 $    $  /     $    $  ANS013.BYTE005  $  switxh(x&0x07)0x0:y=@0ee7;0x1:y=@03c3;0x2:y=@03c4;0x3:y=@03c5;0x4:y=@03c6;0x5:y=@00be; default:y=@000b;
  $  046.驾驶门右后侧玻璃开关                                 $    $  /     $    $  ANS013.BYTE005  $  switxh((x>>3)&0x07)0x0:y=@0ee7;0x1:y=@03c3;0x2:y=@03c4;0x3:y=@03c5;0x4:y=@03c6;0x5:y=@00be; default:y=@000b;
  $  047.乘员侧玻璃开关                                       $    $  /     $    $  ANS013.BYTE006  $  switxh(x&0x07)0x0:y=@0ee7;0x1:y=@03c3;0x2:y=@03c4;0x3:y=@03c5;0x4:y=@03c6;0x5:y=@00be; default:y=@000b;
  $  048.左后侧玻璃开关                                       $    $  /     $    $  ANS013.BYTE006  $  switxh((x>>3)&0x07)0x0:y=@0ee7;0x1:y=@03c3;0x2:y=@03c4;0x3:y=@03c5;0x4:y=@03c6;0x5:y=@00be; default:y=@000b;
  $  049.右后侧玻璃开关                                       $    $  /     $    $  ANS013.BYTE007  $  switxh(x&0x07)0x0:y=@0ee7;0x1:y=@03c3;0x2:y=@03c4;0x3:y=@03c5;0x4:y=@03c6;0x5:y=@00be; default:y=@000b;
  $  050.乘客侧车窗禁止开关(用手长按住开关才能体现结果)       $    $  /     $    $  ANS013.BYTE007  $  if(((x>>3)&1))y=@0001;else y=@01cf;
  $  051.车窗运行许可标识(用手长按住开关才能体现结果)         $    $  /     $    $  ANS013.BYTE007  $  if(((x>>4)&1))y=@0001;else y=@01cf;
  $  052.儿童锁状态                                           $    $  /     $    $  ANS014.BYTE004  $  if(((x>>0)&1))y=@0dcd;else y=@022d;
  $  053.硬线碰撞信号状态                                     $    $  /     $    $  ANS015.BYTE004  $  switxh(x)0x00:y=@0c85;0x01:y=@0c86;0x11:y=@0c87; default:y=@000b;
  $  054.电子儿童锁反馈                                       $    $  /     $    $  ANS016.BYTE004  $  if(((x>>0)&1)) y=@0541; else y=@010b;
  $  055.左前把手微动开关1状态                                $    $  /     $    $  ANS017.BYTE004  $  if(((x>>0)&1)) y=@1037; else y=@1038;
  $  056.左前把手微动开关2状态                                $    $  /     $    $  ANS017.BYTE004  $  if(((x>>1)&1)) y=@1035; else y=@1036;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E2 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7E2 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
