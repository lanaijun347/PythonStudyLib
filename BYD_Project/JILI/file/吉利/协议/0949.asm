
    车型ID：0949

    模拟：协议模拟-->0949

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~79A

进入命令:

  $~  REQ000:792 02 10 01 00 00 00 00 00       $~  ANS000:79A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:792 02 3E 00 00 00 00 00 00       $!  ANS000:79A 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:792 03 19 02 09 00 00 00 00       $#  ANS000:79A 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/21000000


  $#  01.读故障码库
  $#  REQ000:792 02 19 0A 00 00 00 00 00       $#  ANS000:79A 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/21000000


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

  $$  REQ000:792 04 14 FF FF FF 00 00 00       $$  ANS000:79A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:792 03 22 F1 12 00 00 00 00       $%  ANS000:79A 03 22 F1 12 00 00 00 00
  $%  REQ001:792 03 22 F1 80 00 00 00 00       $%  ANS001:79A 03 22 F1 80 00 00 00 00
  $%  REQ002:792 03 22 F1 87 00 00 00 00       $%  ANS002:79A 03 22 F1 87 00 00 00 00
  $%  REQ003:792 03 22 F1 8A 00 00 00 00       $%  ANS003:79A 03 22 F1 8A 00 00 00 00
  $%  REQ004:792 03 22 F1 8B 00 00 00 00       $%  ANS004:79A 03 22 F1 8B 00 00 00 00
  $%  REQ005:792 03 22 F1 8C 00 00 00 00       $%  ANS005:79A 03 22 F1 8C 00 00 00 00
  $%  REQ006:792 03 22 F1 90 00 00 00 00       $%  ANS006:79A 03 22 F1 90 00 00 00 00
  $%  REQ007:792 03 22 F1 93 00 00 00 00       $%  ANS007:79A 03 22 F1 93 00 00 00 00
  $%  REQ008:792 03 22 F1 95 00 00 00 00       $%  ANS008:79A 03 22 F1 95 00 00 00 00
  $%  REQ009:792 03 22 F1 98 00 00 00 00       $%  ANS009:79A 03 22 F1 98 00 00 00 00
  $%  REQ010:792 03 22 F1 99 00 00 00 00       $%  ANS010:79A 03 22 F1 99 00 00 00 00
  $%  REQ011:792 03 22 F1 9D 00 00 00 00       $%  ANS011:79A 03 22 F1 9D 00 00 00 00
  $%  REQ012:792 03 22 F1 82 00 00 00 00       $%  ANS012:79A 03 22 F1 82 00 00 00 00

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

  $  REQ000:792 03 22 6D 00 00 00 00 00       $  ANS000:79A 03 22 6D 00 00 00 00 00
  $  REQ001:792 03 22 6D 01 00 00 00 00       $  ANS001:79A 03 22 6D 01 00 00 00 00
  $  REQ002:792 03 22 6D 03 00 00 00 00       $  ANS002:79A 03 22 6D 03 00 00 00 00
  $  REQ003:792 03 22 6D 04 00 00 00 00       $  ANS003:79A 03 22 6D 04 00 00 00 00
  $  REQ004:792 03 22 6D 05 00 00 00 00       $  ANS004:79A 03 22 6D 05 00 00 00 00
  $  REQ005:792 03 22 6D 06 00 00 00 00       $  ANS005:79A 03 22 6D 06 00 00 00 00
  $  REQ006:792 03 22 6D 07 00 00 00 00       $  ANS006:79A 03 22 6D 07 00 00 00 00
  $  REQ007:792 03 22 6D 08 00 00 00 00       $  ANS007:79A 03 22 6D 08 00 00 00 00
  $  REQ008:792 03 22 6D 09 00 00 00 00       $  ANS008:79A 03 22 6D 09 00 00 00 00
  $  REQ009:792 03 22 6D 0A 00 00 00 00       $  ANS009:79A 03 22 6D 0A 00 00 00 00
  $  REQ010:792 03 22 6D 0B 00 00 00 00       $  ANS010:79A 03 22 6D 0B 00 00 00 00
  $  REQ011:792 03 22 6D 0C 00 00 00 00       $  ANS011:79A 03 22 6D 0C 00 00 00 00
  $  REQ012:792 03 22 6D 0D 00 00 00 00       $  ANS012:79A 03 22 6D 0D 00 00 00 00
  $  REQ013:792 03 22 6D 0E 00 00 00 00       $  ANS013:79A 03 22 6D 0E 00 00 00 00
  $  REQ014:792 03 22 6D 0F 00 00 00 00       $  ANS014:79A 03 22 6D 0F 00 00 00 00
  $  REQ015:792 03 22 6D 16 00 00 00 00       $  ANS015:79A 03 22 6D 16 00 00 00 00
  $  REQ016:792 03 22 6D 19 00 00 00 00       $  ANS016:79A 03 22 6D 19 00 00 00 00
  $  REQ017:792 03 22 01 12 00 00 00 00       $  ANS017:79A 03 22 01 12 00 00 00 00
  $  REQ018:792 03 22 6D 17 00 00 00 00       $  ANS018:79A 03 22 6D 17 00 00 00 00
  $  REQ019:792 03 22 6D 18 00 00 00 00       $  ANS019:79A 03 22 6D 18 00 00 00 00
  $  REQ020:792 03 22 6D E0 00 00 00 00       $  ANS020:79A 03 22 6D E0 00 00 00 00

  $  000.实际方向盘转向角                            $    $  deg       $    $  ANS000.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.1;else y=((x1*0x100+x2)-0x10000)*0.1;
  $  001.方向盘转角速度                              $    $  deg/s     $    $  ANS001.BYTE004  $  y=x*4;
  $  002.TCM(转向柱组合开关)指示后洗涤器状态         $    $  /         $    $  ANS002.BYTE004  $  if(x==0x00) y=@00e3; else if(x==0x01) y=@00e2;else y=@0162;
  $  003.TCM(转向柱组合开关)指示前洗涤器状态         $    $  /         $    $  ANS003.BYTE004  $  if(x==0x00) y=@00e3; else if(x==0x01) y=@00e2;else y=@0162;
  $  004.TCM(转向柱组合开关)指示近光灯开关状态       $    $  /         $    $  ANS004.BYTE004  $  if(x==0x00) y=@00e3; else if(x==0x01) y=@1105;else y=@0162;
  $  005.TCM(转向柱组合开关)指示远光灯开关状态       $    $  /         $    $  ANS005.BYTE004  $  if(x==0x00) y=@00e3; else if(x==0x01) y=@1105;else y=@0162;
  $  006.雨刮间歇灵敏度                              $    $  /         $    $  ANS006.BYTE004  $  if(x==0x00) y=@1103; else if(x==0x01) y=@0791; else if(x==0x02) y=@0792; else if(x==0x03) y=@0793; else if(x==0x04) y=@0944;else y=@0162;
  $  007.TCM(转向柱组合开关)提示前雨刮功能模式       $    $  /         $    $  ANS007.BYTE004  $  if(x==0x00) y=@0000; else if(x==0x01) y=@00f3; else if(x==0x02) y=@00f4; else if(x==0x03) y=@1104; else if(x==0x04) y=@00f6; else if(x==0xFF) y=@001b;else y=@0209;
  $  008.TCM(转向柱组合开关)提示超车灯开关状态       $    $  /         $    $  ANS008.BYTE004  $  if(x==0x00) y=@00e3; else if(x==0x01) y=@1105;else y=@0162;
  $  009.TCM(转向柱组合开关)指示转向灯开关状态       $    $  /         $    $  ANS009.BYTE004  $  if(x==0x00) y=@00e8; else if(x==0x01) y=@00e9; else if(x==0x02) y=@00ea; else if(x==0xFF) y=@001b;else y=@0162;
  $  010.指示后雨刮模式                              $    $  /         $    $  ANS010.BYTE004  $  if(x==0x00) y=@00e3; else if(x==0x01) y=@00e6; else if(x==0x02) y=@00e7; else if(x==0xFF) y=@001b;else y=@0162;
  $  011.指示前雾灯开关状态                          $    $  /         $    $  ANS011.BYTE004  $  if(x==0x00) y=@00e3; else if(x==0x01) y=@1105;else y=@0162;
  $  012.提示后雾灯开关状态                          $    $  /         $    $  ANS012.BYTE004  $  if(x==0x00) y=@00e3; else if(x==0x01) y=@1105;else y=@0162;
  $  013.提示位置灯开关状态                          $    $  /         $    $  ANS013.BYTE004  $  if(x==0x00) y=@00e3; else if(x==0x01) y=@1105;else y=@0162;
  $  014.提示自动灯开关状态                          $    $  /         $    $  ANS014.BYTE004  $  if(x==0x00) y=@00e3; else if(x==0x01) y=@1105;else y=@0162;
  $  015.仪表页面切换                                $    $  /         $    $  ANS015.BYTE004  $  if(x==0x00) y=@0000; else if(x==0x01) y=@0101; else if(x==0x02) y=@0162; else if(x==0x03) y=@0132;else y=@0162;
  $  016.网络消息指示状态                            $    $  /         $    $  ANS016.BYTE004  $  if(x==0x00) y=@00f8; else if(x==0x01) y=@00f7;else y=@0162;
  $  017.方向盘转角标定状态                          $    $  /         $    $  ANS017.BYTE004  $  if(x==0x00) y=@00e5; else if(x==0x01) y=@1106;else y=@0162;
  $  018.唤醒状态                                    $    $  /         $    $  ANS018.BYTE004  $  if(x==0x00) y=@00fd; else if(x==0x01) y=@00fc;else y=@0162;
  $  019.唤醒原因                                    $    $  /         $    $  ANS019.BYTE004  $  if(x==0x01) y=@00fe; else if(x==0x02) y=@0b19;else if(x==0xAA) y=@0100;else y=@0162;
  $  020.IO(输入输出)控制状态                        $    $  /         $    $  ANS020.BYTE004  $  if(x==0x00) y=@00f9; else if(x==0x01) y=@00fa;else if(x==0x10) y=@00fb;else y=@0162;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:792 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:792 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
