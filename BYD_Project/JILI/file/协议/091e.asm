
    车型ID：091e

    模拟：协议模拟-->091e

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

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/95000000


  $#  01.读故障码库
  $#  REQ000:791 02 19 0A 00 00 00 00 00       $#  ANS000:799 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/95000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="0"/>
   </FUNCTION>
  <FUNCTION type="0" num="1">
     <param type="string" value="0"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:791 04 14 FF FF FF 00 00 00       $$  ANS000:799 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:791 03 22 F1 12 00 00 00 00       $%  ANS000:799 03 22 F1 12 00 00 00 00
  $%  REQ001:791 03 22 F1 80 00 00 00 00       $%  ANS001:799 03 22 F1 80 00 00 00 00
  $%  REQ002:791 03 22 F1 87 00 00 00 00       $%  ANS002:799 03 22 F1 87 00 00 00 00
  $%  REQ003:791 03 22 F1 8A 00 00 00 00       $%  ANS003:799 03 22 F1 8A 00 00 00 00
  $%  REQ004:791 03 22 F1 8B 00 00 00 00       $%  ANS004:799 03 22 F1 8B 00 00 00 00
  $%  REQ005:791 03 22 F1 8C 00 00 00 00       $%  ANS005:799 03 22 F1 8C 00 00 00 00
  $%  REQ006:791 03 22 F1 90 00 00 00 00       $%  ANS006:799 03 22 F1 90 00 00 00 00
  $%  REQ007:791 03 22 F1 93 00 00 00 00       $%  ANS007:799 03 22 F1 93 00 00 00 00
  $%  REQ008:791 03 22 F1 95 00 00 00 00       $%  ANS008:799 03 22 F1 95 00 00 00 00
  $%  REQ009:791 03 22 F1 98 00 00 00 00       $%  ANS009:799 03 22 F1 98 00 00 00 00
  $%  REQ010:791 03 22 F1 99 00 00 00 00       $%  ANS010:799 03 22 F1 99 00 00 00 00
  $%  REQ011:791 03 22 F1 9D 00 00 00 00       $%  ANS011:799 03 22 F1 9D 00 00 00 00
  $%  REQ012:791 03 22 F1 82 00 00 00 00       $%  ANS012:799 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:引导程序软件识别号:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:零件号:                                      $%    $%  ANS002.BYTE004  $%  0 ASCII
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)刷写日期:                     $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:ECU(电子控制器)安装日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:标定软件版本号:                              $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:791 03 22 DF 00 00 00 00 00       $  ANS000:799 03 22 DF 00 00 00 00 00
  $  REQ001:791 03 22 DF 01 00 00 00 00       $  ANS001:799 03 22 DF 01 00 00 00 00
  $  REQ002:791 03 22 34 01 00 00 00 00       $  ANS002:799 03 22 34 01 00 00 00 00
  $  REQ003:791 03 22 34 02 00 00 00 00       $  ANS003:799 03 22 34 02 00 00 00 00
  $  REQ004:791 03 22 34 03 00 00 00 00       $  ANS004:799 03 22 34 03 00 00 00 00
  $  REQ005:791 03 22 34 04 00 00 00 00       $  ANS005:799 03 22 34 04 00 00 00 00
  $  REQ006:791 03 22 34 06 00 00 00 00       $  ANS006:799 03 22 34 06 00 00 00 00
  $  REQ007:791 03 22 34 07 00 00 00 00       $  ANS007:799 03 22 34 07 00 00 00 00
  $  REQ008:791 03 22 34 08 00 00 00 00       $  ANS008:799 03 22 34 08 00 00 00 00
  $  REQ009:791 03 22 34 09 00 00 00 00       $  ANS009:799 03 22 34 09 00 00 00 00
  $  REQ010:791 03 22 34 0A 00 00 00 00       $  ANS010:799 03 22 34 0A 00 00 00 00
  $  REQ011:791 03 22 34 0B 00 00 00 00       $  ANS011:799 03 22 34 0B 00 00 00 00
  $  REQ012:791 03 22 34 0C 00 00 00 00       $  ANS012:799 03 22 34 0C 00 00 00 00
  $  REQ013:791 03 22 34 0D 00 00 00 00       $  ANS013:799 03 22 34 0D 00 00 00 00
  $  REQ014:791 03 22 34 0E 00 00 00 00       $  ANS014:799 03 22 34 0E 00 00 00 00
  $  REQ015:791 03 22 34 0F 00 00 00 00       $  ANS015:799 03 22 34 0F 00 00 00 00
  $  REQ016:791 03 22 34 25 00 00 00 00       $  ANS016:799 03 22 34 25 00 00 00 00
  $  REQ017:791 03 22 34 26 00 00 00 00       $  ANS017:799 03 22 34 26 00 00 00 00
  $  REQ018:791 03 22 34 27 00 00 00 00       $  ANS018:799 03 22 34 27 00 00 00 00
  $  REQ019:791 03 22 34 28 00 00 00 00       $  ANS019:799 03 22 34 28 00 00 00 00
  $  REQ020:791 03 22 34 29 00 00 00 00       $  ANS020:799 03 22 34 29 00 00 00 00
  $  REQ021:791 03 22 34 30 00 00 00 00       $  ANS021:799 03 22 34 30 00 00 00 00
  $  REQ022:791 03 22 34 31 00 00 00 00       $  ANS022:799 03 22 34 31 00 00 00 00
  $  REQ023:791 03 22 34 20 00 00 00 00       $  ANS023:799 03 22 34 20 00 00 00 00
  $  REQ024:791 03 22 34 21 00 00 00 00       $  ANS024:799 03 22 34 21 00 00 00 00
  $  REQ025:791 03 22 34 22 00 00 00 00       $  ANS025:799 03 22 34 22 00 00 00 00
  $  REQ026:791 03 22 34 23 00 00 00 00       $  ANS026:799 03 22 34 23 00 00 00 00

  $  000.ECU(电子控制器)电源电压                                $    $  V         $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.车速                                                   $    $  km/h      $    $  ANS001.BYTE004  $  y=INT((x1*0x100+x2)*0.05625);
  $  002.工厂模式                                               $    $  /         $    $  ANS002.BYTE004  $  if(x1==0x00)y=@0000;else if(x1==0x01)y=@0001;else y=@0e07;
  $  003.控制器温度                                             $    $  degC      $    $  ANS003.BYTE004  $  y=x-50;
  $  004.缓慢失调角                                             $    $  deg       $    $  ANS004.BYTE004  $  if(x1<0x80)y=(x1*256*256*256+x2*256*256+x3*256+x4)*57.2958/33554432;else y=(x1*256*256*256+x2*256*256+x3*256+x4-256*256*256*256)*57.2958/33554432;
  $  005.快速失调角                                             $    $  deg       $    $  ANS005.BYTE004  $  if(x1<0x80)y=(x1*256*256*256+x2*256*256+x3*256+x4)*57.2958/33554432;else y=(x1*256*256*256+x2*256*256+x3*256+x4-256*256*256*256)*57.2958/33554432;
  $  006.水平偏离角度                                           $    $  deg       $    $  ANS006.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*57.2958/16384;else y=(x1*0x100+x2-65536)*57.2958/16384;
  $  007.垂直偏离角度                                           $    $  deg       $    $  ANS007.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*57.2958/16384;else y=(x1*0x100+x2-65536)*57.2958/16384;
  $  008.反射器位置                                             $    $  /         $    $  ANS008.BYTE004  $  if(x1==0x0)y=@0e0a;else if(x1==0x1)y=@0e0b;else if(x1==0x2)y=@0e0c;else if(x1==0x3)y=@0e0d;else if(x1==0x4)y=@0e0e;else y=@0e07;
  $  009.工人操作                                               $    $  /         $    $  ANS009.BYTE004  $  if(x1==0x0)y=@0e0f;else if(x1==0x1)y=@0e0b;else if(x1==0x2)y=@0e0c;else if(x1==0x3)y=@0e0d;else if(x1==0x4)y=@0e10;else if(x1==0x5)y=@0e11;else y=@0e07;
  $  010.垂直调整螺栓方向                                       $    $  /         $    $  ANS010.BYTE004  $  switxh(x)0x00:y=@0024;0x01:y=@0e04;0x02:y=@0e05;default:y=@0162;
  $  011.垂直调整螺栓圈数                                       $    $  /         $    $  ANS010.BYTE005  $  y=x/4;
  $  012.水平调整螺栓方向                                       $    $  /         $    $  ANS011.BYTE004  $  switxh(x)0x00:y=@0024;0x01:y=@0e04;0x02:y=@0e05;default:y=@0162;
  $  013.水平调整螺栓圈数                                       $    $  /         $    $  ANS011.BYTE005  $  y=x/4;
  $  014.AEB(自动紧急制动)-部分制动针对移动物体启动次数         $    $  /         $    $  ANS012.BYTE004  $  y=x1*256+x2;
  $  015.紧急制动辅助启动次数                                   $    $  /         $    $  ANS013.BYTE004  $  y=x1*256+x2;
  $  016.自动紧急制动-全力制动针对静止物体的启动次数            $    $  /         $    $  ANS014.BYTE004  $  y=x1*256+x2;
  $  017.AEB(自动紧急制动)-全力制动针对移动物体的启动次数       $    $  /         $    $  ANS015.BYTE004  $  y=x1*256+x2;
  $  018.预报警针对静止物体的启动次数                           $    $  /         $    $  ANS016.BYTE004  $  y=x1*256+x2;
  $  019.预报警针对移动物体的启动次数                           $    $  /         $    $  ANS017.BYTE004  $  y=x1*256+x2;
  $  020.紧急报警针对静止物体的启动次数                         $    $  /         $    $  ANS018.BYTE004  $  y=x1*256+x2;
  $  021.紧急报警针对移动物体的启动次数                         $    $  /         $    $  ANS019.BYTE004  $  y=x1*256+x2;
  $  022.AEB(自动紧急制动)-部分制动针对静止物体的启动次数       $    $  /         $    $  ANS020.BYTE004  $  y=x1*256+x2;
  $  023.行人保护预报警的启动次数                               $    $  /         $    $  ANS021.BYTE004  $  y=x1*256+x2;
  $  024.行人保护AEB(自动紧急制动)的启动次数                    $    $  /         $    $  ANS022.BYTE004  $  y=x1*256+x2;
  $  025.雷达探头加热使能                                       $    $  /         $    $  ANS023.BYTE004  $  if(x1==0x0)y=@0e08;else if(x1==0x1)y=@0e09;else y=@0e07;
  $  026.雷达探头加热工作状态                                   $    $  /         $    $  ANS024.BYTE004  $  if(x1==0x00)y=@0000;else if(x1==0x01)y=@0001;else y=@0e07;
  $  027.ACC状态                                                $    $  /         $    $  ANS025.BYTE004  $  if(x1==0x00)y=@0000;else if(x1==0x01)y=@0001;else y=@0e07;
  $  028.加速度                                                 $    $  m/s^2     $    $  ANS026.BYTE004  $  y=(x1*256+x2)*0.0004882;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:791 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
