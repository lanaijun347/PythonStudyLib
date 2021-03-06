
    车型ID：581a

    模拟：协议模拟-->581a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~716

进入命令:

  $~  REQ000:706 02 10 03 FF FF FF FF FF       $~  ANS000:716 02 10 03 FF FF FF FF FF

空闲命令:

  $!  REQ000:706 02 3E 00 FF FF FF FF FF       $!  ANS000:716 02 3E 00 FF FF FF FF FF

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:706 03 19 02 09 FF FF FF FF       $#  ANS000:716 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<8)+x2;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/58140000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:706 04 14 FF FF FF FF FF FF       $$  ANS000:716 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:706 03 22 F1 90 FF FF FF FF       $%  ANS000:716 03 22 F1 90 FF FF FF FF
  $%  REQ001:706 03 22 F1 91 FF FF FF FF       $%  ANS001:716 03 22 F1 91 FF FF FF FF
  $%  REQ002:706 03 22 F1 88 FF FF FF FF       $%  ANS002:716 03 22 F1 88 FF FF FF FF
  $%  REQ003:706 03 22 F1 8B FF FF FF FF       $%  ANS003:716 03 22 F1 8B FF FF FF FF
  $%  REQ004:706 03 22 F1 8C FF FF FF FF       $%  ANS004:716 03 22 F1 8C FF FF FF FF
  $%  REQ005:706 03 22 F1 8D FF FF FF FF       $%  ANS005:716 03 22 F1 8D FF FF FF FF
  $%  REQ006:706 03 22 F1 8A FF FF FF FF       $%  ANS006:716 03 22 F1 8A FF FF FF FF
  $%  REQ007:706 03 22 F1 86 FF FF FF FF       $%  ANS007:716 03 22 F1 86 FF FF FF FF
  $%  REQ008:706 03 22 F1 87 FF FF FF FF       $%  ANS008:716 03 22 F1 87 FF FF FF FF
  $%  REQ009:706 03 22 F1 99 FF FF FF FF       $%  ANS009:716 03 22 F1 99 FF FF FF FF
  $%  REQ010:706 03 22 F0 11 FF FF FF FF       $%  ANS010:716 03 22 F0 11 FF FF FF FF
  $%  REQ011:706 03 22 F1 95 FF FF FF FF       $%  ANS011:716 03 22 F1 95 FF FF FF FF

  $%  000:VIN:                     $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:硬件版本号:              $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  002:软件版本号:              $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:ECU生产日期:             $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  004:ECU序列号:               $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:ECU装配日期:             $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  006:系统供应商代码:          $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  007:当前诊断服务模式:        $%    $%  ANS007.BYTE004  $%  y=HEX(x1);
  $%  008:整车零件号:              $%    $%  ANS008.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  009:刷新日期:                $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  010:数字输出:                $%    $%  ANS010.BYTE004  $%  y=ASCII(x1,x2,x3,x4);
  $%  011:电池批次号:              $%    $%  ANS011.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读取动态数据流
  $  00.读取动态数据流
  $  REQ000:706 03 22 F0 15 FF FF FF FF       $  ANS000:716 03 22 F0 15 FF FF FF FF
  $  REQ001:706 03 22 F0 16 FF FF FF FF       $  ANS001:716 03 22 F0 16 FF FF FF FF

  $  000.SOC值       $    $  %     $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.01;
  $  001.SOH值       $    $  %     $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.01;

  $)  01.充电数据监听
  $  01.充电数据监听
;  $  REQ000:706       $  ANS000:716

;  $  000.最高允许充电总电压(V)         $    $  V            $    $  ANS000.BYTE002  $  y=(x2*256+x1)*0.1;
;  $  001.最高输出电压(V)               $    $  V            $    $  ANS000.BYTE002  $  y=(x2*256+x1)*0.1;
;  $  002.最低输出电压(V)               $    $  V            $    $  ANS000.BYTE004  $  y=(x2*256+x1)*0.1;
;  $  003.充电桩最大输出电流(A)         $    $  A            $    $  ANS000.BYTE006  $  y=(x2*256+x1)*0.1-400;
;  $  004.充电桩最小输出电流(A)         $    $  A            $    $  ANS000.BYTE008  $  y=(x2*256+x1)*0.1-400;
;  $  005.车辆是否充电准备好            $    $               $    $  ANS000.BYTE002  $  switxh(x) 0x00:y=@0376;0xAA:y=@0377;0xFF:y=@0007;default: y=@0007;
;  $  006.充电桩是否充电准备好          $    $               $    $  ANS000.BYTE002  $  switxh(x) 0x00:y=@0376;0xAA:y=@0377;0xFF:y=@0007;default: y=@0007;
;  $  007.电压需求(V)                   $    $  V            $    $  ANS000.BYTE002  $  y=(x2*256+x1)*0.1;
;  $  008.电流需求(A)                   $    $  A            $    $  ANS000.BYTE004  $  y=(x2*256+x1)*0.1-400;
;  $  009.电压输出值(V)                 $    $  V            $    $  ANS000.BYTE002  $  y=(x2*256+x1)*0.1;
;  $  010.充电桩电流输出值(A)           $    $  A            $    $  ANS000.BYTE004  $  y=(x2*256+x1)*0.1-400;
;  $  011.充电允许                      $    $               $    $  ANS000.BYTE008  $  switxh(x&0x03) 0x00:y=@0375;0x01:y=@0122;default: y=@0007;
;  $  012.最高动力蓄电池温度(°C)       $    $  degree C     $    $  ANS000.BYTE003  $  y=x-50;
;  $  013.充电状态                      $    $               $    $  ANS000.BYTE007  $  y=HEX(x1,x2);
;  $  014.充电结束方式                  $    $               $    $  ANS000.BYTE002  $  y=HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:706 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
