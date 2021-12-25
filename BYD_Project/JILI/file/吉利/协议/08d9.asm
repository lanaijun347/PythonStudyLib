
    车型ID：08d9

    模拟：协议模拟-->08d9

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

  $)  00.数据流
  $  00.数据流
  $  REQ000:7E2 03 22 60 02 00 00 00 00       $  ANS000:7EA 03 22 60 02 00 00 00 00
  $  REQ001:7E2 03 22 60 03 00 00 00 00       $  ANS001:7EA 03 22 60 03 00 00 00 00
  $  REQ002:7E2 03 22 60 04 00 00 00 00       $  ANS002:7EA 03 22 60 04 00 00 00 00
  $  REQ003:7E2 03 22 60 05 00 00 00 00       $  ANS003:7EA 03 22 60 05 00 00 00 00
  $  REQ004:7E2 03 22 60 06 00 00 00 00       $  ANS004:7EA 03 22 60 06 00 00 00 00
  $  REQ005:7E2 03 22 60 07 00 00 00 00       $  ANS005:7EA 03 22 60 07 00 00 00 00
  $  REQ006:7E2 03 22 60 08 00 00 00 00       $  ANS006:7EA 03 22 60 08 00 00 00 00
  $  REQ007:7E2 03 22 60 09 00 00 00 00       $  ANS007:7EA 03 22 60 09 00 00 00 00
  $  REQ008:7E2 03 22 60 0A 00 00 00 00       $  ANS008:7EA 03 22 60 0A 00 00 00 00
  $  REQ009:7E2 03 22 60 0B 00 00 00 00       $  ANS009:7EA 03 22 60 0B 00 00 00 00
  $  REQ010:7E2 03 22 60 0F 00 00 00 00       $  ANS010:7EA 03 22 60 0F 00 00 00 00
  $  REQ011:7E2 03 22 60 10 00 00 00 00       $  ANS011:7EA 03 22 60 10 00 00 00 00
  $  REQ012:7E2 03 22 60 29 00 00 00 00       $  ANS012:7EA 03 22 60 29 00 00 00 00
  $  REQ013:7E2 03 22 60 12 00 00 00 00       $  ANS013:7EA 03 22 60 12 00 00 00 00
  $  REQ014:7E2 03 22 60 14 00 00 00 00       $  ANS014:7EA 03 22 60 14 00 00 00 00
  $  REQ015:7E2 03 22 60 1D 00 00 00 00       $  ANS015:7EA 03 22 60 1D 00 00 00 00
  $  REQ016:7E2 03 22 60 1F 00 00 00 00       $  ANS016:7EA 03 22 60 1F 00 00 00 00
  $  REQ017:7E2 03 22 60 22 00 00 00 00       $  ANS017:7EA 03 22 60 22 00 00 00 00
  $  REQ018:7E2 03 22 33 00 00 00 00 00       $  ANS018:7EA 03 22 33 00 00 00 00 00
  $  REQ019:7E2 03 22 33 01 00 00 00 00       $  ANS019:7EA 03 22 33 01 00 00 00 00
  $  REQ020:7E2 03 22 33 02 00 00 00 00       $  ANS020:7EA 03 22 33 02 00 00 00 00
  $  REQ021:7E2 03 22 33 03 00 00 00 00       $  ANS021:7EA 03 22 33 03 00 00 00 00
  $  REQ022:7E2 03 22 65 02 00 00 00 00       $  ANS022:7EA 03 22 65 02 00 00 00 00
  $  REQ023:7E2 03 22 65 03 00 00 00 00       $  ANS023:7EA 03 22 65 03 00 00 00 00
  $  REQ024:7E2 03 22 65 14 00 00 00 00       $  ANS024:7EA 03 22 65 14 00 00 00 00

  $  000.巡航控制开关-CC                                      $    $  /        $    $  ANS000.BYTE004  $  switxh(x)0x00:y=@0a2a;0x01:y=@0efa;0x02:y=@0efb;0x03:y=@0efc;0x04:y=@0efd;0x05:y=@0efe; default:y=@000b;
  $  001.巡航控制开关-ACC                                     $    $  /        $    $  ANS000.BYTE005  $  switxh(x)0x00:y=@0a2a;0x01:y=@0eff;0x02:y=@0a2c;0x03:y=@0f00; default:y=@000b;
  $  002.左转向开关                                           $    $  /        $    $  ANS001.BYTE004  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  003.右转向开关                                           $    $  /        $    $  ANS001.BYTE004  $  if(((x>>1)&1))y=@0170;else y=@010e;
  $  004.危险报警开关(用手长按住开关才能体现结果)             $    $  /        $    $  ANS001.BYTE004  $  if(((x>>2)&1))y=@0170;else y=@010e;
  $  005.位置灯开关                                           $    $  /        $    $  ANS001.BYTE004  $  if(((x>>3)&1))y=@0170;else y=@010e;
  $  006.近光灯开关                                           $    $  /        $    $  ANS001.BYTE004  $  if(((x>>4)&1))y=@0170;else y=@010e;
  $  007.自动灯开关                                           $    $  /        $    $  ANS001.BYTE004  $  if(((x>>5)&1))y=@0170;else y=@010e;
  $  008.左转向反馈(用手长按住开关才能体现结果)               $    $  /        $    $  ANS001.BYTE004  $  if(((x>>6)&1))y=@01d0;else y=@0dcd;
  $  009.右转向反馈(用手长按住开关才能体现结果)               $    $  /        $    $  ANS001.BYTE004  $  if(((x>>7)&1))y=@0170;else y=@010e;
  $  010.刹车踏板开关                                         $    $  /        $    $  ANS001.BYTE005  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  011.前雾灯开关                                           $    $  /        $    $  ANS001.BYTE005  $  if(((x>>1)&1))y=@0170;else y=@010e;
  $  012.后雾灯开关                                           $    $  /        $    $  ANS001.BYTE005  $  if(((x>>2)&1))y=@0170;else y=@010e;
  $  013.远光灯开关                                           $    $  /        $    $  ANS001.BYTE005  $  if(((x>>3)&1))y=@0170;else y=@010e;
  $  014.倒车档开关(用手长按住开关才能体现结果)               $    $  /        $    $  ANS001.BYTE005  $  if(((x>>5)&1))y=@0170;else y=@010e;
  $  015.左前门门开开关                                       $    $  /        $    $  ANS002.BYTE004  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  016.右前门门开开关                                       $    $  /        $    $  ANS002.BYTE004  $  if(((x>>1)&1))y=@0170;else y=@010e;
  $  017.左后门门开开关                                       $    $  /        $    $  ANS002.BYTE004  $  if(((x>>2)&1))y=@0170;else y=@010e;
  $  018.右后门门开开关                                       $    $  /        $    $  ANS002.BYTE004  $  if(((x>>3)&1))y=@0170;else y=@010e;
  $  019.引擎盖打开开关                                       $    $  /        $    $  ANS002.BYTE004  $  if(((x>>5)&1))y=@0170;else y=@010e;
  $  020.中控锁锁止开关(用手长按住开关才能体现结果)           $    $  /        $    $  ANS003.BYTE004  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  021.中控锁解锁开关(用手长按住开关才能体现结果)           $    $  /        $    $  ANS003.BYTE004  $  if(((x>>1)&1))y=@0170;else y=@010e;
  $  022.外部后备箱释放开关                                   $    $  /        $    $  ANS003.BYTE004  $  if(((x>>4)&1))y=@0170;else y=@010e;
  $  023.除驾驶员外其他三车门锁止状态                         $    $  /        $    $  ANS003.BYTE004  $  if(((x>>6)&1))y=@01d0;else y=@0dcd;
  $  024.前雨刮清洗开关                                       $    $  /        $    $  ANS004.BYTE004  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  025.前雨刮间歇开关                                       $    $  /        $    $  ANS004.BYTE004  $  if(((x>>1)&1))y=@0170;else y=@010e;
  $  026.前雨刮停止开关                                       $    $  /        $    $  ANS004.BYTE004  $  if(((x>>2)&1))y=@0170;else y=@010e;
  $  027.前雨刮高速开关                                       $    $  /        $    $  ANS004.BYTE004  $  if(((x>>3)&1))y=@0170;else y=@010e;
  $  028.前雨刮低速开关                                       $    $  /        $    $  ANS004.BYTE004  $  if(((x>>4)&1))y=@0170;else y=@010e;
  $  029.前雨刮间歇时间档                                     $    $  /        $    $  ANS005.BYTE004  $  switxh(x)0x00:y=@0943;0x01:y=@0791;0x02:y=@0792;0x03:y=@0793;0x04:y=@0944;0x05:y=@0945;0x06:y=@0946;0xFF:y=@00be; default:y=@000b;
  $  030.点火开关状态                                         $    $  /        $    $  ANS006.BYTE004  $  switxh(x)0x00:y=@01cf;0x01:y=@015c;0x02:y=@04da;0x03:y=@015f;0x04:y=@034b;0x05:y=@034c;0x06:y=@034d;0x09:y=@034e;0x0A:y=@034f;0x0c:y=@0350;0x0D:y=@0351;0x0E:y=@0352;0x0F:y=@0353;0x10:y=@0354;0x11:y=@0355;0x12:y=@0356;0x14:y=@0357;0x15:y=@0358; default:y=@000b;
  $  031.后除霜开关                                           $    $  /        $    $  ANS007.BYTE004  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  032.前除霜开关                                           $    $  /        $    $  ANS007.BYTE004  $  if(((x>>1)&1))y=@0170;else y=@010e;
  $  033.后清洗开关                                           $    $  /        $    $  ANS008.BYTE004  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  034.后雨刮间歇开关                                       $    $  /        $    $  ANS008.BYTE004  $  if(((x>>1)&1))y=@0170;else y=@010e;
  $  035.后雨刮常开开关                                       $    $  /        $    $  ANS008.BYTE004  $  if(((x>>2)&1))y=@0170;else y=@010e;
  $  036.后视镜折叠开关                                       $    $  /        $    $  ANS009.BYTE004  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  037.遥控钥匙个数                                         $    $  /        $    $  ANS010.BYTE004  $  y=x*1;
  $  038.环境光传感器                                         $    $  /        $    $  ANS011.BYTE004  $  switxh(x)0x01:y=@0341;0x02:y=@0f01; default:y=@000b;
  $  039.记录最近一次闭锁源                                   $    $  /        $    $  ANS012.BYTE004  $  switxh(x)0x00:y=@0002;0x01:y=@0342;0x02:y=@0343;0x03:y=@0005;0x04:y=@0006;0x05:y=@0007;0x06:y=@0344;0x07:y=@00d5;0x08:y=@0345;0x0a:y=@00d4;0x0b:y=@00d7;0x0c:y=@0347;0x0d:y=@0ee8;0x0e:y=@0349;0x0f:y=@034a;default:y=@0ee9;
  $  040.记录倒数第二次闭锁源                                 $    $  /        $    $  ANS012.BYTE005  $  switxh(x)0x00:y=@0002;0x01:y=@0342;0x02:y=@0343;0x03:y=@0005;0x04:y=@0006;0x05:y=@0007;0x06:y=@0344;0x07:y=@00d5;0x08:y=@0345;0x0a:y=@00d4;0x0b:y=@00d7;0x0c:y=@0347;0x0d:y=@0ee8;0x0e:y=@0349;0x0f:y=@034a;default:y=@0ee9;
  $  041.记录倒数第三次闭锁源                                 $    $  /        $    $  ANS012.BYTE006  $  switxh(x)0x00:y=@0002;0x01:y=@0342;0x02:y=@0343;0x03:y=@0005;0x04:y=@0006;0x05:y=@0007;0x06:y=@0344;0x07:y=@00d5;0x08:y=@0345;0x0a:y=@00d4;0x0b:y=@00d7;0x0c:y=@0347;0x0d:y=@0ee8;0x0e:y=@0349;0x0f:y=@034a;default:y=@0ee9;
  $  042.记录倒数第四次闭锁源                                 $    $  /        $    $  ANS012.BYTE007  $  switxh(x)0x00:y=@0002;0x01:y=@0342;0x02:y=@0343;0x03:y=@0005;0x04:y=@0006;0x05:y=@0007;0x06:y=@0344;0x07:y=@00d5;0x08:y=@0345;0x0a:y=@00d4;0x0b:y=@00d7;0x0c:y=@0347;0x0d:y=@0ee8;0x0e:y=@0349;0x0f:y=@034a;default:y=@0ee9;
  $  043.经济模式开关(用手长按住开关才能体现结果)             $    $  /        $    $  ANS013.BYTE004  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  044.运动模式开关(用手长按住开关才能体现结果)             $    $  /        $    $  ANS013.BYTE004  $  if(((x>>1)&1))y=@0170;else y=@010e;
  $  045.驾驶员侧玻璃开关                                     $    $  /        $    $  ANS014.BYTE004  $  switxh(x&0x07)0x0:y=@0ee7;0x1:y=@03c3;0x2:y=@03c4;0x3:y=@03c5;0x4:y=@03c6;0x5:y=@00be; default:y=@000b;
  $  046.驾驶门乘员侧玻璃开关                                 $    $  /        $    $  ANS014.BYTE004  $  switxh((x>>3)&0x07)0x0:y=@0ee7;0x1:y=@03c3;0x2:y=@03c4;0x3:y=@03c5;0x4:y=@03c6;0x5:y=@00be; default:y=@000b;
  $  047.驾驶门左后侧玻璃开关                                 $    $  /        $    $  ANS014.BYTE005  $  switxh(x&0x07)0x0:y=@0ee7;0x1:y=@03c3;0x2:y=@03c4;0x3:y=@03c5;0x4:y=@03c6;0x5:y=@00be; default:y=@000b;
  $  048.驾驶门右后侧玻璃开关                                 $    $  /        $    $  ANS014.BYTE005  $  switxh((x>>3)&0x07)0x0:y=@0ee7;0x1:y=@03c3;0x2:y=@03c4;0x3:y=@03c5;0x4:y=@03c6;0x5:y=@00be; default:y=@000b;
  $  049.乘员侧玻璃开关                                       $    $  /        $    $  ANS014.BYTE006  $  switxh(x&0x07)0x0:y=@0ee7;0x1:y=@03c3;0x2:y=@03c4;0x3:y=@03c5;0x4:y=@03c6;0x5:y=@00be; default:y=@000b;
  $  050.左后侧玻璃开关                                       $    $  /        $    $  ANS014.BYTE006  $  switxh((x>>3)&0x07)0x0:y=@0ee7;0x1:y=@03c3;0x2:y=@03c4;0x3:y=@03c5;0x4:y=@03c6;0x5:y=@00be; default:y=@000b;
  $  051.右后侧玻璃开关                                       $    $  /        $    $  ANS014.BYTE007  $  switxh(x&0x07)0x0:y=@0ee7;0x1:y=@03c3;0x2:y=@03c4;0x3:y=@03c5;0x4:y=@03c6;0x5:y=@00be; default:y=@000b;
  $  052.乘客侧车窗禁止开关(用手长按住开关才能体现结果)       $    $  /        $    $  ANS014.BYTE007  $  if(((x>>3)&1))y=@0001;else y=@01cf;
  $  053.车窗运行许可标识(用手长按住开关才能体现结果)         $    $  /        $    $  ANS014.BYTE007  $  if(((x>>4)&1))y=@0001;else y=@01cf;
  $  054.离合器底部常开开关                                   $    $  /        $    $  ANS015.BYTE004  $  if(((x>>0)&1))y=@0170;else y=@010e;
  $  055.离合器底部常闭开关                                   $    $  /        $    $  ANS015.BYTE004  $  if(((x>>2)&1))y=@0170;else y=@010e;
  $  056.离合器顶部开关                                       $    $  /        $    $  ANS015.BYTE004  $  if(((x>>1)&1))y=@0170;else y=@010e;
  $  057.双闪原因                                             $    $  /        $    $  ANS016.BYTE004  $  switxh(x)0x0:y=@0f04;0x1:y=@00d5;0x2:y=@0d6d;0x3:y=@03d1;0x4:y=@03d2; default:y=@000b;
  $  058.工厂模式                                             $    $  /        $    $  ANS017.BYTE004  $  switxh(x)0x00:y=@03ce;0xFF:y=@03cf; default:y=@000b;
  $  059.左前胎压传感器匹配状态                               $    $  /        $    $  ANS018.BYTE004  $  if(((x>>0)&1)) y=@03cc; else y=@03cd;
  $  060.右前胎压传感器匹配状态                               $    $  /        $    $  ANS018.BYTE004  $  if(((x>>1)&1)) y=@03cc; else y=@03cd;
  $  061.右后胎压传感器匹配状态                               $    $  /        $    $  ANS018.BYTE004  $  if(((x>>2)&1)) y=@03cc; else y=@03cd;
  $  062.左后胎压传感器匹配状态                               $    $  /        $    $  ANS018.BYTE004  $  if(((x>>3)&1)) y=@03cc; else y=@03cd;
  $  063.左前胎压传感器ID                                     $    $  /        $    $  ANS019.BYTE004  $  HEX(x1,x2,x3,x4);
  $  064.右前胎压传感器ID                                     $    $  /        $    $  ANS019.BYTE008  $  HEX(x1,x2,x3,x4);
  $  065.右后胎压传感器ID                                     $    $  /        $    $  ANS019.BYTE012  $  HEX(x1,x2,x3,x4);
  $  066.左后胎压传感器ID                                     $    $  /        $    $  ANS019.BYTE016  $  HEX(x1,x2,x3,x4);
  $  067.左前胎压值                                           $    $  kPa      $    $  ANS020.BYTE004  $  y=x1*1.373;
  $  068.右前胎压值                                           $    $  kPa      $    $  ANS020.BYTE005  $  y=x1*1.373;
  $  069.右后胎压值                                           $    $  kPa      $    $  ANS020.BYTE006  $  y=x1*1.373;
  $  070.左后胎压值                                           $    $  kPa      $    $  ANS020.BYTE007  $  y=x1*1.373;
  $  071.左前轮温度值                                         $    $  degC     $    $  ANS021.BYTE004  $  y=x-50;
  $  072.右前轮温度值                                         $    $  degC     $    $  ANS021.BYTE005  $  y=x-50;
  $  073.右后轮温度值                                         $    $  degC     $    $  ANS021.BYTE006  $  y=x-50;
  $  074.左后轮温度值                                         $    $  degC     $    $  ANS021.BYTE007  $  y=x-50;
  $  075.已学习IMMO(防盗系统)/UID 钥匙数量                    $    $  /        $    $  ANS022.BYTE004  $  if(x==0x00) y=@0d8a; else if(x==0x01) y=@1040;else if(x==0x02) y=@1041;else if(x==0x03) y=@1042;else if(x==0x04) y=@1043;
  $  076.密钥写入状态                                         $    $  /        $    $  ANS023.BYTE004  $  if(((x>>0)&1)) y=@0f0e; else y=@103f;
  $  077.硬线轮速信号                                         $    $  km/h     $    $  ANS024.BYTE004  $  y=x;

  $)  01.TPMS(胎压监视系统)报警源历史记录
  $  01.TPMS(胎压监视系统)报警源历史记录
  $  REQ000:7E2 03 22 33 05 00 00 00 00       $  ANS000:7EA 03 22 33 05 00 00 00 00

  $  000.最近一次TPMS(胎压监视系统)报警源         $    $  /     $    $  ANS000.BYTE004  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  001.倒数第二次TPMS(胎压监视系统)报警源       $    $  /     $    $  ANS000.BYTE005  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  002.倒数第三次TPMS(胎压监视系统)报警源       $    $  /     $    $  ANS000.BYTE006  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  003.倒数第四次TPMS(胎压监视系统)报警源       $    $  /     $    $  ANS000.BYTE007  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  004.倒数第五次TPMS(胎压监视系统)报警源       $    $  /     $    $  ANS000.BYTE008  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  005.倒数第六次TPMS(胎压监视系统)报警源       $    $  /     $    $  ANS000.BYTE009  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  006.倒数第七次TPMS(胎压监视系统)报警源       $    $  /     $    $  ANS000.BYTE010  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  007.倒数第八次TPMS(胎压监视系统)报警源       $    $  /     $    $  ANS000.BYTE011  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  008.倒数第九次TPMS(胎压监视系统)报警源       $    $  /     $    $  ANS000.BYTE012  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  009.倒数第十次TPMS(胎压监视系统)报警源       $    $  /     $    $  ANS000.BYTE013  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;

  $)  02.初始胎压和温度值
  $  02.初始胎压和温度值
  $  REQ000:7E2 03 22 33 07 00 00 00 00       $  ANS000:7EA 03 22 33 07 00 00 00 00

  $  000.初始左前胎压值       $    $  /     $    $  ANS000.BYTE004  $  y=x;
  $  001.初始右前胎压值       $    $  /     $    $  ANS000.BYTE005  $  y=x;
  $  002.初始右后胎压值       $    $  /     $    $  ANS000.BYTE006  $  y=x;
  $  003.初始左后胎压值       $    $  /     $    $  ANS000.BYTE007  $  y=x;
  $  004.初始左前胎温度       $    $  /     $    $  ANS000.BYTE008  $  y=x;
  $  005.初始右前胎温度       $    $  /     $    $  ANS000.BYTE009  $  y=x;
  $  006.初始右后胎温度       $    $  /     $    $  ANS000.BYTE010  $  y=x;
  $  007.初始左后胎温度       $    $  /     $    $  ANS000.BYTE011  $  y=x;

  $)  03.门把手开关输入
  $  03.门把手开关输入
  $  REQ000:7E2 03 22 65 13 00 00 00 00       $  ANS000:7EA 03 22 65 13 00 00 00 00

  $  000.驾驶员侧门把手解锁有效         $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@0170; else y=@010e;
  $  001.驾驶员侧门把手闭锁有效         $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@0170; else y=@010e;
  $  002.副驾驶员侧门把手解锁有效       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@0170; else y=@010e;
  $  003.副驾驶员侧门把手闭锁有效       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@0170; else y=@010e;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E2 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7E2 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
