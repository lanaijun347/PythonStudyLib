
    车型ID：0643

    模拟：协议模拟-->0643

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

  $*$*DTC/c3000000


  $#  01.读故障码库
  $#  REQ000:791 02 19 0A 00 00 00 00 00       $#  ANS000:799 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/c3000000


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
  $%  REQ001:791 03 22 F1 87 00 00 00 00       $%  ANS001:799 03 22 F1 87 00 00 00 00
  $%  REQ002:791 03 22 F1 8A 00 00 00 00       $%  ANS002:799 03 22 F1 8A 00 00 00 00
  $%  REQ003:791 03 22 F1 90 00 00 00 00       $%  ANS003:799 03 22 F1 90 00 00 00 00
  $%  REQ004:791 03 22 F1 93 00 00 00 00       $%  ANS004:799 03 22 F1 93 00 00 00 00
  $%  REQ005:791 03 22 F1 95 00 00 00 00       $%  ANS005:799 03 22 F1 95 00 00 00 00
  $%  REQ006:791 03 22 F1 9D 00 00 00 00       $%  ANS006:799 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:供应商代号:                      $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:车辆识别号(VIN码):               $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:ECU(电子控制器)硬件版本号:       $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  005:ECU(电子控制器)软件版本号:       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:ECU(电子控制器)安装日期:         $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.动态数据流
  $  00.动态数据流
  $  REQ000:791 03 22 34 00 00 00 00 00       $  ANS000:799 03 22 34 00 00 00 00 00
  $  REQ001:791 03 22 34 01 00 00 00 00       $  ANS001:799 03 22 34 01 00 00 00 00
  $  REQ002:791 03 22 34 02 00 00 00 00       $  ANS002:799 03 22 34 02 00 00 00 00
  $  REQ003:791 03 22 34 03 00 00 00 00       $  ANS003:799 03 22 34 03 00 00 00 00
  $  REQ004:791 03 22 34 04 00 00 00 00       $  ANS004:799 03 22 34 04 00 00 00 00
  $  REQ005:791 03 22 34 06 00 00 00 00       $  ANS005:799 03 22 34 06 00 00 00 00
  $  REQ006:791 03 22 34 07 00 00 00 00       $  ANS006:799 03 22 34 07 00 00 00 00
  $  REQ007:791 03 22 DF 00 00 00 00 00       $  ANS007:799 03 22 DF 00 00 00 00 00

  $  000.雷达坐标系X轴偏差                            $    $  m        $    $  ANS000.BYTE004  $  if(x1>0x80) y=(x1*0x100+x2-65536)/128.00; else y=(x1*0x100+x2)/128.00;
  $  001.雷达坐标系Y轴偏差                            $    $  m        $    $  ANS000.BYTE004  $  if(x3>0x80) y=(x3*0x100+x4-65536)/128.00; else y=(x3*0x100+x4)/128.00;
  $  002.雷达坐标系Z轴偏差                            $    $  m        $    $  ANS000.BYTE004  $  if(x5>0x80) y=(x5*0x100+x6-65536)/128.00; else y=(x5*0x100+x6)/128.00;
  $  003.雷达安装位置X轴                              $    $  m        $    $  ANS000.BYTE004  $  if(x7>0x80) y=(x7*0x100+x8-65536)/128.00; else y=(x7*0x100+x8)/128.00;
  $  004.雷达安装位置Y轴                              $    $  m        $    $  ANS000.BYTE004  $  if(x9>0x80) y=(x9*0x100+x10-65536)/128.00; else y=(x9*0x100+x10)/128.00;
  $  005.雷达安装位置Z轴                              $    $  m        $    $  ANS000.BYTE004  $  if(x11>0x80) y=(x11*0x100+x12-65536)/128.00; else y=(x11*0x100+x12)/128.00;
  $  006.轴距                                         $    $  m        $    $  ANS000.BYTE004  $  if(x13>0x80) y=(x13*0x100+x14-65536)/2048.00; else y=(x13*0x100+x14)/2048.00;
  $  007.轮距                                         $    $  m        $    $  ANS000.BYTE004  $  if(x15>0x80) y=(x15*0x100+x16-65536)/2048.00; else y=(x15*0x100+x16)/2048.00;
  $  008.车宽                                         $    $  m        $    $  ANS000.BYTE004  $  if(x17>0x80) y=(x17*0x100+x18-65536)/128.00; else y=(x17*0x100+x18)/128.00;
  $  009.方向盘转向角度数到转向轮转角的转化系数       $    $  /        $    $  ANS000.BYTE004  $  y=(x21*0x100+x22)/2048.00;
  $  010.车辆特征车速                                 $    $  /        $    $  ANS000.BYTE004  $  if(x23>0x80) y=(x23*0x100+x24-65536)/256.00; else y=(x23*0x100+x24)/256.00;
  $  011.传感器接插件朝向                             $    $  /        $    $  ANS000.BYTE004  $  y=x25;
  $  012.工厂模式                                     $    $  /        $    $  ANS001.BYTE004  $  if(x==0x00) y=@01e6;else y=@01e7;
  $  013.控制器内部温度                               $    $  degC     $    $  ANS002.BYTE004  $  if(x1<0x80) y=x1*0x100+x2;else y=x1*0x100+x2-65536;
  $  014.缓慢失调角                                   $    $  deg      $    $  ANS003.BYTE004  $  if(x1<0x80) y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*57.2958/33554432;else y=(x1*0x1000000+x2*0x10000+x3*0x100+x4-4294967296)*57.2958/33554432;
  $  015.快速失调角                                   $    $  deg      $    $  ANS004.BYTE004  $  if(x1<0x80) y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*57.2958/33554432;else y=(x1*0x1000000+x2*0x10000+x3*0x100+x4-4294967296)*57.2958/33554432;
  $  016.水平偏离角度                                 $    $  deg      $    $  ANS005.BYTE004  $  if(x1>0x80) y=(x1*0x100+x2-65536)*57.2958/16384; else y=(x1*0x100+x2)*57.2958/16384;
  $  017.垂直偏离角度                                 $    $  deg      $    $  ANS006.BYTE004  $  if(x1>0x80) y=(x1*0x100+x2-65536)*57.2958/16384; else y=(x1*0x100+x2)*57.2958/16384;
  $  018.ECU(电子控制器)供电电压                      $    $  V        $    $  ANS007.BYTE004  $  y=x*0.1;

  $)  01.读ECU(电子控制器)功能配置
  $  01.读ECU(电子控制器)功能配置
  $  REQ000:791 03 22 F1 01 00 00 00 00       $  ANS000:799 03 22 F1 01 00 00 00 00

  $  000.制动液预增压                       $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>0)&1)) y=@001c;else y=@001d;
  $  001.液压制动辅助                       $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>1)&1)) y=@001c;else y=@001d;
  $  002.预报警                             $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>2)&1)) y=@001c;else y=@001d;
  $  003.短促制动警告                       $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>3)&1)) y=@001c;else y=@001d;
  $  004.潜在危险报警                       $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>4)&1)) y=@001c;else y=@001d;
  $  005.紧急制动辅助                       $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>5)&1)) y=@001c;else y=@001d;
  $  006.自动紧急制动_部分制动 标准型       $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>6)&1)) y=@001c;else y=@001d;
  $  007.自动紧急制动_部分制动 扩展型       $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>7)&1)) y=@001c;else y=@001d;
  $  008.自动紧急制动-全力制动              $    $  /     $    $  ANS000.BYTE004  $  if(((x2>>0)&1)) y=@001c;else y=@001d;
  $  009.发动机类型                         $    $  /     $    $  ANS000.BYTE004  $  if((x3&(0x0f))==0x04) y=@01e8;else if((x3&(0x0f))==0x05) y=@01e9;else y=@0009;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:791 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
