
    车型ID：5855

    模拟：协议模拟-->5855

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~717

进入命令:

  $~  REQ000:707 02 10 03 FF FF FF FF FF       $~  ANS000:717 02 10 03 FF FF FF FF FF
  $~  REQ001:707 02 27 03 FF FF FF FF FF       $~  ANS001:717 02 27 03 FF FF FF FF FF
  $~  REQ002:707 04 27 04 1E B0 FF FF FF       $~  ANS002:717 04 27 04 1E B0 FF FF FF

空闲命令:

  $!  REQ000:707 02 3E 00 FF FF FF FF FF       $!  ANS000:717 02 3E 00 FF FF FF FF FF

退出命令:

  $@  REQ000:707 02 10 01 FF FF FF FF FF       $@  ANS000:717 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:707 03 19 02 09 FF FF FF FF       $#  ANS000:717 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/8f000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:707 04 14 FF FF FF FF FF FF       $$  ANS000:717 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:707 03 22 F1 80 FF FF FF FF       $%  ANS000:717 03 22 F1 80 FF FF FF FF
  $%  REQ001:707 03 22 F1 86 FF FF FF FF       $%  ANS001:717 03 22 F1 86 FF FF FF FF
  $%  REQ002:707 03 22 F1 87 FF FF FF FF       $%  ANS002:717 03 22 F1 87 FF FF FF FF
  $%  REQ003:707 03 22 F1 88 FF FF FF FF       $%  ANS003:717 03 22 F1 88 FF FF FF FF
  $%  REQ004:707 03 22 F1 B0 FF FF FF FF       $%  ANS004:717 03 22 F1 B0 FF FF FF FF
  $%  REQ005:707 03 22 F1 8A FF FF FF FF       $%  ANS005:717 03 22 F1 8A FF FF FF FF
  $%  REQ006:707 03 22 F1 8B FF FF FF FF       $%  ANS006:717 03 22 F1 8B FF FF FF FF
  $%  REQ007:707 03 22 F1 8C FF FF FF FF       $%  ANS007:717 03 22 F1 8C FF FF FF FF
  $%  REQ008:707 03 22 F1 90 FF FF FF FF       $%  ANS008:717 03 22 F1 90 FF FF FF FF
  $%  REQ009:707 03 22 F1 91 FF FF FF FF       $%  ANS009:717 03 22 F1 91 FF FF FF FF
  $%  REQ010:707 03 22 F1 BF FF FF FF FF       $%  ANS010:717 03 22 F1 BF FF FF FF FF
  $%  REQ011:707 03 22 F1 98 FF FF FF FF       $%  ANS011:717 03 22 F1 98 FF FF FF FF
  $%  REQ012:707 03 22 F1 99 FF FF FF FF       $%  ANS012:717 03 22 F1 99 FF FF FF FF
  $%  REQ013:707 03 22 F1 9D FF FF FF FF       $%  ANS013:717 03 22 F1 9D FF FF FF FF
  $%  REQ014:707 03 22 F2 00 FF FF FF FF       $%  ANS014:717 03 22 F2 00 FF FF FF FF
  $%  REQ015:707 03 22 F1 C0 FF FF FF FF       $%  ANS015:717 03 22 F1 C0 FF FF FF FF

  $%  000:Bootloader软件版本号:              $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:当前诊断任务模式:                  $%    $%  ANS001.BYTE004  $%  switxh(x) 0x01:y=@0384;0x02:y=@0191;0x03:y=@0385;default: y=@0007;
  $%  002:整车零部件号:                      $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  003:应用软件版本号:                    $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:应用软件版本号（固定版本）:        $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:系统供应商代码:                    $%    $%  ANS005.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  006:ECU生产日期:                       $%    $%  ANS006.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  007:控制器序列号:                      $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  008:整车VIN:                           $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  009:硬件版本号:                        $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  010:硬件件版本号（固定版本）:          $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  011:诊断仪序列号:                      $%    $%  ANS011.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  012:刷新日期:                          $%    $%  ANS012.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  013:ECU装配日期:                       $%    $%  ANS013.BYTE004  $%  y=HEX(x1,x2,x3,x4);
  $%  014:电机编码:                          $%    $%  ANS014.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  015:软件总成版本:                      $%    $%  ANS015.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:707 03 22 E1 01 FF FF FF FF       $  ANS000:717 03 22 E1 01 FF FF FF FF
  $  REQ001:707 03 22 F0 20 FF FF FF FF       $  ANS001:717 03 22 F0 20 FF FF FF FF
  $  REQ002:707 03 22 B1 00 FF FF FF FF       $  ANS002:717 03 22 B1 00 FF FF FF FF
  $  REQ003:707 03 22 D0 01 FF FF FF FF       $  ANS003:717 03 22 D0 01 FF FF FF FF
  $  REQ004:707 03 22 08 02 FF FF FF FF       $  ANS004:717 03 22 08 02 FF FF FF FF
  $  REQ005:707 03 22 08 03 FF FF FF FF       $  ANS005:717 03 22 08 03 FF FF FF FF
  $  REQ006:707 03 22 08 04 FF FF FF FF       $  ANS006:717 03 22 08 04 FF FF FF FF
  $  REQ007:707 03 22 08 05 FF FF FF FF       $  ANS007:717 03 22 08 05 FF FF FF FF
  $  REQ008:707 03 22 08 06 FF FF FF FF       $  ANS008:717 03 22 08 06 FF FF FF FF
  $  REQ009:707 03 22 08 07 FF FF FF FF       $  ANS009:717 03 22 08 07 FF FF FF FF
  $  REQ010:707 03 22 08 08 FF FF FF FF       $  ANS010:717 03 22 08 08 FF FF FF FF
  $  REQ011:707 03 22 08 09 FF FF FF FF       $  ANS011:717 03 22 08 09 FF FF FF FF
  $  REQ012:707 03 22 08 0A FF FF FF FF       $  ANS012:717 03 22 08 0A FF FF FF FF
  $  REQ013:707 03 22 08 0B FF FF FF FF       $  ANS013:717 03 22 08 0B FF FF FF FF
  $  REQ014:707 03 22 08 0C FF FF FF FF       $  ANS014:717 03 22 08 0C FF FF FF FF
  $  REQ015:707 03 22 08 0D FF FF FF FF       $  ANS015:717 03 22 08 0D FF FF FF FF
  $  REQ016:707 03 22 08 0E FF FF FF FF       $  ANS016:717 03 22 08 0E FF FF FF FF
  $  REQ017:707 03 22 08 0F FF FF FF FF       $  ANS017:717 03 22 08 0F FF FF FF FF
  $  REQ018:707 03 22 08 10 FF FF FF FF       $  ANS018:717 03 22 08 10 FF FF FF FF
  $  REQ019:707 03 22 08 11 FF FF FF FF       $  ANS019:717 03 22 08 11 FF FF FF FF
  $  REQ020:707 03 22 08 12 FF FF FF FF       $  ANS020:717 03 22 08 12 FF FF FF FF
  $  REQ021:707 03 22 08 13 FF FF FF FF       $  ANS021:717 03 22 08 13 FF FF FF FF
  $  REQ022:707 03 22 08 14 FF FF FF FF       $  ANS022:717 03 22 08 14 FF FF FF FF
  $  REQ023:707 03 22 08 15 FF FF FF FF       $  ANS023:717 03 22 08 15 FF FF FF FF
  $  REQ024:707 03 22 08 16 FF FF FF FF       $  ANS024:717 03 22 08 16 FF FF FF FF
  $  REQ025:707 03 22 08 17 FF FF FF FF       $  ANS025:717 03 22 08 17 FF FF FF FF
  $  REQ026:707 03 22 08 18 FF FF FF FF       $  ANS026:717 03 22 08 18 FF FF FF FF
  $  REQ027:707 03 22 08 19 FF FF FF FF       $  ANS027:717 03 22 08 19 FF FF FF FF
  $  REQ028:707 03 22 08 20 FF FF FF FF       $  ANS028:717 03 22 08 20 FF FF FF FF
  $  REQ029:707 03 22 08 21 FF FF FF FF       $  ANS029:717 03 22 08 21 FF FF FF FF
  $  REQ030:707 03 22 08 22 FF FF FF FF       $  ANS030:717 03 22 08 22 FF FF FF FF
  $  REQ031:707 03 22 08 23 FF FF FF FF       $  ANS031:717 03 22 08 23 FF FF FF FF
  $  REQ032:707 03 22 08 24 FF FF FF FF       $  ANS032:717 03 22 08 24 FF FF FF FF
  $  REQ033:707 03 22 08 25 FF FF FF FF       $  ANS033:717 03 22 08 25 FF FF FF FF
  $  REQ034:707 03 22 08 26 FF FF FF FF       $  ANS034:717 03 22 08 26 FF FF FF FF
  $  REQ035:707 03 22 08 27 FF FF FF FF       $  ANS035:717 03 22 08 27 FF FF FF FF
  $  REQ036:707 03 22 08 28 FF FF FF FF       $  ANS036:717 03 22 08 28 FF FF FF FF
  $  REQ037:707 03 22 08 29 FF FF FF FF       $  ANS037:717 03 22 08 29 FF FF FF FF
  $  REQ038:707 03 22 08 2A FF FF FF FF       $  ANS038:717 03 22 08 2A FF FF FF FF
  $  REQ039:707 03 22 08 2B FF FF FF FF       $  ANS039:717 03 22 08 2B FF FF FF FF
  $  REQ040:707 03 22 08 2C FF FF FF FF       $  ANS040:717 03 22 08 2C FF FF FF FF
  $  REQ041:707 03 22 08 31 FF FF FF FF       $  ANS041:717 03 22 08 31 FF FF FF FF

  $  000.总计里程               $    $               $    $  ANS000.BYTE004  $  y=x*6553.6+x2*256+x3;
  $  001.日期                   $    $               $    $  ANS001.BYTE004  $  y=SPRINTF([%02x%02x%s%02x%s%02x%s%02x%s%02x%s%02x%s],x1,x2,@0434,x3,@0435,x4,@0436,x5,@0437,x6,@0438,x7,@0439);
  $  002.车速                   $    $  km/h         $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.03125;
  $  003.启动状态               $    $               $    $  ANS003.BYTE004  $  switxh(x) 0x01:y=IG OFF;0x02:y=ACC;0x04:y=IG ON;0x08:y=@0097;0x10:y=@0098;0x20:y=@0099;default: y=@0007;
  $  004.MCU使能命令            $    $               $    $  ANS004.BYTE004  $  switxh(x) 0x00:y=@0112;0x01:y=@0101;default: y=@0007;
  $  005.目标工作模式           $    $               $    $  ANS005.BYTE004  $  switxh(x) 0x00:y=@0113;0x01:y=@0042;0x02:y=@0114;0x03:y=@0115;0x04:y=Reverse drive mode;0x05:y=Speed mode;0x06:y=Zero torque mode;0x07:y=Discharge mode;default: y=@0007;
  $  006.目标转矩命令           $    $  Nm           $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.05-1024;
  $  007.目标转速命令           $    $  r/min        $    $  ANS007.BYTE004  $  y=(x1*256+x2)*0.5-16000;
  $  008.档位信号               $    $               $    $  ANS008.BYTE004  $  switxh(x&0x0f) 0x05:y=@0102;0x06:y=@0103;0x08:y=@0104;0x0a:y=Flash P;0x0b:y=@0105;0x0c:y=@0106;0x0d:y=@0107;0x0f:y=@0007;default: y=@0007;
  $  009.主动放电状态           $    $               $    $  ANS009.BYTE004  $  switxh(x) 0x00:y=@0108;0x01:y=@0109;0x02:y=@0110;0x03:y=@0111;default: y=@0007;
  $  010.防溜坡命令             $    $               $    $  ANS010.BYTE004  $  switxh(x) 0x00:y=@0100;0x01:y=@0101;default: y=@0007;
  $  011.实际工作模式           $    $               $    $  ANS011.BYTE004  $  switxh(x) 0x00:y=@0113;0x01:y=@0042;0x02:y=@0114;0x03:y=@0115;0x04:y=Reverse drive mode;0x05:y=Speed mode;0x06:y=Zero torque mode;0x07:y=Discharge mode;default: y=@0007;
  $  012.实际反馈转矩           $    $  Nm           $    $  ANS012.BYTE004  $  y=(x1*256+x2)*0.05-1024;
  $  013.实际反馈转速           $    $  r/min        $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.5-16000;
  $  014.Id给定值               $    $  A            $    $  ANS014.BYTE004  $  y=x1*256+x2-1000;
  $  015.Id实际值               $    $  A            $    $  ANS015.BYTE004  $  y=x1*256+x2-1000;
  $  016.Iq给定值               $    $  A            $    $  ANS016.BYTE004  $  y=x1*256+x2-1000;
  $  017.Iq实际值               $    $  A            $    $  ANS017.BYTE004  $  y=x1*256+x2-1000;
  $  018.旋变初始偏移位置       $    $  degree       $    $  ANS018.BYTE004  $  y=(x1*256+x2)*0.1-360;
  $  019.电机电流有效值         $    $  A            $    $  ANS019.BYTE004  $  y=(x1*256+x2)*0.05-512;
  $  020.允许最大输出转矩       $    $  Nm           $    $  ANS020.BYTE004  $  y=(x1*256+x2)*0.05;
  $  021.直流母线电压           $    $  V            $    $  ANS021.BYTE004  $  y=(x1*256+x2)*0.05;
  $  022.IGBT温度               $    $  degree C     $    $  ANS022.BYTE004  $  y=x-48;
  $  023.电机温度               $    $               $    $  ANS023.BYTE004  $  y=x-48;
  $  024.PWM载波频率            $    $  Hz           $    $  ANS024.BYTE004  $  y=x1*256+x2;
  $  025.钥匙信号               $    $               $    $  ANS025.BYTE004  $  switxh(x) 0x00:y=OFF;0x01:y=KEY_ON;default: y=@0007;
  $  026.12蓄电池电压           $    $  V            $    $  ANS026.BYTE004  $  y=x1*256+x2-12;
  $  027.最终转矩指令           $    $  Nm           $    $  ANS027.BYTE004  $  y=x1*256+x2;
  $  028.防抖转矩               $    $  Nm           $    $  ANS028.BYTE004  $  y=x1*256+x2;
  $  029.转矩指令转换值         $    $               $    $  ANS029.BYTE004  $  y=x1*256+x2;
  $  030.转矩设定               $    $               $    $  ANS030.BYTE004  $  y=x1*256+x2;
  $  031.相电流滤波值           $    $               $    $  ANS031.BYTE004  $  y=(x1*256+x2)*0.1;
  $  032.旋变角度               $    $               $    $  ANS032.BYTE004  $  y=x1*256+x2;
  $  033.内部控制模式           $    $               $    $  ANS033.BYTE004  $  y=x1*256+x2;
  $  034.Vd设定值               $    $               $    $  ANS034.BYTE004  $  y=x1*256+x2-32767;
  $  035.Vq设定值               $    $               $    $  ANS035.BYTE004  $  y=x1*256+x2-32767;
  $  036.Id电流查表值           $    $  A            $    $  ANS036.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  037.Iq电流查表值           $    $  A            $    $  ANS037.BYTE004  $  y=(x1*256+x2)*0.1-1000;
  $  038.A相电流AD值            $    $  A            $    $  ANS038.BYTE004  $  y=x1*256+x2;
  $  039.B相电流AD值            $    $  A            $    $  ANS039.BYTE004  $  y=x1*256+x2;
  $  040.C相电流AD值            $    $  A            $    $  ANS040.BYTE004  $  y=x1*256+x2;
  $  041.上下电状态             $    $               $    $  ANS041.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:707 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
