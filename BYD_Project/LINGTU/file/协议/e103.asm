
    车型ID：e103

    模拟：协议模拟-->e103

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7AA

进入命令:

  $~  REQ000:72A 02 10 03 00 00 00 00 00       $~  ANS000:7AA 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:72A 02 3E 00 00 00 00 00 00       $!  ANS000:7AA 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:72A 03 19 02 09 00 00 00 00       $#  ANS000:7AA 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/e4000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:72A 04 14 FF FF FF 00 00 00       $$  ANS000:7AA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:72A 03 22 F1 87 00 00 00 00       $%  ANS000:7AA 03 22 F1 87 00 00 00 00
  $%  REQ001:72A 03 22 F1 8A 00 00 00 00       $%  ANS001:7AA 03 22 F1 8A 00 00 00 00
  $%  REQ002:72A 03 22 F1 93 00 00 00 00       $%  ANS002:7AA 03 22 F1 93 00 00 00 00
  $%  REQ003:72A 03 22 F1 95 00 00 00 00       $%  ANS003:7AA 03 22 F1 95 00 00 00 00
  $%  REQ004:72A 03 22 F1 8C 00 00 00 00       $%  ANS004:7AA 03 22 F1 8C 00 00 00 00
  $%  REQ005:72A 03 22 F1 90 00 00 00 00       $%  ANS005:7AA 03 22 F1 90 00 00 00 00
  $%  REQ006:72A 03 22 02 A0 00 00 00 00       $%  ANS006:7AA 03 22 02 A0 00 00 00 00
  $%  REQ007:72A 03 22 02 A1 00 00 00 00       $%  ANS007:7AA 03 22 02 A1 00 00 00 00
  $%  REQ008:72A 03 22 02 A2 00 00 00 00       $%  ANS008:7AA 03 22 02 A2 00 00 00 00

  $%  000:电控单元零件号:           $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:系统供应商标识符:         $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:ECU硬件版本号:            $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  003:ECU应用软件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  004:供应商ECU序列号:          $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  005:VIN码:                    $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:电池包编号:               $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $%  007:电池包锁定状态:           $%    $%  ANS007.BYTE004  $%  if(x1&0x55) y=@004f;else y=@00ff;
  $%  008:高压互锁状态:             $%    $%  ANS008.BYTE004  $%  if(x1&0x55) y=@005c;else y=@0077;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:72A 03 22 F2 21 00 00 00 00       $  ANS000:7AA 03 22 F2 21 00 00 00 00
  $  REQ001:72A 03 22 F2 22 00 00 00 00       $  ANS001:7AA 03 22 F2 22 00 00 00 00
  $  REQ002:72A 03 22 F2 23 00 00 00 00       $  ANS002:7AA 03 22 F2 23 00 00 00 00
  $  REQ003:72A 03 22 F2 24 00 00 00 00       $  ANS003:7AA 03 22 F2 24 00 00 00 00
  $  REQ004:72A 03 22 F2 25 00 00 00 00       $  ANS004:7AA 03 22 F2 25 00 00 00 00
  $  REQ005:72A 03 22 F2 26 00 00 00 00       $  ANS005:7AA 03 22 F2 26 00 00 00 00
  $  REQ006:72A 03 22 F2 27 00 00 00 00       $  ANS006:7AA 03 22 F2 27 00 00 00 00
  $  REQ007:72A 03 22 F2 28 00 00 00 00       $  ANS007:7AA 03 22 F2 28 00 00 00 00
  $  REQ008:72A 03 22 F2 29 00 00 00 00       $  ANS008:7AA 03 22 F2 29 00 00 00 00
  $  REQ009:72A 03 22 F2 2A 00 00 00 00       $  ANS009:7AA 03 22 F2 2A 00 00 00 00
  $  REQ010:72A 03 22 F2 2B 00 00 00 00       $  ANS010:7AA 03 22 F2 2B 00 00 00 00
  $  REQ011:72A 03 22 F2 2C 00 00 00 00       $  ANS011:7AA 03 22 F2 2C 00 00 00 00
  $  REQ012:72A 03 22 F2 2D 00 00 00 00       $  ANS012:7AA 03 22 F2 2D 00 00 00 00
  $  REQ013:72A 03 22 F2 2E 00 00 00 00       $  ANS013:7AA 03 22 F2 2E 00 00 00 00
  $  REQ014:72A 03 22 F2 2F 00 00 00 00       $  ANS014:7AA 03 22 F2 2F 00 00 00 00
  $  REQ015:72A 03 22 F2 30 00 00 00 00       $  ANS015:7AA 03 22 F2 30 00 00 00 00
  $  REQ016:72A 03 22 F2 31 00 00 00 00       $  ANS016:7AA 03 22 F2 31 00 00 00 00
  $  REQ017:72A 03 22 F2 32 00 00 00 00       $  ANS017:7AA 03 22 F2 32 00 00 00 00
  $  REQ018:72A 03 22 F2 33 00 00 00 00       $  ANS018:7AA 03 22 F2 33 00 00 00 00
  $  REQ019:72A 03 22 F2 34 00 00 00 00       $  ANS019:7AA 03 22 F2 34 00 00 00 00

  $  000.电池充放电状态               $    $                $    $  ANS000.BYTE005  $  switxh(x1&0x03) 0x00: y=@00f0;0x01: y=@0058;0x02: y=@0040;0x03: y=@0004;default: y=@0007;
  $  001.BMS快充接触器状态            $    $                $    $  ANS000.BYTE005  $  if(x1&04) y=@009a;else y=@0051;
  $  002.电池加热接触器状态           $    $                $    $  ANS000.BYTE005  $  if(x1&08) y=@009a;else y=@0051;
  $  003.BMS反馈主正接触器状态        $    $                $    $  ANS000.BYTE005  $  switxh(x1&0x30) 0x00: y=@00fb;0x10: y=@00fc;0x20: y=@00fd;0x30: y=@00fe;default: y=@0007;
  $  004.BMS反馈预充接触器状态        $    $                $    $  ANS000.BYTE005  $  switxh(x1) 0x00: y=@00fb;0x40: y=@00fc;0x80: y=@00fd;0xc0: y=@00fe;default: y=@0007;
  $  005.BMS反馈主负接触器状态        $    $                $    $  ANS000.BYTE004  $  switxh(x1&0x03) 0x00: y=@00fb;0x01: y=@00fc;0x02: y=@00fd;0x03: y=@00fe;default: y=@0007;
  $  006.BMS充电状态                  $    $                $    $  ANS001.BYTE004  $  switxh(x1) 0x00: y=@0033;0x01: y=@00ee;0x02: y=@00ef;0x03: y=@00f0;default: y=@00f0;
  $  007.BMS状态模式                  $    $                $    $  ANS001.BYTE004  $  switxh(x1&0x3c) 0x00: y=@00f1;0x04: y=@00d0;0x08: y=@00f2;0x0c: y=@00f3;0x10: y=@00f4;0x14: y=@00f5;0x18: y=@00f6;0x1c: y=@00d4;0x20: y=@00f7;0x24: y=@00f8;0x28: y=@00f9;0x2c: y=@00fa;0x30: y=@00f8;default: y=@0004;
  $  008.碰撞信号                     $    $                $    $  ANS001.BYTE004  $  if(x1&0x20) y=@00ec;else y=@00ed;
  $  009.绝缘电阻值正极               $    $  KΩ           $    $  ANS002.BYTE004  $  y=x1*256*2+x2*2;
  $  010.绝缘电阻值正极               $    $  KΩ           $    $  ANS003.BYTE004  $  y=x1*256*2+x2*2;
  $  011.母线电流                     $    $  A             $    $  ANS004.BYTE004  $  y=x1*256*0.1+x2*0.1-800;
  $  012.电池电压                     $    $  V             $    $  ANS005.BYTE004  $  y=x1*256*0.1+x2*0.1;
  $  013.电池当前电量                 $    $  %             $    $  ANS006.BYTE004  $  y=x1*0.5;
  $  014.单体电压最大值编号           $    $                $    $  ANS007.BYTE004  $  y=x1;
  $  015.最大单体电压值               $    $  V             $    $  ANS008.BYTE004  $  y=x1*256*0.002+x2*0.002;
  $  016.单体电压最小值编号           $    $                $    $  ANS009.BYTE004  $  y=x1;
  $  017.最小单体电压值               $    $  V             $    $  ANS010.BYTE004  $  y=x1*256*0.002+x2*0.002;
  $  018.探针温度最大值编号           $    $                $    $  ANS011.BYTE004  $  y=x1;
  $  019.最高探针温度值               $    $  degree C      $    $  ANS012.BYTE004  $  y=x1-40;
  $  020.探针温度最小值编号           $    $                $    $  ANS013.BYTE004  $  y=x1;
  $  021.最低探针温度值               $    $  degree C      $    $  ANS014.BYTE004  $  y=x1-40;
  $  022.BMS最大持续10s充电功率       $    $  KW            $    $  ANS015.BYTE004  $  y=x1*256*0.2+x2*0.2;
  $  023.BMS最大持续2s充电功率        $    $  KW            $    $  ANS016.BYTE004  $  y=x1*256*0.2+x2*0.2;
  $  024.BMS最大持续10s放电功率       $    $  KW            $    $  ANS017.BYTE004  $  y=x1*256*0.2+x2*0.2;
  $  025.BMS最大持续2s放电功率        $    $  KW            $    $  ANS018.BYTE004  $  y=x1*256*0.2+x2*0.2;
  $  026.CP连接状态                   $    $                $    $  ANS019.BYTE004  $  switxh(x1&0x07) 0x00: y=@0033;0x01: y=@0034;0x02: y=@0102;0x03: y=@0103;0x07: y=@004e;default: y=@0007;
  $  027.S2状态                       $    $                $    $  ANS019.BYTE004  $  switxh(x1&0x03) 0x00: y=@0033;0x01: y=@0038;0x02: y=@0049;default: y=@0100;
  $  028.CC连接状态                   $    $                $    $  ANS019.BYTE004  $  switxh(x1&0x03) 0x00: y=@0033;0x01: y=@0101;0x02: y=@004b;default: y=@0100;
  $  029.CC2连接状态                  $    $                $    $  ANS019.BYTE004  $  if(x1&0x80) y=@003f;else y=@0033;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:72A 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
