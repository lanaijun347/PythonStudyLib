
    车型ID：3013

    模拟：协议模拟-->3013

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~79B

进入命令:

  $~  REQ000:71B 02 10 01 00 00 00 00 00       $~  ANS000:79B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:71B 02 3E 00 00 00 00 00 00       $!  ANS000:79B 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:71B 03 19 02 01 00 00 00 00       $#  ANS000:79B 03 19 02 01 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/4a000000


  $#  01.读历史故障码
  $#  REQ000:71B 03 19 02 08 00 00 00 00       $#  ANS000:79B 03 19 02 08 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/4a000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:71B 04 14 FF FF FF 00 00 00       $$  ANS000:79B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:71B 03 22 F1 87 00 00 00 00       $%  ANS000:79B 03 22 F1 87 00 00 00 00
  $%  REQ001:71B 03 22 F1 8A 00 00 00 00       $%  ANS001:79B 03 22 F1 8A 00 00 00 00
  $%  REQ002:71B 03 22 F1 97 00 00 00 00       $%  ANS002:79B 03 22 F1 97 00 00 00 00
  $%  REQ003:71B 03 22 F1 93 00 00 00 00       $%  ANS003:79B 03 22 F1 93 00 00 00 00
  $%  REQ004:71B 03 22 F1 95 00 00 00 00       $%  ANS004:79B 03 22 F1 95 00 00 00 00
  $%  REQ005:71B 03 22 F1 8C 00 00 00 00       $%  ANS005:79B 03 22 F1 8C 00 00 00 00
  $%  REQ006:71B 03 22 F1 90 00 00 00 00       $%  ANS006:79B 03 22 F1 90 00 00 00 00
  $%  REQ007:71B 03 22 F1 00 00 00 00 00       $%  ANS007:79B 03 22 F1 00 00 00 00 00
  $%  REQ008:71B 03 22 F1 5A 00 00 00 00       $%  ANS008:79B 03 22 F1 5A 00 00 00 00
  $%  REQ009:71B 03 22 F1 5B 00 00 00 00       $%  ANS009:79B 03 22 F1 5B 00 00 00 00

  $%  000:零部件号:                               $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:供应商名称英文缩写:                     $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:系统名称:                               $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:系统供应商ECU(电子控制器)硬件号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  004:系统供应商ECU(电子控制器)软件号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  005:ECU(电子控制器)序列号:                  $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  006:车辆识别码:                             $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:24位电池追溯码:                         $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  008:写指纹信息:                             $%    $%  ANS008.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  009:读指纹信息:                             $%    $%  ANS009.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:71B 03 22 18 00 00 00 00 00       $  ANS000:79B 03 22 18 00 00 00 00 00
  $  REQ001:71B 03 22 18 01 00 00 00 00       $  ANS001:79B 03 22 18 01 00 00 00 00
  $  REQ002:71B 03 22 18 02 00 00 00 00       $  ANS002:79B 03 22 18 02 00 00 00 00
  $  REQ003:71B 03 22 18 03 00 00 00 00       $  ANS003:79B 03 22 18 03 00 00 00 00
  $  REQ004:71B 03 22 18 04 00 00 00 00       $  ANS004:79B 03 22 18 04 00 00 00 00
  $  REQ005:71B 03 22 18 05 00 00 00 00       $  ANS005:79B 03 22 18 05 00 00 00 00
  $  REQ006:71B 03 22 18 06 00 00 00 00       $  ANS006:79B 03 22 18 06 00 00 00 00
  $  REQ007:71B 03 22 18 08 00 00 00 00       $  ANS007:79B 03 22 18 08 00 00 00 00
  $  REQ008:71B 03 22 18 09 00 00 00 00       $  ANS008:79B 03 22 18 09 00 00 00 00
  $  REQ009:71B 03 22 18 0B 00 00 00 00       $  ANS009:79B 03 22 18 0B 00 00 00 00
  $  REQ010:71B 03 22 18 0C 00 00 00 00       $  ANS010:79B 03 22 18 0C 00 00 00 00
  $  REQ011:71B 03 22 18 22 00 00 00 00       $  ANS011:79B 03 22 18 22 00 00 00 00
  $  REQ012:71B 03 22 18 23 00 00 00 00       $  ANS012:79B 03 22 18 23 00 00 00 00
  $  REQ013:71B 03 22 18 24 00 00 00 00       $  ANS013:79B 03 22 18 24 00 00 00 00
  $  REQ014:71B 03 22 18 25 00 00 00 00       $  ANS014:79B 03 22 18 25 00 00 00 00
  $  REQ015:71B 03 22 18 26 00 00 00 00       $  ANS015:79B 03 22 18 26 00 00 00 00
  $  REQ016:71B 03 22 18 27 00 00 00 00       $  ANS016:79B 03 22 18 27 00 00 00 00
  $  REQ017:71B 03 22 18 28 00 00 00 00       $  ANS017:79B 03 22 18 28 00 00 00 00
  $  REQ018:71B 03 22 18 29 00 00 00 00       $  ANS018:79B 03 22 18 29 00 00 00 00
  $  REQ019:71B 03 22 18 30 00 00 00 00       $  ANS019:79B 03 22 18 30 00 00 00 00
  $  REQ020:71B 03 22 18 31 00 00 00 00       $  ANS020:79B 03 22 18 31 00 00 00 00
  $  REQ021:71B 03 22 18 32 00 00 00 00       $  ANS021:79B 03 22 18 32 00 00 00 00
  $  REQ022:71B 03 22 18 33 00 00 00 00       $  ANS022:79B 03 22 18 33 00 00 00 00
  $  REQ023:71B 03 22 18 34 00 00 00 00       $  ANS023:79B 03 22 18 34 00 00 00 00
  $  REQ024:71B 03 22 18 35 00 00 00 00       $  ANS024:79B 03 22 18 35 00 00 00 00
  $  REQ025:71B 03 22 18 38 00 00 00 00       $  ANS025:79B 03 22 18 38 00 00 00 00
  $  REQ026:71B 03 22 18 39 00 00 00 00       $  ANS026:79B 03 22 18 39 00 00 00 00
  $  REQ027:71B 03 22 18 40 00 00 00 00       $  ANS027:79B 03 22 18 40 00 00 00 00
  $  REQ028:71B 03 22 18 41 00 00 00 00       $  ANS028:79B 03 22 18 41 00 00 00 00
  $  REQ029:71B 03 22 18 42 00 00 00 00       $  ANS029:79B 03 22 18 42 00 00 00 00
  $  REQ030:71B 03 22 18 43 00 00 00 00       $  ANS030:79B 03 22 18 43 00 00 00 00
  $  REQ031:71B 03 22 18 44 00 00 00 00       $  ANS031:79B 03 22 18 44 00 00 00 00
  $  REQ032:71B 03 22 18 72 00 00 00 00       $  ANS032:79B 03 22 18 72 00 00 00 00
  $  REQ033:71B 03 22 18 73 00 00 00 00       $  ANS033:79B 03 22 18 73 00 00 00 00
  $  REQ034:71B 03 22 18 74 00 00 00 00       $  ANS034:79B 03 22 18 74 00 00 00 00
  $  REQ035:71B 03 22 18 76 00 00 00 00       $  ANS035:79B 03 22 18 76 00 00 00 00
  $  REQ036:71B 03 22 18 77 00 00 00 00       $  ANS036:79B 03 22 18 77 00 00 00 00
  $  REQ037:71B 03 22 18 78 00 00 00 00       $  ANS037:79B 03 22 18 78 00 00 00 00

  $  000.12V电池电压                                   $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.最大允许的脉冲放电功率                        $    $  kW       $    $  ANS001.BYTE004  $  y=x*0.5;
  $  002.最大允许的脉冲充电功率                        $    $  kW       $    $  ANS002.BYTE004  $  y=x*0.5;
  $  003.最大允许的持续放电功率                        $    $  kW       $    $  ANS003.BYTE004  $  y=x*0.5;
  $  004.最大允许的持续充电功率                        $    $  kW       $    $  ANS004.BYTE004  $  y=x*0.5;
  $  005.最高单体电压编号                              $    $           $    $  ANS005.BYTE004  $  y=x;
  $  006.最低单体电压编号                              $    $           $    $  ANS006.BYTE004  $  y=x;
  $  007.最高单体温度编号                              $    $           $    $  ANS007.BYTE004  $  y=x;
  $  008.最低单体温度编号                              $    $           $    $  ANS008.BYTE004  $  y=x;
  $  009.绝缘电阻值                                    $    $  kohm     $    $  ANS009.BYTE004  $  y=x*4;
  $  010.互锁状态                                      $    $           $    $  ANS010.BYTE004  $  if(x==1)y=@021e;else y=@0058;
  $  011.电池总电压                                    $    $  V        $    $  ANS011.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  012.电池总电流                                    $    $  A        $    $  ANS012.BYTE004  $  y=(x1*0x100+x2)*0.1-500;
  $  013.SOC(电池剩余电量)值                           $    $  %        $    $  ANS013.BYTE004  $  y=x;
  $  014.SOH(电池健康度)值                             $    $  %        $    $  ANS014.BYTE004  $  y=x;
  $  015.电池最高单体电压                              $    $  mV       $    $  ANS015.BYTE004  $  y=x1*0x100+x2;
  $  016.电池最低单体电压                              $    $  mV       $    $  ANS016.BYTE004  $  y=x1*0x100+x2;
  $  017.电池最高温度                                  $    $  degC     $    $  ANS017.BYTE004  $  y=x-40;
  $  018.电池最低温度                                  $    $  degC     $    $  ANS018.BYTE004  $  y=x-40;
  $  019.电池故障等级                                  $    $           $    $  ANS019.BYTE004  $  switxh(x)0x00:y=@0023;0x01:y=@021b;0x02:y=@021c;0x03:y=@021d;default:y=@009c;
  $  020.总正接触器状态                                $    $           $    $  ANS020.BYTE004  $  switxh(x)0x00:y=@002b;0x01:y=@002c;0x02:y=@000e;default:y=@009c;
  $  021.预充电接触器状态                              $    $           $    $  ANS021.BYTE004  $  switxh(x)0x00:y=@002b;0x01:y=@002c;0x02:y=@000e;default:y=@009c;
  $  022.总负接触器状态                                $    $           $    $  ANS022.BYTE004  $  switxh(x)0x00:y=@002b;0x01:y=@002c;0x02:y=@000e;default:y=@009c;
  $  023.快充接触器状态                                $    $           $    $  ANS023.BYTE004  $  switxh(x)0x00:y=@002b;0x01:y=@002c;0x02:y=@000e;default:y=@009c;
  $  024.电池充放电状态                                $    $           $    $  ANS024.BYTE004  $  switxh(x) 0x00:y=@001b; 0x01:y=@021a; 0x02:y=@002e; 0x03:y=@021f; 0x04:y=@0220; 0x05:y=@0221; 0x06:y=@0222; 0x07:y=@0223; 0x08:y=@0224; 0x09:y=@0225; default:y=@01fa;
  $  025.预充电状态                                    $    $           $    $  ANS025.BYTE004  $  switxh(x)0x00:y=@0027;0x01:y=@0028;0x02:y=@0029;0x03:y=@002a;default:y=@009c;
  $  026.剩余充电时间                                  $    $  min      $    $  ANS026.BYTE004  $  y=x1*0x100+x2;
  $  027.慢充电压请求                                  $    $  V        $    $  ANS027.BYTE004  $  y=x1*0x100+x2;
  $  028.慢充电流请求                                  $    $  A        $    $  ANS028.BYTE004  $  y=x1*0x100+x2-500;
  $  029.直流充电状态                                  $    $           $    $  ANS029.BYTE004  $  switxh(x)0x00:y=@000f;0x01:y=@0010;0x02:y=@0011;0x03:y=@0012;0x04:y=@0013;0x05:y=@0014;default:y=@009c;
  $  030.交流充电状态                                  $    $           $    $  ANS030.BYTE004  $  switxh(x)0x00:y=@000f;0x01:y=@0010;0x02:y=@0011;0x03:y=@0012;0x04:y=@0013;0x05:y=@0014;default:y=@009c;
  $  031.BMS(电池管理系统)版本号                       $    $           $    $  ANS031.BYTE004  $  y=x1*0x100+x2;
  $  032.VCU(整车控制器)控制状态信息(上下电指令)       $    $           $    $  ANS032.BYTE004  $  switxh(x)0x00:y=@0207;0x01:y=@022c;0x02:y=@022d;0x03:y=@0225;default:y=@009c;
  $  033.OBC(充电控制器)状态                           $    $           $    $  ANS033.BYTE004  $  switxh(x) 0x00:y=@001b; 0x01:y=@01dc; 0x02:y=@0010; 0x03:y=@0226; 0x04:y=@0034; 0x05:y=@0227; 0x06:y=@0228; 0x07:y=@0229; 0x0F:y=@0188; default:y=@009c;
  $  034.ACU(气囊控制器)输出点火信号状态(碰撞)         $    $           $    $  ANS034.BYTE004  $  if(x==1)y=@022a;else y=@022b;
  $  035.车速                                          $    $  km/h     $    $  ANS035.BYTE004  $  y=(x1*0x100+x2)*0.00390625;
  $  036.自检状态                                      $    $           $    $  ANS036.BYTE004  $  if(x==1)y=@021a;else y=@0005;
  $  037.充电插头连接状态                              $    $           $    $  ANS037.BYTE004  $  switxh(x) 0x00:y=@002b; 0x01:y=@0218; 0x02:y=@0219; 0x03:y=@01fa; default:y=@009c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:71B 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
