
    车型ID：3c23

    模拟：协议模拟-->3c23

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~76D,70D

进入命令:

  $~  REQ000:76D 02 10 03 00 00 00 00 00       $~  ANS000:76D 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:76D 02 3E 00 00 00 00 00 00       $!  ANS000:76D 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:76D 03 19 02 AF 00 00 00 00       $#  ANS000:76D 03 19 02 AF 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/25000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:76D 04 14 FF FF FF 00 00 00       $$  ANS000:76D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:76D 03 22 F1 83 00 00 00 00       $%  ANS000:76D 03 22 F1 83 00 00 00 00
  $%  REQ001:76D 03 22 F1 87 00 00 00 00       $%  ANS001:76D 03 22 F1 87 00 00 00 00
  $%  REQ002:76D 03 22 F1 8A 00 00 00 00       $%  ANS002:76D 03 22 F1 8A 00 00 00 00
  $%  REQ003:76D 03 22 F1 8B 00 00 00 00       $%  ANS003:76D 03 22 F1 8B 00 00 00 00
  $%  REQ004:76D 03 22 F1 8C 00 00 00 00       $%  ANS004:76D 03 22 F1 8C 00 00 00 00
  $%  REQ005:76D 03 22 F1 90 00 00 00 00       $%  ANS005:76D 03 22 F1 90 00 00 00 00
  $%  REQ006:76D 03 22 F1 93 00 00 00 00       $%  ANS006:76D 03 22 F1 93 00 00 00 00
  $%  REQ007:76D 03 22 F1 95 00 00 00 00       $%  ANS007:76D 03 22 F1 95 00 00 00 00
  $%  REQ008:76D 03 22 F1 97 00 00 00 00       $%  ANS008:76D 03 22 F1 97 00 00 00 00
  $%  REQ009:76D 03 22 F1 98 00 00 00 00       $%  ANS009:76D 03 22 F1 98 00 00 00 00
  $%  REQ010:76D 03 22 F1 99 00 00 00 00       $%  ANS010:76D 03 22 F1 99 00 00 00 00

  $%  000:电控单元引导加载软件参考号:       $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:汽车的备用零部件编号:             $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  002:系统供应商公司名称代码:           $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  003:电控单元制造日期:                 $%    $%  ANS003.BYTE004  $%  HEX(0x20,x1,x2,x3);
  $%  004:批次编号:                         $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:车辆识别码:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:供应商硬件版本号:                 $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  007:供应商软件版本号:                 $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:系统名称:                         $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:测试仪序列号:                     $%    $%  ANS009.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:软件刷新日期:                     $%    $%  ANS010.BYTE004  $%  HEX(0x20,x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:76D 03 22 0C 80 00 00 00 00       $  ANS000:76D 03 22 0C 80 00 00 00 00
  $  REQ001:76D 03 22 0C 85 00 00 00 00       $  ANS001:76D 03 22 0C 85 00 00 00 00
  $  REQ002:76D 03 22 0C 86 00 00 00 00       $  ANS002:76D 03 22 0C 86 00 00 00 00
  $  REQ003:76D 03 22 0C 87 00 00 00 00       $  ANS003:76D 03 22 0C 87 00 00 00 00
  $  REQ004:76D 03 22 0C 88 00 00 00 00       $  ANS004:76D 03 22 0C 88 00 00 00 00
  $  REQ005:76D 03 22 0C 89 00 00 00 00       $  ANS005:76D 03 22 0C 89 00 00 00 00
  $  REQ006:76D 03 22 0C 8A 00 00 00 00       $  ANS006:76D 03 22 0C 8A 00 00 00 00
  $  REQ007:76D 03 22 0C 8B 00 00 00 00       $  ANS007:76D 03 22 0C 8B 00 00 00 00
  $  REQ008:76D 03 22 0C 8C 00 00 00 00       $  ANS008:76D 03 22 0C 8C 00 00 00 00
  $  REQ009:76D 03 22 0C 8D 00 00 00 00       $  ANS009:76D 03 22 0C 8D 00 00 00 00
  $  REQ010:76D 03 22 0C 8E 00 00 00 00       $  ANS010:76D 03 22 0C 8E 00 00 00 00
  $  REQ011:76D 03 22 0C 8F 00 00 00 00       $  ANS011:76D 03 22 0C 8F 00 00 00 00
  $  REQ012:76D 03 22 0C 90 00 00 00 00       $  ANS012:76D 03 22 0C 90 00 00 00 00
  $  REQ013:76D 03 22 0C 91 00 00 00 00       $  ANS013:76D 03 22 0C 91 00 00 00 00
  $  REQ014:76D 03 22 0C 92 00 00 00 00       $  ANS014:76D 03 22 0C 92 00 00 00 00
  $  REQ015:76D 03 22 0C 93 00 00 00 00       $  ANS015:76D 03 22 0C 93 00 00 00 00
  $  REQ016:76D 03 22 0C 94 00 00 00 00       $  ANS016:76D 03 22 0C 94 00 00 00 00
  $  REQ017:76D 03 22 0C 95 00 00 00 00       $  ANS017:76D 03 22 0C 95 00 00 00 00
  $  REQ018:76D 03 22 0C 96 00 00 00 00       $  ANS018:76D 03 22 0C 96 00 00 00 00
  $  REQ019:76D 03 22 0D 01 00 00 00 00       $  ANS019:76D 03 22 0D 01 00 00 00 00
  $  REQ020:76D 03 22 0D 02 00 00 00 00       $  ANS020:76D 03 22 0D 02 00 00 00 00
  $  REQ021:76D 03 22 0D 03 00 00 00 00       $  ANS021:76D 03 22 0D 03 00 00 00 00
  $  REQ022:76D 03 22 0D 04 00 00 00 00       $  ANS022:76D 03 22 0D 04 00 00 00 00
  $  REQ023:76D 03 22 0D 05 00 00 00 00       $  ANS023:76D 03 22 0D 05 00 00 00 00
  $  REQ024:76D 03 22 F0 10 00 00 00 00       $  ANS024:76D 03 22 F0 10 00 00 00 00
  $  REQ025:76D 03 22 0C 99 00 00 00 00       $  ANS025:76D 03 22 0C 99 00 00 00 00
  $  REQ026:76D 03 22 0D 00 00 00 00 00       $  ANS026:76D 03 22 0D 00 00 00 00 00

  $  000.当前的诊断会话模式                       $    $           $    $  ANS000.BYTE004  $  if(x==0x01)y=@0107;else if(x==0x02)y=@0108;else if(x==0x03)y=@0109;else y=@0153;
  $  001.电池电压                                 $    $  V        $    $  ANS001.BYTE004  $  y=0.1*x;
  $  002.5V 输出电压                              $    $  V        $    $  ANS002.BYTE004  $  y=0.1*x;
  $  003.发动机冷却水温度                         $    $  degC     $    $  ANS003.BYTE004  $  y=0.25*(x1*0x100+x2)-56;
  $  004.车内温度传感器读数                       $    $  degC     $    $  ANS004.BYTE004  $  y=0.25*(x1*0x100+x2)-56;
  $  005.车外环境温度传感器读数                   $    $  degC     $    $  ANS005.BYTE004  $  y=0.25*(x1*0x100+x2)-56;
  $  006.蒸发器温度传感器读数                     $    $  degC     $    $  ANS006.BYTE004  $  y=0.25*(x1*0x100+x2)-56;
  $  007.光照辐射传感器读数                       $    $  w/m2     $    $  ANS007.BYTE004  $  y=x;
  $  008.左混合风门电机位置反馈                   $    $  V        $    $  ANS008.BYTE004  $  y=5.0*(x1*0x100+x2)/1024;
  $  009.右混合风门电机位置反馈                   $    $  V        $    $  ANS009.BYTE004  $  y=5.0*(x1*0x100+x2)/1024;
  $  010.模式风门电机位置反馈                     $    $  V        $    $  ANS010.BYTE004  $  y=5.0*(x1*0x100+x2)/1024;
  $  011.信号输入状态                             $    $           $    $  ANS011.BYTE004  $  if(x1&0x01)y=@0152;else if(x1&0x02)y=@0154;else if(x1&0x04)y=@0155;else if(x1&0x08)y=@0156;else y=@0153;
  $  012.设定温度(左侧)                           $    $  degC     $    $  ANS012.BYTE004  $  y=0.5*x;
  $  013.设定温度(右侧)                           $    $  degC     $    $  ANS012.BYTE004  $  y=0.5*x;
  $  014.鼓风机控制状态                           $    $  Bar      $    $  ANS013.BYTE004  $  y=x;
  $  015.压缩机状态                               $    $           $    $  ANS014.BYTE004  $  if(((x>>0)&1)) y=@014c;else y=@00b4;
  $  016.水加热PTC控制状态                        $    $  %        $    $  ANS015.BYTE004  $  y=x;
  $  017.压缩机控制输出(请求转速)                 $    $  rpm      $    $  ANS016.BYTE004  $  y=x;
  $  018.高低压开关状态                           $    $           $    $  ANS017.BYTE004  $  switxh(x) 0:y=@0004;1:y=@0151;default:y=@0105;
  $  019.中压开关状态                             $    $           $    $  ANS018.BYTE004  $  switxh(x) 0:y=@0004;1:y=@0151;default:y=@0105;
  $  020.风加热PTC档位                            $    $           $    $  ANS019.BYTE004  $  switxh(x) 0:y=@001c;1:y=@014f;2:y=@0150;default:y=@0105;
  $  021.风加热传感器1                            $    $  degC     $    $  ANS020.BYTE004  $  y=(x1*0x100+x2)*0.25-56;
  $  022.风加热传感器2                            $    $  degC     $    $  ANS021.BYTE004  $  y=(x1*0x100+x2)*0.25-56;
  $  023.蒸发器电磁阀开关控制状态                 $    $           $    $  ANS022.BYTE004  $  switxh(x) 0:y=@014d;1:y=@014e;default:y=@0105;
  $  024.电池冷媒热交换器电磁阀开关控制状态       $    $           $    $  ANS023.BYTE004  $  switxh(x) 0:y=@014d;1:y=@014e;default:y=@0105;
  $  025.电子控制器(ECU) 变码                     $    $           $    $  ANS024.BYTE004  $  HEX(x);
  $  026.左座椅加热状态                           $    $           $    $  ANS014.BYTE004  $  if(((x>>1)&1)) y=@014c;else y=@00b4;
  $  027.右座椅加热状态                           $    $           $    $  ANS014.BYTE004  $  if(((x>>2)&1)) y=@014c;else y=@00b4;
  $  028.水泵控制输出                             $    $  %        $    $  ANS025.BYTE004  $  y=0.7874016*(x&0x7F);
  $  029.水泵控制继电器                           $    $           $    $  ANS025.BYTE004  $  if(((x>>7)&1)) y=@014a;else y=@014b;
  $  030.冷却液温度传感器                         $    $  degC     $    $  ANS026.BYTE004  $  y=(x1*0x100+x2)*0.25-56;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:76D 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
