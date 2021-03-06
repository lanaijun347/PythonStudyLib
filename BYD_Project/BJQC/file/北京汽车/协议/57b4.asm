
    车型ID：57b4

    模拟：协议模拟-->57b4

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~79B

进入命令:

  $~  REQ000:71B 02 10 01 00 00 00 00 00       $~  ANS000:79B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:71B 02 3E 00 00 00 00 00 00       $!  ANS000:79B 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读取当前故障码
  $#  REQ000:71B 03 19 02 01 00 00 00 00       $#  ANS000:79B 03 19 02 01 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/5e000000


  $#  01.读取历史故障码
  $#  REQ000:71B 03 19 02 28 00 00 00 00       $#  ANS000:79B 03 19 02 28 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/5e000000


  $#  02.读冻结帧
  $#  REQ000:71B 03 19 02 29 00 00 00 00       $#  ANS000:79B 03 19 02 29 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/5e000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:71B 04 14 FF FF FF 00 00 00       $$  ANS000:79B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:71B 03 22 F1 90 00 00 00 00       $%  ANS000:79B 03 22 F1 90 00 00 00 00
  $%  REQ001:71B 03 22 F1 87 00 00 00 00       $%  ANS001:79B 03 22 F1 87 00 00 00 00
  $%  REQ002:71B 03 22 F1 97 00 00 00 00       $%  ANS002:79B 03 22 F1 97 00 00 00 00
  $%  REQ003:71B 03 22 F1 8A 00 00 00 00       $%  ANS003:79B 03 22 F1 8A 00 00 00 00
  $%  REQ004:71B 03 22 F1 93 00 00 00 00       $%  ANS004:79B 03 22 F1 93 00 00 00 00
  $%  REQ005:71B 03 22 F1 95 00 00 00 00       $%  ANS005:79B 03 22 F1 95 00 00 00 00
  $%  REQ006:71B 03 22 F1 8C 00 00 00 00       $%  ANS006:79B 03 22 F1 8C 00 00 00 00
  $%  REQ007:71B 03 22 F1 00 00 00 00 00       $%  ANS007:79B 03 22 F1 00 00 00 00 00
  $%  REQ008:71B 03 22 F1 99 00 00 00 00       $%  ANS008:79B 03 22 F1 99 00 00 00 00
  $%  REQ009:71B 03 22 24 0C 00 00 00 00       $%  ANS009:79B 03 22 24 0C 00 00 00 00
  $%  REQ010:71B 03 22 F1 80 00 00 00 00       $%  ANS010:79B 03 22 F1 80 00 00 00 00
  $%  REQ011:71B 03 22 F1 50 00 00 00 00       $%  ANS011:79B 03 22 F1 50 00 00 00 00
  $%  REQ012:71B 03 22 F1 98 00 00 00 00       $%  ANS012:79B 03 22 F1 98 00 00 00 00
  $%  REQ013:71B 03 22 24 01 00 00 00 00       $%  ANS013:79B 03 22 24 01 00 00 00 00
  $%  REQ014:71B 03 22 24 02 00 00 00 00       $%  ANS014:79B 03 22 24 02 00 00 00 00
  $%  REQ015:71B 03 22 F1 86 00 00 00 00       $%  ANS015:79B 03 22 F1 86 00 00 00 00

  $%  000:VIN:                       $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:零件号:                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  002:系统名称:                  $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:系统供应商标识:            $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:ECU硬件版本号:             $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  005:ECU软件版本号:             $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  006:ECU序列号:                 $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:诊断版本:                  $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  008:编程日期:                  $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  009:UDS协议版本:               $%    $%  ANS009.BYTE004  $%  HEX(x1,x2);
  $%  010:boot引导程序版本:          $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3);
  $%  011:软件指纹标识符:            $%    $%  ANS011.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  012:维修店代码:                $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  013:成功编程计数器:            $%    $%  ANS013.BYTE004  $%  y=x1;
  $%  014:重新编程尝试计数器:        $%    $%  ANS014.BYTE004  $%  y=x1;
  $%  015:当前诊断会话层:            $%    $%  ANS015.BYTE004  $%  switxh(x1)0x01:y=@0c4d;0x02:y=@0e24;0x03:y=@0c4e;default:y=@026e;

;******************************************************************************************************************************************************

读数据流: 

  $)  00.主要数据流
  $  00.主要数据流
  $  REQ000:71B 03 22 24 30 00 00 00 00       $  ANS000:79B 03 22 24 30 00 00 00 00
  $  REQ001:71B 03 22 24 31 00 00 00 00       $  ANS001:79B 03 22 24 31 00 00 00 00
  $  REQ002:71B 03 22 24 32 00 00 00 00       $  ANS002:79B 03 22 24 32 00 00 00 00
  $  REQ003:71B 03 22 24 05 00 00 00 00       $  ANS003:79B 03 22 24 05 00 00 00 00
  $  REQ004:71B 03 22 24 06 00 00 00 00       $  ANS004:79B 03 22 24 06 00 00 00 00
  $  REQ005:71B 03 22 24 04 00 00 00 00       $  ANS005:79B 03 22 24 04 00 00 00 00
  $  REQ006:71B 03 22 24 03 00 00 00 00       $  ANS006:79B 03 22 24 03 00 00 00 00
  $  REQ007:71B 03 22 24 34 00 00 00 00       $  ANS007:79B 03 22 24 34 00 00 00 00

  $  000.生产模式                                      $    $           $    $  ANS000.BYTE004  $  switxh((x1>>0)&0X01)0:y=@058d;1:y=@058c;
  $  001.加热模式                                      $    $           $    $  ANS001.BYTE004  $  switxh((x1>>0)&0X01)0:y=@058d;1:y=@058c;
  $  002.加热状态                                      $    $           $    $  ANS002.BYTE004  $  switxh((x1>>0)&0X01)0:y=@000b;1:y=@000e;
  $  003.ECU电源电压                                   $    $  V        $    $  ANS003.BYTE004  $  y=x1*0.08;
  $  004.纵向距离                                      $    $  m        $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.0078125-256;
  $  005.横向距离                                      $    $  m        $    $  ANS004.BYTE006  $  y=(x1*256+x2)*0.0078125-256;
  $  006.纵向相对速度                                  $    $  m/s      $    $  ANS004.BYTE008  $  y=(x1*256+x2)*0.00390625-128;
  $  007.横向相对速度                                  $    $  m/s      $    $  ANS004.BYTE010  $  y=(x1*256+x2)*0.00390625-128;
  $  008.纵向相对加速度                                $    $  m/s2     $    $  ANS004.BYTE012  $  y=(x1*256+x2)*0.00048828125-16;
  $  009.横向相对加速度                                $    $  m/s2     $    $  ANS004.BYTE014  $  y=(x1*256+x2)*0.00048828125-16;
  $  010.FCW系统故障状态                               $    $           $    $  ANS005.BYTE004  $  switxh((x1>>0)&0X01)0:y=@001c;1:y=@001d;
  $  011.FCW系统警报状态                               $    $           $    $  ANS005.BYTE004  $  switxh((x1>>1)&0X0f)0:y=@02df;1:y=@0d3b;2:y=@0d3c;
  $  012.雷达校准状态                                  $    $           $    $  ANS006.BYTE004  $  switxh((x1>>0)&0X01)0:y=@0d3d;1:y=@0d3e;
  $  013.最大车宽                                      $    $           $    $  ANS007.BYTE004  $  y=(x1*256+x2)/128;
  $  014.雷达安装方向                                  $    $           $    $  ANS007.BYTE006  $  y=x1;
  $  015.轴距                                          $    $           $    $  ANS007.BYTE007  $  y=(x1*256+x2)/2048;
  $  016.轮距                                          $    $           $    $  ANS007.BYTE009  $  y=(x1*256+x2)/2048;
  $  017.特征车速                                      $    $           $    $  ANS007.BYTE011  $  y=(x1*256+x2)/256;
  $  018.最小车宽                                      $    $           $    $  ANS007.BYTE013  $  y=(x1*256+x2)/128;
  $  019.车身坐标系和雷达坐标系在X方向的距离偏差       $    $           $    $  ANS007.BYTE015  $  y=(x1*256+x2)/128;
  $  020.车身坐标系和雷达坐标系在Y方向的距离偏差       $    $           $    $  ANS007.BYTE017  $  y=(x1*256+x2)/128;
  $  021.车身坐标系和雷达坐标系在Z方向的距离偏差       $    $           $    $  ANS007.BYTE019  $  y=(x1*256+x2)/128;
  $  022.转向比                                        $    $           $    $  ANS007.BYTE021  $  y=(x1*256+x2)/2048;
  $  023.后悬                                          $    $           $    $  ANS007.BYTE023  $  y=(x1*256+x2)/128;
  $  024.前悬                                          $    $           $    $  ANS007.BYTE025  $  y=(x1*256+x2)/128;
  $  025.侧滑角                                        $    $           $    $  ANS007.BYTE027  $  y=(x1*256+x2)/65536;
  $  026.驱动数据集                                    $    $           $    $  ANS007.BYTE029  $  y=x1;

  $)  01.其他数据流
  $  01.其他数据流
  $  REQ000:71B 04 31 03 03 02 00 00 00       $  ANS000:79B 04 31 03 03 02 00 00 00

  $  000.进度       $    $  %     $    $  ANS000.BYTE008  $  y=x1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:71B 30 00 10 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
