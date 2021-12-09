
    车型ID：5761

    模拟：协议模拟-->5761

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A1

进入命令:

  $~  REQ000:721 02 10 03 00 00 00 00 00       $~  ANS000:7A1 02 10 03 00 00 00 00 00
  $~~ REQ001:721 02 27 01 00 00 00 00 00       $~~ ANS001:7A1 02 27 01 00 00 00 00 00
  $~~ REQ002:721 06 27 02 14 88 2D EC 00       $~~ ANS002:7A1 06 27 02 14 88 2D EC 00

空闲命令:

  $!  REQ000:721 02 3E 00 00 00 00 00 00       $!  ANS000:7A1 02 3E 00 00 00 00 00 00

退出命令:

  $@  REQ000:721 02 10 01 00 00 00 00 00       $@  ANS000:7A1 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:721 03 19 02 09 00 00 00 00       $#  ANS000:7A1 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/57000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:721 04 14 FF FF FF 00 00 00       $$  ANS000:7A1 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:721 03 22 F1 87 00 00 00 00       $%  ANS000:7A1 03 22 F1 87 00 00 00 00
  $%  REQ001:721 03 22 F1 88 00 00 00 00       $%  ANS001:7A1 03 22 F1 88 00 00 00 00
  $%  REQ002:721 03 22 F1 8A 00 00 00 00       $%  ANS002:7A1 03 22 F1 8A 00 00 00 00
  $%  REQ003:721 03 22 F1 97 00 00 00 00       $%  ANS003:7A1 03 22 F1 97 00 00 00 00
  $%  REQ004:721 03 22 F1 91 00 00 00 00       $%  ANS004:7A1 03 22 F1 91 00 00 00 00
  $%  REQ005:721 03 22 F1 8C 00 00 00 00       $%  ANS005:7A1 03 22 F1 8C 00 00 00 00
  $%  REQ006:721 03 22 F1 90 00 00 00 00       $%  ANS006:7A1 03 22 F1 90 00 00 00 00
  $%  REQ007:721 03 22 F1 5E 00 00 00 00       $%  ANS007:7A1 03 22 F1 5E 00 00 00 00
  $%  REQ008:721 03 22 F1 60 00 00 00 00       $%  ANS008:7A1 03 22 F1 60 00 00 00 00
  $%  REQ009:721 03 22 F1 63 00 00 00 00       $%  ANS009:7A1 03 22 F1 63 00 00 00 00
  $%  REQ010:721 03 22 F1 62 00 00 00 00       $%  ANS010:7A1 03 22 F1 62 00 00 00 00
  $%  REQ011:721 03 22 F1 9E 00 00 00 00       $%  ANS011:7A1 03 22 F1 9E 00 00 00 00
  $%  REQ012:721 03 22 F1 5B 00 00 00 00       $%  ANS012:7A1 03 22 F1 5B 00 00 00 00

  $%  000:控制器总零件号:        $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:控制器软件号:          $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商标识信息:        $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:系统名称:              $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:控制器硬件号:          $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:控制器序列号:          $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $%  006:车架号（VIN）:         $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:网络配置号:            $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:配置文件号:            $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:驱动文件号:            $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:第二控制器软号:        $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:ODX文件号:             $%    $%  ANS011.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  012:读取软件指纹:          $%    $%  ANS012.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:721 03 22 19 00 00 00 00 00       $  ANS000:7A1 03 22 19 00 00 00 00 00
  $  REQ001:721 03 22 19 01 00 00 00 00       $  ANS001:7A1 03 22 19 01 00 00 00 00
  $  REQ002:721 03 22 19 02 00 00 00 00       $  ANS002:7A1 03 22 19 02 00 00 00 00
  $  REQ003:721 03 22 19 03 00 00 00 00       $  ANS003:7A1 03 22 19 03 00 00 00 00
  $  REQ004:721 03 22 19 04 00 00 00 00       $  ANS004:7A1 03 22 19 04 00 00 00 00
  $  REQ005:721 03 22 19 05 00 00 00 00       $  ANS005:7A1 03 22 19 05 00 00 00 00
  $  REQ006:721 03 22 19 06 00 00 00 00       $  ANS006:7A1 03 22 19 06 00 00 00 00
  $  REQ007:721 03 22 19 07 00 00 00 00       $  ANS007:7A1 03 22 19 07 00 00 00 00
  $  REQ008:721 03 22 19 08 00 00 00 00       $  ANS008:7A1 03 22 19 08 00 00 00 00
  $  REQ009:721 03 22 19 09 00 00 00 00       $  ANS009:7A1 03 22 19 09 00 00 00 00
  $  REQ010:721 03 22 19 0A 00 00 00 00       $  ANS010:7A1 03 22 19 0A 00 00 00 00
  $  REQ011:721 03 22 19 0B 00 00 00 00       $  ANS011:7A1 03 22 19 0B 00 00 00 00
  $  REQ012:721 03 22 19 0C 00 00 00 00       $  ANS012:7A1 03 22 19 0C 00 00 00 00
  $  REQ013:721 03 22 19 0D 00 00 00 00       $  ANS013:7A1 03 22 19 0D 00 00 00 00
  $  REQ014:721 03 22 19 0E 00 00 00 00       $  ANS014:7A1 03 22 19 0E 00 00 00 00
  $  REQ015:721 03 22 19 0F 00 00 00 00       $  ANS015:7A1 03 22 19 0F 00 00 00 00
  $  REQ016:721 03 22 19 10 00 00 00 00       $  ANS016:7A1 03 22 19 10 00 00 00 00
  $  REQ017:721 03 22 19 11 00 00 00 00       $  ANS017:7A1 03 22 19 11 00 00 00 00

  $  000.车速                   $    $  Km/h     $    $  ANS000.BYTE004  $  y=x;
  $  001.里程数                 $    $  KM       $    $  ANS001.BYTE004  $  y=(x1*256+x2)*65536+x3*256+x4;
  $  002.电池电量               $    $  %        $    $  ANS002.BYTE004  $  y=x;
  $  003.当前档位位置           $    $           $    $  ANS003.BYTE004  $  switxh(x&0x0F) 0x00:y=P;0x01:y=N;0x02:y=D;0x03:y=R;default: y=;
  $  004.驾驶范围               $    $  KM       $    $  ANS004.BYTE004  $  y=x1*256+x2;
  $  005.车辆当前驾驶模式       $    $           $    $  ANS005.BYTE004  $  switxh(x&0x0F) 0x00:y=保留;0x01:y=ECO;0x02:y=运行;0x03:y=无效;default: y=;
  $  006.环境温度               $    $  ℃       $    $  ANS006.BYTE004  $  y=x;
  $  007.点火开关ON电压         $    $  V        $    $  ANS007.BYTE004  $  y=x;
  $  008.EBD硬线状态            $    $           $    $  ANS008.BYTE004  $  switxh(x&0x01) 0x01:y=高电平;default: y=低电平;
  $  009.KL30电压               $    $  V        $    $  ANS009.BYTE004  $  y=x;
  $  010.清洗液状态             $    $           $    $  ANS010.BYTE004  $  switxh(x&0x01) 0x01:y=高电平;default: y=低电平;
  $  011.座椅感知状态           $    $           $    $  ANS011.BYTE004  $  switxh(x&0x01) 0x01:y=占用;default: y=未占用;
  $  012.停车状态               $    $           $    $  ANS012.BYTE004  $  switxh(x&0x01) 0x01:y=高电平;default: y=低电平;
  $  013.PP启用状态             $    $           $    $  ANS013.BYTE004  $  switxh(x&0x01) 0x01:y=高电平;default: y=低电平;
  $  014.PP灯状态               $    $           $    $  ANS014.BYTE004  $  switxh(x&0x01) 0x01:y=高电平;default: y=低电平;
  $  015.HDC状态                $    $           $    $  ANS015.BYTE004  $  switxh(x&0x01) 0x01:y=高电平;default: y=低电平;
  $  016.左盲区监测输出         $    $           $    $  ANS016.BYTE004  $  switxh(x&0x01) 0x01:y=高电平;default: y=低电平;
  $  017.右盲区监测输出         $    $           $    $  ANS017.BYTE004  $  switxh(x&0x01) 0x01:y=高电平;default: y=低电平;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:721 30 00 01 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
