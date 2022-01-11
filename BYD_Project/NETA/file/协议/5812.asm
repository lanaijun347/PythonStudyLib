
    车型ID：5812

    模拟：协议模拟-->5812

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~732

进入命令:

  $~  REQ000:722 02 10 03 FF FF FF FF FF       $~  ANS000:732 02 10 03 FF FF FF FF FF

空闲命令:

  $!  REQ000:722 02 3E 00 FF FF FF FF FF       $!  ANS000:732 02 3E 00 FF FF FF FF FF

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:722 03 19 02 09 FF FF FF FF       $#  ANS000:732 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<8)+x2;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/580d0000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:722 04 14 FF FF FF FF FF FF       $$  ANS000:732 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:722 03 22 F1 90 FF FF FF FF       $%  ANS000:732 03 22 F1 90 FF FF FF FF
  $%  REQ001:722 03 22 F1 87 FF FF FF FF       $%  ANS001:732 03 22 F1 87 FF FF FF FF
  $%  REQ002:722 03 22 F1 8A FF FF FF FF       $%  ANS002:732 03 22 F1 8A FF FF FF FF
  $%  REQ003:722 03 22 F1 8B FF FF FF FF       $%  ANS003:732 03 22 F1 8B FF FF FF FF
  $%  REQ004:722 03 22 F1 9D FF FF FF FF       $%  ANS004:732 03 22 F1 9D FF FF FF FF
  $%  REQ005:722 03 22 F1 8C FF FF FF FF       $%  ANS005:732 03 22 F1 8C FF FF FF FF
  $%  REQ006:722 03 22 F1 91 FF FF FF FF       $%  ANS006:732 03 22 F1 91 FF FF FF FF
  $%  REQ007:722 03 22 F1 88 FF FF FF FF       $%  ANS007:732 03 22 F1 88 FF FF FF FF
  $%  REQ008:722 03 22 F1 99 FF FF FF FF       $%  ANS008:732 03 22 F1 99 FF FF FF FF
  $%  REQ009:722 03 22 F1 98 FF FF FF FF       $%  ANS009:732 03 22 F1 98 FF FF FF FF
  $%  REQ010:722 03 22 F1 B0 FF FF FF FF       $%  ANS010:732 03 22 F1 B0 FF FF FF FF
  $%  REQ011:722 03 22 F1 80 FF FF FF FF       $%  ANS011:732 03 22 F1 80 FF FF FF FF

  $%  000:VIN码:                             $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:整车零部件号:                      $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  002:系统供应商代码:                    $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  003:ECU生产日期:                       $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  004:ECU装配日期:                       $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  005:控制器序列号:                      $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  006:硬件版本号:                        $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  007:软件版本号(正常升级版本):          $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  008:刷新日期:                          $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  009:维修店代码或诊断设备序列号:        $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:软件版本号(固定版本):              $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  011:Bootloader软件版本号:              $%    $%  ANS011.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:722 03 22 20 01 FF FF FF FF       $  ANS000:732 03 22 20 01 FF FF FF FF
  $  REQ001:722 03 22 20 02 FF FF FF FF       $  ANS001:732 03 22 20 02 FF FF FF FF
  $  REQ002:722 03 22 20 03 FF FF FF FF       $  ANS002:732 03 22 20 03 FF FF FF FF
  $  REQ003:722 03 22 20 04 FF FF FF FF       $  ANS003:732 03 22 20 04 FF FF FF FF
  $  REQ004:722 03 22 20 05 FF FF FF FF       $  ANS004:732 03 22 20 05 FF FF FF FF
  $  REQ005:722 03 22 20 06 FF FF FF FF       $  ANS005:732 03 22 20 06 FF FF FF FF
  $  REQ006:722 03 22 20 07 FF FF FF FF       $  ANS006:732 03 22 20 07 FF FF FF FF
  $  REQ007:722 03 22 20 08 FF FF FF FF       $  ANS007:732 03 22 20 08 FF FF FF FF
  $  REQ008:722 03 22 20 09 FF FF FF FF       $  ANS008:732 03 22 20 09 FF FF FF FF
  $  REQ009:722 03 22 20 0A FF FF FF FF       $  ANS009:732 03 22 20 0A FF FF FF FF
  $  REQ010:722 03 22 20 0B FF FF FF FF       $  ANS010:732 03 22 20 0B FF FF FF FF
  $  REQ011:722 03 22 20 0C FF FF FF FF       $  ANS011:732 03 22 20 0C FF FF FF FF
  $  REQ012:722 03 22 20 0D FF FF FF FF       $  ANS012:732 03 22 20 0D FF FF FF FF
  $  REQ013:722 03 22 20 0E FF FF FF FF       $  ANS013:732 03 22 20 0E FF FF FF FF
  $  REQ014:722 03 22 20 0F FF FF FF FF       $  ANS014:732 03 22 20 0F FF FF FF FF
  $  REQ015:722 03 22 20 11 FF FF FF FF       $  ANS015:732 03 22 20 11 FF FF FF FF
  $  REQ016:722 03 22 20 12 FF FF FF FF       $  ANS016:732 03 22 20 12 FF FF FF FF
  $  REQ017:722 03 22 20 13 FF FF FF FF       $  ANS017:732 03 22 20 13 FF FF FF FF
  $  REQ018:722 03 22 20 14 FF FF FF FF       $  ANS018:732 03 22 20 14 FF FF FF FF
  $  REQ019:722 03 22 20 15 FF FF FF FF       $  ANS019:732 03 22 20 15 FF FF FF FF
  $  REQ020:722 03 22 20 16 FF FF FF FF       $  ANS020:732 03 22 20 16 FF FF FF FF
  $  REQ021:722 03 22 20 17 FF FF FF FF       $  ANS021:732 03 22 20 17 FF FF FF FF
  $  REQ022:722 03 22 20 1C FF FF FF FF       $  ANS022:732 03 22 20 1C FF FF FF FF
  $  REQ023:722 03 22 20 1D FF FF FF FF       $  ANS023:732 03 22 20 1D FF FF FF FF
  $  REQ024:722 03 22 20 1E FF FF FF FF       $  ANS024:732 03 22 20 1E FF FF FF FF
  $  REQ025:722 03 22 20 1F FF FF FF FF       $  ANS025:732 03 22 20 1F FF FF FF FF
  $  REQ026:722 03 22 20 24 FF FF FF FF       $  ANS026:732 03 22 20 24 FF FF FF FF
  $  REQ027:722 03 22 20 25 FF FF FF FF       $  ANS027:732 03 22 20 25 FF FF FF FF
  $  REQ028:722 03 22 20 26 FF FF FF FF       $  ANS028:732 03 22 20 26 FF FF FF FF
  $  REQ029:722 03 22 20 28 FF FF FF FF       $  ANS029:732 03 22 20 28 FF FF FF FF
  $  REQ030:722 03 22 20 30 FF FF FF FF       $  ANS030:732 03 22 20 30 FF FF FF FF
  $  REQ031:722 03 22 20 32 FF FF FF FF       $  ANS031:732 03 22 20 32 FF FF FF FF
  $  REQ032:722 03 22 20 33 FF FF FF FF       $  ANS032:732 03 22 20 33 FF FF FF FF
  $  REQ033:722 03 22 20 34 FF FF FF FF       $  ANS033:732 03 22 20 34 FF FF FF FF
  $  REQ034:722 03 22 20 35 FF FF FF FF       $  ANS034:732 03 22 20 35 FF FF FF FF
  $  REQ035:722 03 22 20 36 FF FF FF FF       $  ANS035:732 03 22 20 36 FF FF FF FF
  $  REQ036:722 03 22 20 37 FF FF FF FF       $  ANS036:732 03 22 20 37 FF FF FF FF

  $  000.实际齿条行程                        $    $  mm           $    $  ANS000.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/512;
  $  001.目标齿条行程                        $    $  mm           $    $  ANS001.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/512;
  $  002.实际主缸压力                        $    $  mm           $    $  ANS002.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/64;
  $  003.线控目标主缸压力                    $    $  mm           $    $  ANS003.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/64;
  $  004.系统状态                            $    $               $    $  ANS004.BYTE004  $  switxh(x&0x03) 0x00:y=0;0x01:y=1;0x02:y=2;0x03:y=3;default: y=@0007;
  $  005.系统操作模式                        $    $               $    $  ANS005.BYTE004  $  switxh(x&0x03) 0x00:y=0;0x01:y=1;0x02:y=2;0x03:y=3;default: y=@0007;
  $  006.电机实际Q向电流                     $    $  A            $    $  ANS006.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/64;
  $  007.电机实际D向电流                     $    $  A            $    $  ANS007.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/64;
  $  008.电机目标Q向电流                     $    $  A            $    $  ANS008.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/64;
  $  009.电机目标D向电流                     $    $  A            $    $  ANS009.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/64;
  $  010.制动踏板位移传感器A路位移           $    $  mm           $    $  ANS010.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/128;
  $  011.制动踏板位移传感器B路位移           $    $  mm           $    $  ANS011.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/128;
  $  012.制动踏板位移传感器A路零位           $    $  mm           $    $  ANS012.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/256;
  $  013.制动踏板位移传感器B路零位           $    $  mm           $    $  ANS013.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/256;
  $  014.实际模块供电电压(蓄电池电压)        $    $  V            $    $  ANS014.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/256;
  $  015.整车钥匙状态                        $    $               $    $  ANS015.BYTE004  $  y=x;
  $  016.模块内功率区温度                    $    $  degree C     $    $  ANS016.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/64;
  $  017.模块内数字区温度                    $    $  degree C     $    $  ANS017.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/64;
  $  018.电机位置传感器供电电压              $    $  V            $    $  ANS018.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/256;
  $  019.制动踏板位移传感器A路供电电压       $    $  V            $    $  ANS019.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/256;
  $  020.制动踏板位移传感器B路供电电压       $    $  V            $    $  ANS020.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/256;
  $  021.压力传感器供电电压                  $    $  V            $    $  ANS021.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/256;
  $  022.电机位置传感器信号Sin最大值         $    $               $    $  ANS022.BYTE004  $  y=((x1&0x7f)-(x1&0x80))*256+x2;
  $  023.电机位置传感器信号Sin最小值         $    $               $    $  ANS023.BYTE004  $  y=((x1&0x7f)-(x1&0x80))*256+x2;
  $  024.电机位置传感器信号Cos最大值         $    $               $    $  ANS024.BYTE004  $  y=((x1&0x7f)-(x1&0x80))*256+x2;
  $  025.电机位置传感器信号Cos最小值         $    $               $    $  ANS025.BYTE004  $  y=((x1&0x7f)-(x1&0x80))*256+x2;
  $  026.主缸直径                            $    $  mm           $    $  ANS026.BYTE004  $  y=((x1&0x7f)-(x1&0x80))*256+x2;
  $  027.使用总线压力标志位                  $    $               $    $  ANS027.BYTE004  $  switxh(x&0x01) 0x00:y=0;0x01:y=1;default: y=@0007;
  $  028.动静态助力强制切换标志位            $    $               $    $  ANS028.BYTE004  $  switxh(x&0x03) 0x00:y=0;0x01:y=1;0x02:y=2;0x03:y=-;default: y=@0007;
  $  029.EOL故障标志                         $    $               $    $  ANS029.BYTE004  $  switxh(x&0x01) 0x00:y=0;0x01:y=1;default: y=@0007;
  $  030.电机目标电流                        $    $  A            $    $  ANS030.BYTE004  $  y=(((x1&0x7f)-(x1&0x80))*256+x2)/64;
  $  031.齿条零位学习状态                    $    $               $    $  ANS031.BYTE004  $  y=x/65;
  $  032.电机转速                            $    $  rpm          $    $  ANS032.BYTE004  $  y=((x1&0x7f)-(x1&0x80))*256+x2;
  $  033.ECU供电电压                         $    $  V            $    $  ANS033.BYTE004  $  y=x*0.1;
  $  034.驱动电机实际转速                    $    $  rpm          $    $  ANS034.BYTE004  $  y=((x1&0x7f)-(x1&0x80))*256+x2;
  $  035.车速                                $    $  km/h         $    $  ANS035.BYTE004  $  y=(x1*256+x2)*0.015625;
  $  036.汽车里程                            $    $  km           $    $  ANS036.BYTE004  $  y=(x1*256+x2)*1024+(x3*256+x4)*0.015625;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:722 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
