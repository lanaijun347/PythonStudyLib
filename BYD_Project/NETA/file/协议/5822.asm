
    车型ID：5822

    模拟：协议模拟-->5822

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~750

进入命令:

  $~  REQ000:740 02 10 03 FF FF FF FF FF       $~  ANS000:750 02 10 03 FF FF FF FF FF
  $~  REQ001:740 02 27 03 FF FF FF FF FF       $~  ANS001:750 02 27 03 FF FF FF FF FF
  $~  REQ002:740 04 27 04 1E B0 FF FF FF       $~  ANS002:750 04 27 04 1E B0 FF FF FF

空闲命令:

  $!  REQ000:740 02 3E 00 FF FF FF FF FF       $!  ANS000:750 02 3E 00 FF FF FF FF FF

退出命令:

  $@  REQ000:740 02 10 01 FF FF FF FF FF       $@  ANS000:750 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:740 03 19 02 09 FF FF FF FF       $#  ANS000:750 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/65000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:740 04 14 FF FF FF FF FF FF       $$  ANS000:750 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:740 03 22 F1 80 FF FF FF FF       $%  ANS000:750 03 22 F1 80 FF FF FF FF
  $%  REQ001:740 03 22 F1 87 FF FF FF FF       $%  ANS001:750 03 22 F1 87 FF FF FF FF
  $%  REQ002:740 03 22 F1 88 FF FF FF FF       $%  ANS002:750 03 22 F1 88 FF FF FF FF
  $%  REQ003:740 03 22 F1 8A FF FF FF FF       $%  ANS003:750 03 22 F1 8A FF FF FF FF
  $%  REQ004:740 03 22 F1 8B FF FF FF FF       $%  ANS004:750 03 22 F1 8B FF FF FF FF
  $%  REQ005:740 03 22 F1 8C FF FF FF FF       $%  ANS005:750 03 22 F1 8C FF FF FF FF
  $%  REQ006:740 03 22 F1 90 FF FF FF FF       $%  ANS006:750 03 22 F1 90 FF FF FF FF
  $%  REQ007:740 03 22 F1 91 FF FF FF FF       $%  ANS007:750 03 22 F1 91 FF FF FF FF
  $%  REQ008:740 03 22 F1 98 FF FF FF FF       $%  ANS008:750 03 22 F1 98 FF FF FF FF
  $%  REQ009:740 03 22 F1 99 FF FF FF FF       $%  ANS009:750 03 22 F1 99 FF FF FF FF
  $%  REQ010:740 03 22 F1 9D FF FF FF FF       $%  ANS010:750 03 22 F1 9D FF FF FF FF

  $%  000:Bootloader软件版本号:              $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:整车零部件号:                      $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  002:软件版本号(正常升级版本):          $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:系统供应商代码:                    $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  004:ECU生产日期:                       $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  005:控制器序列号:                      $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  006:VIN:                               $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  007:硬件版本号:                        $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  008:维修店代码或诊断设备序列号:        $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:刷新日期:                          $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  010:ECU装配日期:                       $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:740 03 22 60 02 FF FF FF FF       $  ANS000:750 03 22 60 02 FF FF FF FF
  $  REQ001:740 03 22 60 03 FF FF FF FF       $  ANS001:750 03 22 60 03 FF FF FF FF
  $  REQ002:740 03 22 60 17 FF FF FF FF       $  ANS002:750 03 22 60 17 FF FF FF FF
  $  REQ003:740 03 22 60 04 FF FF FF FF       $  ANS003:750 03 22 60 04 FF FF FF FF
  $  REQ004:740 03 22 60 05 FF FF FF FF       $  ANS004:750 03 22 60 05 FF FF FF FF
  $  REQ005:740 03 22 60 06 FF FF FF FF       $  ANS005:750 03 22 60 06 FF FF FF FF
  $  REQ006:740 03 22 60 07 FF FF FF FF       $  ANS006:750 03 22 60 07 FF FF FF FF
  $  REQ007:740 03 22 60 11 FF FF FF FF       $  ANS007:750 03 22 60 11 FF FF FF FF
  $  REQ008:740 03 22 60 14 FF FF FF FF       $  ANS008:750 03 22 60 14 FF FF FF FF
  $  REQ009:740 03 22 60 15 FF FF FF FF       $  ANS009:750 03 22 60 15 FF FF FF FF
  $  REQ010:740 03 22 60 16 FF FF FF FF       $  ANS010:750 03 22 60 16 FF FF FF FF
  $  REQ011:740 03 22 60 18 FF FF FF FF       $  ANS011:750 03 22 60 18 FF FF FF FF
  $  REQ012:740 03 22 60 19 FF FF FF FF       $  ANS012:750 03 22 60 19 FF FF FF FF
  $  REQ013:740 03 22 60 20 FF FF FF FF       $  ANS013:750 03 22 60 20 FF FF FF FF

  $  000.位置灯                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x01) 0x01:y=@0326;default: y=@0100;
  $  001.近光灯                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x02) 0x02:y=@0326;default: y=@0100;
  $  002.自动灯                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x04) 0x04:y=@0326;default: y=@0100;
  $  003.远光灯                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x08) 0x08:y=@0326;default: y=@0100;
  $  004.闪光灯                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x10) 0x10:y=@0326;default: y=@0100;
  $  005.前雾灯                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x20) 0x20:y=@0326;default: y=@0100;
  $  006.后雾灯                   $    $       $    $  ANS000.BYTE004  $  switxh(x&0x40) 0x40:y=@0326;default: y=@0100;
  $  007.左转向灯                 $    $       $    $  ANS000.BYTE005  $  switxh(x&0x01) 0x01:y=@0326;default: y=@0100;
  $  008.左/辅助转向灯            $    $       $    $  ANS000.BYTE005  $  switxh(x&0x02) 0x02:y=@0326;default: y=@0100;
  $  009.右转向灯                 $    $       $    $  ANS000.BYTE005  $  switxh(x&0x04) 0x04:y=@0326;default: y=@0100;
  $  010.右/辅助转向灯            $    $       $    $  ANS000.BYTE005  $  switxh(x&0x08) 0x08:y=@0326;default: y=@0100;
  $  011.危险报警灯               $    $       $    $  ANS000.BYTE005  $  switxh(x&0x10) 0x10:y=@0326;default: y=@0100;
  $  012.雨刮刷状态               $    $       $    $  ANS001.BYTE004  $  switxh(x&0x07) 0x01:y=@0349;0x02:y=@0350;0x04:y=@0351;default: y=-;
  $  013.雨刮档位                 $    $       $    $  ANS002.BYTE004  $  switxh(x&0x1f) 0x01:y=@0352;0x02:y=@0353;0x04:y=@0354;0x08:y=@0355;0x10:y=@0356;default: y=-;
  $  014.左前车窗                 $    $       $    $  ANS003.BYTE004  $  switxh(x&0x11) 0x01:y=@0346;0x10:y=@0347;default: y=@0348;
  $  015.右前车窗                 $    $       $    $  ANS003.BYTE004  $  switxh(x&0x22) 0x02:y=@0346;0x20:y=@0347;default: y=@0348;
  $  016.左后车窗                 $    $       $    $  ANS003.BYTE004  $  switxh(x&0x44) 0x04:y=@0346;0x40:y=@0347;default: y=@0348;
  $  017.右后车窗                 $    $       $    $  ANS003.BYTE004  $  switxh(x&0x88) 0x08:y=@0346;0x80:y=@0347;default: y=@0348;
  $  018.中控锁状态               $    $       $    $  ANS004.BYTE004  $  switxh(x&0x03) 0x01:y=@0344;0x02:y=@0345;default: y=-;
  $  019.钥匙锁状态               $    $       $    $  ANS004.BYTE004  $  switxh(x&0x0c) 0x04:y=@0344;0x08:y=@0345;default: y=-;
  $  020.左前门                   $    $       $    $  ANS005.BYTE004  $  switxh(x&0x01) 0x01:y=@0343;default: y=@0100;
  $  021.右前门                   $    $       $    $  ANS005.BYTE004  $  switxh(x&0x02) 0x02:y=@0343;default: y=@0100;
  $  022.左后门                   $    $       $    $  ANS005.BYTE004  $  switxh(x&0x04) 0x04:y=@0343;default: y=@0100;
  $  023.右后门                   $    $       $    $  ANS005.BYTE004  $  switxh(x&0x08) 0x08:y=@0343;default: y=@0100;
  $  024.后备箱                   $    $       $    $  ANS005.BYTE004  $  switxh(x&0x20) 0x20:y=@0326;default: y=@0100;
  $  025.车辆点火开关状态         $    $       $    $  ANS006.BYTE004  $  switxh(x&0x07) 0x01:y=key in;0x02:y=ACC;0x04:y=IGN;default: y=-;
  $  026.洗涤状态                 $    $       $    $  ANS007.BYTE004  $  switxh(x&0x03) 0x01:y=@0341;0x02:y=@0342;default: y=-;
  $  027.后备箱解锁               $    $       $    $  ANS008.BYTE004  $  switxh(x&0x01) 0x01:y=@0326;default: y=@0100;
  $  028.ESCL反馈                 $    $       $    $  ANS009.BYTE004  $  switxh(x&0x01) 0x01:y=@0326;default: y=@0100;
  $  029.碰撞信号                 $    $       $    $  ANS010.BYTE004  $  switxh(x&0x01) 0x01:y=@0326;default: y=@0100;
  $  030.喇叭                     $    $       $    $  ANS011.BYTE004  $  switxh(x&0x01) 0x01:y=@0326;default: y=@0100;
  $  031.后视镜折叠开关状态       $    $       $    $  ANS012.BYTE004  $  switxh(x&0x03) 0x01:y=@0339;0x02:y=@0340;default: y=-;
  $  032.左前转向灯反馈           $    $       $    $  ANS013.BYTE004  $  switxh(x&0x01) 0x01:y=@0326;default: y=@0100;
  $  033.右前转向灯反馈           $    $       $    $  ANS013.BYTE004  $  switxh(x&0x02) 0x02:y=@0326;default: y=@0100;
  $  034.左后转向灯反馈           $    $       $    $  ANS013.BYTE004  $  switxh(x&0x04) 0x04:y=@0326;default: y=@0100;
  $  035.右后转向灯反馈           $    $       $    $  ANS013.BYTE004  $  switxh(x&0x08) 0x08:y=@0326;default: y=@0100;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:740 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
