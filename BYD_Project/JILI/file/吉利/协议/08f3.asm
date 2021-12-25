
    车型ID：08f3

    模拟：协议模拟-->08f3

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7C9

进入命令:

  $~  REQ000:7C1 02 10 01 00 00 00 00 00       $~  ANS000:7C9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7C1 02 3E 00 00 00 00 00 00       $!  ANS000:7C9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7C1 03 19 02 09 00 00 00 00       $#  ANS000:7C9 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ba000000


  $#  01.读故障码库
  $#  REQ000:7C1 02 19 0A 00 00 00 00 00       $#  ANS000:7C9 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ba000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7C1 04 14 FF FF FF 00 00 00       $$  ANS000:7C9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7C1 03 22 F1 12 00 00 00 00       $%  ANS000:7C9 03 22 F1 12 00 00 00 00
  $%  REQ001:7C1 03 22 F1 87 00 00 00 00       $%  ANS001:7C9 03 22 F1 87 00 00 00 00
  $%  REQ002:7C1 03 22 F1 89 00 00 00 00       $%  ANS002:7C9 03 22 F1 89 00 00 00 00
  $%  REQ003:7C1 03 22 F1 8A 00 00 00 00       $%  ANS003:7C9 03 22 F1 8A 00 00 00 00
  $%  REQ004:7C1 03 22 F1 8B 00 00 00 00       $%  ANS004:7C9 03 22 F1 8B 00 00 00 00
  $%  REQ005:7C1 03 22 F1 8C 00 00 00 00       $%  ANS005:7C9 03 22 F1 8C 00 00 00 00
  $%  REQ006:7C1 03 22 F1 90 00 00 00 00       $%  ANS006:7C9 03 22 F1 90 00 00 00 00
  $%  REQ007:7C1 03 22 F1 93 00 00 00 00       $%  ANS007:7C9 03 22 F1 93 00 00 00 00
  $%  REQ008:7C1 03 22 F1 95 00 00 00 00       $%  ANS008:7C9 03 22 F1 95 00 00 00 00
  $%  REQ009:7C1 03 22 F1 97 00 00 00 00       $%  ANS009:7C9 03 22 F1 97 00 00 00 00
  $%  REQ010:7C1 03 22 F1 98 00 00 00 00       $%  ANS010:7C9 03 22 F1 98 00 00 00 00
  $%  REQ011:7C1 03 22 F1 99 00 00 00 00       $%  ANS011:7C9 03 22 F1 99 00 00 00 00
  $%  REQ012:7C1 03 22 F1 9D 00 00 00 00       $%  ANS012:7C9 03 22 F1 9D 00 00 00 00
  $%  REQ013:7C1 03 22 F1 82 00 00 00 00       $%  ANS013:7C9 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)系统名称或发动机类型:         $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  010:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:ECU(电子控制器)刷写日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:ECU(电子控制器)安装日期:                     $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  013:标定软件版本号:                              $%    $%  ANS013.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7C1 03 22 DF 00 00 00 00 00       $  ANS000:7C9 03 22 DF 00 00 00 00 00
  $  REQ001:7C1 03 22 DF 01 00 00 00 00       $  ANS001:7C9 03 22 DF 01 00 00 00 00
  $  REQ002:7C1 03 22 67 02 00 00 00 00       $  ANS002:7C9 03 22 67 02 00 00 00 00
  $  REQ003:7C1 03 22 67 03 00 00 00 00       $  ANS003:7C9 03 22 67 03 00 00 00 00
  $  REQ004:7C1 03 22 67 04 00 00 00 00       $  ANS004:7C9 03 22 67 04 00 00 00 00
  $  REQ005:7C1 03 22 67 05 00 00 00 00       $  ANS005:7C9 03 22 67 05 00 00 00 00
  $  REQ006:7C1 03 22 67 07 00 00 00 00       $  ANS006:7C9 03 22 67 07 00 00 00 00
  $  REQ007:7C1 03 22 67 08 00 00 00 00       $  ANS007:7C9 03 22 67 08 00 00 00 00
  $  REQ008:7C1 03 22 67 09 00 00 00 00       $  ANS008:7C9 03 22 67 09 00 00 00 00
  $  REQ009:7C1 03 22 67 0A 00 00 00 00       $  ANS009:7C9 03 22 67 0A 00 00 00 00
  $  REQ010:7C1 03 22 67 0B 00 00 00 00       $  ANS010:7C9 03 22 67 0B 00 00 00 00
  $  REQ011:7C1 03 22 67 0C 00 00 00 00       $  ANS011:7C9 03 22 67 0C 00 00 00 00
  $  REQ012:7C1 03 22 67 0D 00 00 00 00       $  ANS012:7C9 03 22 67 0D 00 00 00 00
  $  REQ013:7C1 03 22 67 0E 00 00 00 00       $  ANS013:7C9 03 22 67 0E 00 00 00 00
  $  REQ014:7C1 03 22 67 10 00 00 00 00       $  ANS014:7C9 03 22 67 10 00 00 00 00
  $  REQ015:7C1 03 22 67 00 00 00 00 00       $  ANS015:7C9 03 22 67 00 00 00 00 00
  $  REQ016:7C1 03 22 67 01 00 00 00 00       $  ANS016:7C9 03 22 67 01 00 00 00 00
  $  REQ017:7C1 03 22 67 12 00 00 00 00       $  ANS017:7C9 03 22 67 12 00 00 00 00

  $  000.ECU(电子控制器)供电电压               $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.车速                                  $    $  km/h     $    $  ANS001.BYTE004  $  y=INT((x1*256+x2)*0.05625);
  $  002.媒体音量                              $    $  Step     $    $  ANS002.BYTE004  $  y=x;
  $  003.蓝牙名称                              $    $  /        $    $  ANS003.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $  004.蓝牙MAC码                             $    $  /        $    $  ANS004.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $  005.当前选中音频源的音频播放总数          $    $  /        $    $  ANS005.BYTE004  $  y=SPRINTF([%x%x],x1,x2);
  $  006.LCD背光亮度值                         $    $  %        $    $  ANS006.BYTE004  $  y=x;
  $  007.收音机信号强度                        $    $  db       $    $  ANS007.BYTE004  $  y=x;
  $  008.上网状态                              $    $  /        $    $  ANS008.BYTE004  $  if(0x00==x)y=@01c3;else if(0x01==x)y=@01c4;else y=@0132;
  $  009.低音部梯级                            $    $  Step     $    $  ANS009.BYTE004  $  y=x-9;
  $  010.中音部梯级                            $    $  Step     $    $  ANS010.BYTE004  $  y=x-9;
  $  011.高音部梯级                            $    $  Step     $    $  ANS011.BYTE004  $  y=x-9;
  $  012.平衡器梯级                            $    $  Step     $    $  ANS012.BYTE004  $  y=x-9;
  $  013.衰减阶梯                              $    $  Step     $    $  ANS013.BYTE004  $  y=x-9;
  $  014.PKI写入状态                           $    $  /        $    $  ANS014.BYTE004  $  if(0x00==x)y=@0901;else if(0x01==x)y=@09de;else y=@0162;
  $  015.源模式                                $    $  Step     $    $  ANS015.BYTE004  $  switxh(x)0x00:y=@09df;0x01:y=@09e0;0x02:y=@01c6;0x03:y=@09e1;0x04:y=@09e2;0x05:y=@09e3;0x06:y=@09e4;0x07:y=@09e5;0x08:y=@09e6;0x09:y=@09e7;0xff:y=@0600;default:y=@0162;
  $  016.收音机频率                            $    $  KHz      $    $  ANS016.BYTE004  $  y=(x1<<16)+(x2<<8)+x3;
  $  017.MCU(驱动电机控制单元)软件版本号       $    $  /        $    $  ANS017.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7C1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
