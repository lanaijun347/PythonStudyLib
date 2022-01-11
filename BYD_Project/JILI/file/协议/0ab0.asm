
    车型ID：0ab0

    模拟：协议模拟-->0ab0

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

  $*$*DTC/fd000000


  $#  01.读故障码库
  $#  REQ000:792 02 19 0A 00 00 00 00 00       $#  ANS000:79A 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fd000000


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
  $%  REQ002:792 03 22 F1 86 00 00 00 00       $%  ANS002:79A 03 22 F1 86 00 00 00 00
  $%  REQ003:792 03 22 F1 87 00 00 00 00       $%  ANS003:79A 03 22 F1 87 00 00 00 00
  $%  REQ004:792 03 22 F1 8A 00 00 00 00       $%  ANS004:79A 03 22 F1 8A 00 00 00 00
  $%  REQ005:792 03 22 F1 8B 00 00 00 00       $%  ANS005:79A 03 22 F1 8B 00 00 00 00
  $%  REQ006:792 03 22 F1 8C 00 00 00 00       $%  ANS006:79A 03 22 F1 8C 00 00 00 00
  $%  REQ007:792 03 22 F1 90 00 00 00 00       $%  ANS007:79A 03 22 F1 90 00 00 00 00
  $%  REQ008:792 03 22 F1 92 00 00 00 00       $%  ANS008:79A 03 22 F1 92 00 00 00 00
  $%  REQ009:792 03 22 F1 93 00 00 00 00       $%  ANS009:79A 03 22 F1 93 00 00 00 00
  $%  REQ010:792 03 22 F1 94 00 00 00 00       $%  ANS010:79A 03 22 F1 94 00 00 00 00
  $%  REQ011:792 03 22 F1 95 00 00 00 00       $%  ANS011:79A 03 22 F1 95 00 00 00 00
  $%  REQ012:792 03 22 F1 97 00 00 00 00       $%  ANS012:79A 03 22 F1 97 00 00 00 00
  $%  REQ013:792 03 22 F1 98 00 00 00 00       $%  ANS013:79A 03 22 F1 98 00 00 00 00
  $%  REQ014:792 03 22 F1 99 00 00 00 00       $%  ANS014:79A 03 22 F1 99 00 00 00 00
  $%  REQ015:792 03 22 F1 9D 00 00 00 00       $%  ANS015:79A 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:驱动层软件版本:                              $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:当前诊断会话模式:                            $%    $%  ANS002.BYTE004  $%  if(x==0x01) y=@000f;else if(x==0x02) y=@002f;else if(x==0x03) y=@0010;else if(x==0x04) y=@0102;else y=@0009;
  $%  003:零件号:                                      $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:供应商代码:                                  $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:ECU(电子控制器)生产日期:                     $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  006:ECU(电子控制器)序列号:                       $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:车辆识别号(VIN码):                           $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  008:ECU(电子控制器)硬件号:                       $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)硬件版本号:                   $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)软件号:                       $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:ECU(电子控制器)软件版本号:                   $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:ECU(电子控制器)系统名称或发动机类型:         $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  013:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS013.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  014:ECU(电子控制器)刷写日期:                     $%    $%  ANS014.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  015:ECU(电子控制器)安装日期:                     $%    $%  ANS015.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:792 03 22 01 10 00 00 00 00       $  ANS000:79A 03 22 01 10 00 00 00 00
  $  REQ001:792 03 22 01 11 00 00 00 00       $  ANS001:79A 03 22 01 11 00 00 00 00
  $  REQ002:792 03 22 01 12 00 00 00 00       $  ANS002:79A 03 22 01 12 00 00 00 00
  $  REQ003:792 03 22 01 13 00 00 00 00       $  ANS003:79A 03 22 01 13 00 00 00 00
  $  REQ004:792 03 22 01 14 00 00 00 00       $  ANS004:79A 03 22 01 14 00 00 00 00
  $  REQ005:792 03 22 01 15 00 00 00 00       $  ANS005:79A 03 22 01 15 00 00 00 00
  $  REQ006:792 03 22 01 16 00 00 00 00       $  ANS006:79A 03 22 01 16 00 00 00 00
  $  REQ007:792 03 22 01 17 00 00 00 00       $  ANS007:79A 03 22 01 17 00 00 00 00
  $  REQ008:792 03 22 01 18 00 00 00 00       $  ANS008:79A 03 22 01 18 00 00 00 00
  $  REQ009:792 03 22 01 19 00 00 00 00       $  ANS009:79A 03 22 01 19 00 00 00 00
  $  REQ010:792 03 22 01 20 00 00 00 00       $  ANS010:79A 03 22 01 20 00 00 00 00
  $  REQ011:792 03 22 01 21 00 00 00 00       $  ANS011:79A 03 22 01 21 00 00 00 00
  $  REQ012:792 03 22 01 22 00 00 00 00       $  ANS012:79A 03 22 01 22 00 00 00 00
  $  REQ013:792 03 22 01 23 00 00 00 00       $  ANS013:79A 03 22 01 23 00 00 00 00
  $  REQ014:792 03 22 01 24 00 00 00 00       $  ANS014:79A 03 22 01 24 00 00 00 00
  $  REQ015:792 03 22 01 25 00 00 00 00       $  ANS015:79A 03 22 01 25 00 00 00 00
  $  REQ016:792 03 22 01 26 00 00 00 00       $  ANS016:79A 03 22 01 26 00 00 00 00
  $  REQ017:792 03 22 01 27 00 00 00 00       $  ANS017:79A 03 22 01 27 00 00 00 00
  $  REQ018:792 03 22 01 28 00 00 00 00       $  ANS018:79A 03 22 01 28 00 00 00 00
  $  REQ019:792 03 22 01 29 00 00 00 00       $  ANS019:79A 03 22 01 29 00 00 00 00
  $  REQ020:792 03 22 FD 05 00 00 00 00       $  ANS020:79A 03 22 FD 05 00 00 00 00

  $  000.实际方向盘转向角                            $    $  deg       $    $  ANS000.BYTE004  $  if(x1>0x7f) y=(x1*256+x2-65536)*0.1;else y=(x1*0x100+x2)*0.1;
  $  001.方向盘转角速度                              $    $  deg/s     $    $  ANS001.BYTE004  $  y=4*x;
  $  002.方向盘 转角标定位                           $    $  /         $    $  ANS002.BYTE004  $  if(((x>>0)&1)) y=@00e4;else y=@00e5;
  $  003.TCM(转向柱组合开关)指示后洗涤器状态         $    $  /         $    $  ANS003.BYTE004  $  if(((x>>0)&1)) y=@00e2;else y=@00e3;
  $  004.TCM(转向柱组合开关)指示前洗涤器状态         $    $  /         $    $  ANS004.BYTE004  $  if(((x>>0)&1)) y=@00e2;else y=@00e3;
  $  005.TCM(转向柱组合开关)指示近光灯开关状态       $    $  /         $    $  ANS005.BYTE004  $  if(((x>>0)&1)) y=@0001;else y=@0000;
  $  006.TCM(转向柱组合开关)指示远光灯开关状态       $    $  /         $    $  ANS006.BYTE004  $  if(((x>>0)&1)) y=@0001;else y=@0000;
  $  007.雨刮间歇灵敏度                              $    $  /         $    $  ANS007.BYTE004  $  if((x&0x07)==0x00) y=@00eb;else if((x&0x07)==0x01) y=@00ec;else if((x&0x07)==0x02) y=@00ed;else if((x&0x07)==0x03) y=@00ee;else if((x&0x07)==0x04) y=@00ef;else if((x&0x07)==0x05) y=@00f0;else if((x&0x07)==0x06) y=@00f1;else y=@00f2;
  $  008.TCM(转向柱组合开关)提示前雨刮功能模式       $    $  /         $    $  ANS008.BYTE004  $  if((x&0x07)==0x00) y=@0000;else if((x&0x07)==0x01) y=@00f3;else if((x&0x07)==0x02) y=@00f4;else if((x&0x07)==0x03) y=@00f5;else if((x&0x07)==0x04) y=@00f6;else if((x&0x07)==0x07) y=@0094;else y=@0009;
  $  009.TCM(转向柱组合开关)提示超车灯开关状态       $    $  /         $    $  ANS009.BYTE004  $  if(((x>>0)&1)) y=@0001;else y=@0000;
  $  010.TCM(转向柱组合开关)指示转向灯开关状态       $    $  /         $    $  ANS010.BYTE004  $  if((x&0x03)==0x00) y=@00e8;else if((x&0x03)==0x01) y=@00e9;else if((x&0x03)==0x02) y=@00ea;else y=@0094;
  $  011.指示后雨刮模式                              $    $  /         $    $  ANS011.BYTE004  $  if((x&0x03)==0x00) y=@00e3;else if((x&0x03)==0x01) y=@00e6;else if((x&0x03)==0x02) y=@00e7;else y=@0094;
  $  012.指示前雾灯开关状态                          $    $  /         $    $  ANS012.BYTE004  $  if(((x>>0)&1)) y=@0001;else y=@0000;
  $  013.提示后雾灯开关状态                          $    $  /         $    $  ANS013.BYTE004  $  if(((x>>0)&1)) y=@0001;else y=@0000;
  $  014.提示位置灯开关状态                          $    $  /         $    $  ANS014.BYTE004  $  if(((x>>0)&1)) y=@0001;else y=@0000;
  $  015.提示自动灯开关状态                          $    $  /         $    $  ANS015.BYTE004  $  if(((x>>0)&1)) y=@0001;else y=@0000;
  $  016.仪表页面切换                                $    $  /         $    $  ANS016.BYTE004  $  if((x&0x03)==0x00) y=@00e3;else if((x&0x03)==0x01) y=@0101;else if((x&0x03)==0x02) y=@0009;else y=@0094;
  $  017.唤醒状态                                    $    $  /         $    $  ANS017.BYTE004  $  if(((x>>0)&1)) y=@00fc;else y=@00fd;
  $  018.唤醒原因                                    $    $  /         $    $  ANS018.BYTE004  $  if(x==0x01) y=@00fe;else if(x==0x02) y=@00ff;else if(x==0xaa) y=@0100;else y=@0009;
  $  019.网络消息指示状态                            $    $  /         $    $  ANS019.BYTE004  $  if(((x>>0)&1)) y=@00f7;else y=@00f8;
  $  020.IO(输入输出)控制                            $    $  /         $    $  ANS020.BYTE005  $  if(x==0X00) y=@00f9;else if(x==0x01) y=@00fa;else if(x==0x10)y=@00fb;else y=@0009;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:792 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
