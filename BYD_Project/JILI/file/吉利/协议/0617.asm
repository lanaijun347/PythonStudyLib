
    车型ID：0617

    模拟：协议模拟-->0617

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~799

进入命令:

  $~  REQ000:791 02 10 01 00 00 00 00 00       $~  ANS000:799 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:791 02 3E 00 00 00 00 00 00       $!  ANS000:799 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:791 03 19 02 09 00 00 00 00       $#  ANS000:799 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/f7000000


  $#  01.读故障码库
  $#  REQ000:791 02 19 0A 00 00 00 00 00       $#  ANS000:799 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/f7000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:791 04 14 FF FF FF 00 00 00       $$  ANS000:799 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:791 03 22 F1 12 00 00 00 00       $%  ANS000:799 03 22 F1 12 00 00 00 00
  $%  REQ001:791 03 22 F1 80 00 00 00 00       $%  ANS001:799 03 22 F1 80 00 00 00 00
  $%  REQ002:791 03 22 F1 86 00 00 00 00       $%  ANS002:799 03 22 F1 86 00 00 00 00
  $%  REQ003:791 03 22 F1 87 00 00 00 00       $%  ANS003:799 03 22 F1 87 00 00 00 00
  $%  REQ004:791 03 22 F1 8A 00 00 00 00       $%  ANS004:799 03 22 F1 8A 00 00 00 00
  $%  REQ005:791 03 22 F1 8B 00 00 00 00       $%  ANS005:799 03 22 F1 8B 00 00 00 00
  $%  REQ006:791 03 22 F1 8C 00 00 00 00       $%  ANS006:799 03 22 F1 8C 00 00 00 00
  $%  REQ007:791 03 22 F1 90 00 00 00 00       $%  ANS007:799 03 22 F1 90 00 00 00 00
  $%  REQ008:791 03 22 F1 92 00 00 00 00       $%  ANS008:799 03 22 F1 92 00 00 00 00
  $%  REQ009:791 03 22 F1 93 00 00 00 00       $%  ANS009:799 03 22 F1 93 00 00 00 00
  $%  REQ010:791 03 22 F1 94 00 00 00 00       $%  ANS010:799 03 22 F1 94 00 00 00 00
  $%  REQ011:791 03 22 F1 95 00 00 00 00       $%  ANS011:799 03 22 F1 95 00 00 00 00
  $%  REQ012:791 03 22 F1 97 00 00 00 00       $%  ANS012:799 03 22 F1 97 00 00 00 00
  $%  REQ013:791 03 22 F1 98 00 00 00 00       $%  ANS013:799 03 22 F1 98 00 00 00 00
  $%  REQ014:791 03 22 F1 99 00 00 00 00       $%  ANS014:799 03 22 F1 99 00 00 00 00
  $%  REQ015:791 03 22 F1 9D 00 00 00 00       $%  ANS015:799 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:驱动层软件版本:                               $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:当前诊断会话模式:                             $%    $%  ANS002.BYTE004  $%  if(x==0x01) y=@000f;else if(x==0x02) y=@002f;else if(x==0x03) y=@0010;else y=@0009;
  $%  003:零件号:                                       $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:供应商代码:                                   $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:ECU(电子控制器)生产日期:                      $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  006:ECU(电子控制器)序列号:                        $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:车辆识别号(VIN码):                            $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  008:ECU(电子控制器)硬件号:                        $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)硬件版本号:                    $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)软件号:                        $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:ECU(电子控制器)软件版本号:                    $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:ECU(电子控制器)系统名称或发动机类型:          $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  013:ECU(电子控制器)刷写维修店代号或设备号:        $%    $%  ANS013.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  014:ECU(电子控制器)刷写日期:                      $%    $%  ANS014.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  015:ECU(电子控制器)安装日期:                      $%    $%  ANS015.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读数据流
  $  00.读数据流
  $  REQ000:791 03 22 DF 00 00 00 00 00       $  ANS000:799 03 22 DF 00 00 00 00 00
  $  REQ001:791 03 22 34 01 00 00 00 00       $  ANS001:799 03 22 34 01 00 00 00 00
  $  REQ002:791 03 22 34 02 00 00 00 00       $  ANS002:799 03 22 34 02 00 00 00 00
  $  REQ003:791 03 22 34 03 00 00 00 00       $  ANS003:799 03 22 34 03 00 00 00 00
  $  REQ004:791 03 22 34 04 00 00 00 00       $  ANS004:799 03 22 34 04 00 00 00 00
  $  REQ005:791 03 22 34 05 00 00 00 00       $  ANS005:799 03 22 34 05 00 00 00 00
  $  REQ006:791 03 22 34 06 00 00 00 00       $  ANS006:799 03 22 34 06 00 00 00 00
  $  REQ007:791 03 22 34 07 00 00 00 00       $  ANS007:799 03 22 34 07 00 00 00 00
  $  REQ008:791 03 22 34 08 00 00 00 00       $  ANS008:799 03 22 34 08 00 00 00 00
  $  REQ009:791 03 22 34 09 00 00 00 00       $  ANS009:799 03 22 34 09 00 00 00 00

  $  000.ECU(电子控制器) 供电电压       $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.产线模式                       $    $  /        $    $  ANS001.BYTE004  $  if(x==0x00) y=@0000;else y=@0001;
  $  002.ECU(电子控制器)温度            $    $  degC     $    $  ANS002.BYTE004  $  y=x1*0x100+x2;
  $  003.慢失校准角度                   $    $  deg      $    $  ANS003.BYTE004  $  if(x1<0x80) y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*57.2958/33554432;else y=((x1*0x1000000+x2*0x10000+x3*0x100+x4)-0xFFFFFFFF)*57.2958/33554432;
  $  004.快失校准角度                   $    $  deg      $    $  ANS004.BYTE004  $  if(x1<0x80) y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*57.2958/33554432;else y=(x1*0x1000000+x2*0x10000+x3*0x100+x4-0xFFFFFFFF)*57.2958/33554432;
  $  005.Radar 状态                     $    $  /        $    $  ANS005.BYTE004  $  if(x==0x00) y=@0000;else y=@0001;
  $  006.雷达水平角度偏差               $    $  /        $    $  ANS006.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*57.2958/16384;else y=(x1*0x100+x2-0x10000)*57.2958/16384;
  $  007.雷达垂直角度偏差               $    $  /        $    $  ANS007.BYTE004  $  if(x1<0x80) y=(x1*0x100+x2)*57.2958/16384;else y=(x1*0x100+x2-0x10000)*57.2958/16384;
  $  008.雷达校准反射板位置             $    $  /        $    $  ANS008.BYTE004  $  if(x==0x00) y=@002d;else if(x==0x01) y=@0028;else if(x==0x02) y=@0029;else if(x==0x03) y=@002a;else if(x==0x04) y=@002e;else y=@0001;
  $  009.工人操作                       $    $  /        $    $  ANS009.BYTE004  $  if(x==0x00) y=@0027;else if(x==0x01) y=@0028;else if(x==0x02) y=@0029;else if(x==0x03) y=@002a;else if(x==0x04) y=@002b;else if(x==0x05) y=@002c;else y=@0001;

  $)  01.校准垂直角度偏差的螺栓圈数和旋向
  $  01.校准垂直角度偏差的螺栓圈数和旋向
  $  REQ000:791 03 22 34 0A 00 00 00 00       $  ANS000:799 03 22 34 0A 00 00 00 00

  $  000.校准垂直角度偏差的螺栓旋向           $    $  /     $    $  ANS000.BYTE004  $  if(x1==0x00) y=@0024;else if(x1==0x01) y=@0025;else if(x1==0x02) y=@0026;else y=@0001;
  $  001.校准垂直角度偏差的螺栓旋转圈数       $    $  /     $    $  ANS000.BYTE004  $  y=x2*0.25;

  $)  02.校准水平角度偏差的螺栓圈数和旋向
  $  02.校准水平角度偏差的螺栓圈数和旋向
  $  REQ000:791 03 22 34 0B 00 00 00 00       $  ANS000:799 03 22 34 0B 00 00 00 00

  $  000.校准水平角度偏差的螺栓旋向           $    $  /     $    $  ANS000.BYTE004  $  if(x1==0x00) y=@0024;else if(x1==0x01) y=@0025;else if(x1==0x02) y=@0026;else y=@0001;
  $  001.校准水平角度偏差的螺栓旋转圈数       $    $  /     $    $  ANS000.BYTE004  $  y=x2*0.25;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:791 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
