
    车型ID：0632

    模拟：协议模拟-->0632

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~79D

进入命令:

  $~  REQ000:795 02 10 01 00 00 00 00 00       $~  ANS000:79D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:795 02 3E 00 00 00 00 00 00       $!  ANS000:79D 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:795 03 19 02 09 00 00 00 00       $#  ANS000:79D 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/d2000000


  $#  01.读故障码库
  $#  REQ000:795 02 19 0A 00 00 00 00 00       $#  ANS000:79D 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/d2000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:795 04 14 FF FF FF 00 00 00       $$  ANS000:79D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:795 03 22 F1 12 00 00 00 00       $%  ANS000:79D 03 22 F1 12 00 00 00 00
  $%  REQ001:795 03 22 F1 87 00 00 00 00       $%  ANS001:79D 03 22 F1 87 00 00 00 00
  $%  REQ002:795 03 22 F1 8A 00 00 00 00       $%  ANS002:79D 03 22 F1 8A 00 00 00 00
  $%  REQ003:795 03 22 F1 8B 00 00 00 00       $%  ANS003:79D 03 22 F1 8B 00 00 00 00
  $%  REQ004:795 03 22 F1 8C 00 00 00 00       $%  ANS004:79D 03 22 F1 8C 00 00 00 00
  $%  REQ005:795 03 22 F1 90 00 00 00 00       $%  ANS005:79D 03 22 F1 90 00 00 00 00
  $%  REQ006:795 03 22 F1 92 00 00 00 00       $%  ANS006:79D 03 22 F1 92 00 00 00 00
  $%  REQ007:795 03 22 F1 93 00 00 00 00       $%  ANS007:79D 03 22 F1 93 00 00 00 00
  $%  REQ008:795 03 22 F1 94 00 00 00 00       $%  ANS008:79D 03 22 F1 94 00 00 00 00
  $%  REQ009:795 03 22 F1 95 00 00 00 00       $%  ANS009:79D 03 22 F1 95 00 00 00 00
  $%  REQ010:795 03 22 F1 97 00 00 00 00       $%  ANS010:79D 03 22 F1 97 00 00 00 00
  $%  REQ011:795 03 22 F1 98 00 00 00 00       $%  ANS011:79D 03 22 F1 98 00 00 00 00
  $%  REQ012:795 03 22 F1 99 00 00 00 00       $%  ANS012:79D 03 22 F1 99 00 00 00 00
  $%  REQ013:795 03 22 F1 9D 00 00 00 00       $%  ANS013:79D 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                                  $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:OEM(原厂设备制造商)零件号:                 $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:系统供应商识别码:                          $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:ECU(电子控制器)生产日期:                   $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:ECU(电子控制器)序列号:                     $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  005:VIN码:                                     $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:系统供应商ECU(电子控制器)硬件号码:         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:系统供应商ECU(电子控制器)硬件版本号:       $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:系统供应商ECU(电子控制器)软件号码:         $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:系统供应商ECU(电子控制器)软件版本号:       $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:系统名称:                                  $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  011:维修商代码或Tester序列号:                  $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  012:编程/配置日期:                             $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  013:ECU(电子控制器)安装日期数据识别码:         $%    $%  ANS013.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读数据流
  $  00.读数据流
  $  REQ000:795 03 22 5C 20 00 00 00 00       $  ANS000:79D 03 22 5C 20 00 00 00 00
  $  REQ001:795 03 22 5C 21 00 00 00 00       $  ANS001:79D 03 22 5C 21 00 00 00 00
  $  REQ002:795 03 22 5C 22 00 00 00 00       $  ANS002:79D 03 22 5C 22 00 00 00 00
  $  REQ003:795 03 22 5C 23 00 00 00 00       $  ANS003:79D 03 22 5C 23 00 00 00 00
  $  REQ004:795 03 22 5C 24 00 00 00 00       $  ANS004:79D 03 22 5C 24 00 00 00 00
  $  REQ005:795 03 22 5C 25 00 00 00 00       $  ANS005:79D 03 22 5C 25 00 00 00 00
  $  REQ006:795 03 22 5C 26 00 00 00 00       $  ANS006:79D 03 22 5C 26 00 00 00 00
  $  REQ007:795 03 22 5C 27 00 00 00 00       $  ANS007:79D 03 22 5C 27 00 00 00 00
  $  REQ008:795 03 22 5C 28 00 00 00 00       $  ANS008:79D 03 22 5C 28 00 00 00 00
  $  REQ009:795 03 22 5C 29 00 00 00 00       $  ANS009:79D 03 22 5C 29 00 00 00 00
  $  REQ010:795 03 22 5C 00 00 00 00 00       $  ANS010:79D 03 22 5C 00 00 00 00 00
  $  REQ011:795 03 22 5C 30 00 00 00 00       $  ANS011:79D 03 22 5C 30 00 00 00 00
  $  REQ012:795 03 22 5C 31 00 00 00 00       $  ANS012:79D 03 22 5C 31 00 00 00 00
  $  REQ013:795 03 22 5C 32 00 00 00 00       $  ANS013:79D 03 22 5C 32 00 00 00 00
  $  REQ014:795 03 22 5C 0A 00 00 00 00       $  ANS014:79D 03 22 5C 0A 00 00 00 00
  $  REQ015:795 03 22 5C 0D 00 00 00 00       $  ANS015:79D 03 22 5C 0D 00 00 00 00
  $  REQ016:795 03 22 5C 14 00 00 00 00       $  ANS016:79D 03 22 5C 14 00 00 00 00
  $  REQ017:795 03 22 5C B0 00 00 00 00       $  ANS017:79D 03 22 5C B0 00 00 00 00
  $  REQ018:795 03 22 5C B1 00 00 00 00       $  ANS018:79D 03 22 5C B1 00 00 00 00
  $  REQ019:795 03 22 5C B3 00 00 00 00       $  ANS019:79D 03 22 5C B3 00 00 00 00

  $  000.供应商ECU(电子控制器)零件号           $    $  /     $    $  ANS000.BYTE004  $  HEX(x1,x2,x3,x4);
  $  001.供应商ECU(电子控制器)生产日期         $    $  /     $    $  ANS001.BYTE004  $  HEX(x1,x2,x3);
  $  002.供应商ECU(电子控制器)序列号           $    $  /     $    $  ANS002.BYTE004  $  HEX(x1,x2,x3);
  $  003.供应商ECU(电子控制器)硬件零件号       $    $  /     $    $  ANS003.BYTE004  $  HEX(x1,x2,x3);
  $  004.供应商ECU(电子控制器)硬件版本号       $    $  /     $    $  ANS004.BYTE004  $  y=SPRINTF([%02x%c],x1,x2);
  $  005.供应商PCBA生产日期                    $    $  /     $    $  ANS005.BYTE004  $  HEX(x1,x2,x3);
  $  006.供应商PCBA序列号                      $    $  /     $    $  ANS006.BYTE004  $  HEX(x1,x2,x3);
  $  007.供应商ECU(电子控制器)软件零件号       $    $  /     $    $  ANS007.BYTE004  $  HEX(x1,x2,x3);
  $  008.供应商ECU(电子控制器)软件版本号       $    $  /     $    $  ANS008.BYTE004  $  HEX(x1,x2,x3,x4,x5);
  $  009.供应商ICT测试结果                     $    $  /     $    $  ANS009.BYTE004  $  if((x)==0x01) y=@01b3;else if((x)==0x02) y=@01b4;else if((x)==0xFF) y=@00d1;else y=@0033;
  $  010.电池电压                              $    $  V     $    $  ANS010.BYTE004  $  y=x/10.0+3;
  $  011.驾驶侧门把手开关状态                  $    $  /     $    $  ANS011.BYTE004  $  if((x&0x01)==0x01) y=@01b1;else y=@01b2;
  $  012.副驾驶侧门把手开关状态                $    $  /     $    $  ANS012.BYTE004  $  if((x&0x01)==0x01) y=@01b1;else y=@01b2;
  $  013.后备箱把手开关状态                    $    $  /     $    $  ANS013.BYTE004  $  HEX(x);
  $  014.后保险杠低频天线故障                  $    $  /     $    $  ANS014.BYTE004  $  HEX(x);
  $  015.内部低频天线3故障                     $    $  /     $    $  ANS015.BYTE004  $  HEX(x);
  $  016.读取学习状态                          $    $  /     $    $  ANS016.BYTE004  $  if(x==0) y=@0132; else if(x==1) y=@0294;else if(x==2) y=@0295;else if(x==3) y=@0296;else if(x==4) y=@0297;else if(x==5) y=@0298;else if(x==6) y=@0299;else if(x==7) y=@029a;else if(x==8) y=@029b;else if(x==9) y=@029c;else if(x==0x0a) y=@029d;else if(x==0x23) y=@029e;else y=@0220;
  $  017.SKC码                                 $    $  /     $    $  ANS017.BYTE004  $  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  018.SC码                                  $    $  /     $    $  ANS018.BYTE004  $  HEX(x1,x2,x3);
  $  019.车辆模式                              $    $  /     $    $  ANS019.BYTE004  $  if((x>0)&&(x<6)) y=string(0xD1,0x02,0x91,0x10+x);else y=@0033;

  $)  01.供应商EOL测试结果
  $  01.供应商EOL测试结果
  $  REQ000:795 03 22 5C 2A 00 00 00 00       $  ANS000:79D 03 22 5C 2A 00 00 00 00

  $  000.测试模式       $    $  /     $    $  ANS000.BYTE004  $  HEX(x1);
  $  001.测试次数       $    $  /     $    $  ANS000.BYTE004  $  HEX(x2);
  $  002.失败模块       $    $  /     $    $  ANS000.BYTE004  $  HEX(x3);
  $  003.失败步骤       $    $  /     $    $  ANS000.BYTE004  $  HEX(x4);

  $)  02.驾驶侧低频天线故障
  $  02.驾驶侧低频天线故障
  $  REQ000:795 03 22 5C 08 00 00 00 00       $  ANS000:79D 03 22 5C 08 00 00 00 00

  $  000.低边电流超限       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@01b0;else y=@010f;
  $  001.高边电流超限       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@01b0;else y=@010f;
  $  002.引脚电压超限       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@01b0;else y=@010f;
  $  003.反馈信号丢失       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@01b0;else y=@010f;
  $  004.AXN对地短路        $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@01b0;else y=@010f;

  $)  03.驾驶侧低频天线故障
  $  03.驾驶侧低频天线故障
  $  REQ000:795 03 22 5C 09 00 00 00 00       $  ANS000:79D 03 22 5C 09 00 00 00 00

  $  000.低边电流超限            $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@01b0;else y=@010f;
  $  001.高边电流超限            $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@01b0;else y=@010f;
  $  002.VSHS 引脚电压超限       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@01b0;else y=@010f;
  $  003.反馈信号丢失            $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@01b0;else y=@010f;
  $  004.AXN对地短路             $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@01b0;else y=@010f;

  $)  04.内部低频天线1故障
  $  04.内部低频天线1故障
  $  REQ000:795 03 22 5C 0B 00 00 00 00       $  ANS000:79D 03 22 5C 0B 00 00 00 00

  $  000.低边电流超限            $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@01b0;else y=@010f;
  $  001.高边电流超限            $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@01b0;else y=@010f;
  $  002.VSHS 引脚电压超限       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@01b0;else y=@010f;
  $  003.反馈信号丢失            $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@01b0;else y=@010f;
  $  004.AXN对地短路             $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@01b0;else y=@010f;

  $)  05.内部低频天线2故障
  $  05.内部低频天线2故障
  $  REQ000:795 03 22 5C 0C 00 00 00 00       $  ANS000:79D 03 22 5C 0C 00 00 00 00

  $  000.低边电流超限            $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@01b0;else y=@010f;
  $  001.高边电流超限            $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@01b0;else y=@010f;
  $  002.VSHS 引脚电压超限       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@01b0;else y=@010f;
  $  003.反馈信号丢失            $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@01b0;else y=@010f;
  $  004.AXN对地短路             $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@01b0;else y=@010f;

  $)  06.SSB按钮状态
  $  06.SSB按钮状态
  $  REQ000:795 03 22 5C 0E 00 00 00 00       $  ANS000:79D 03 22 5C 0E 00 00 00 00

  $  000.一路SSB电压       $    $  /     $    $  ANS000.BYTE004  $  y=(x1+(x2&0x03)*0x100)*204400/7856640;
  $  001.一路SSB状态       $    $  /     $    $  ANS000.BYTE004  $  if(((x2>>2)&0x03)== 0x00) y=@0001;else if(((x2>>2)&0x03)== 0x01) y=@0000;else if(((x2>>2)&0x03)== 0x02) y=@01b0;else y=@0018;
  $  002.二路SSB电压       $    $  /     $    $  ANS000.BYTE004  $  y=(x3+(x4&0x03)*0x100)*204400/7856640;
  $  003.二路SSB状态       $    $  /     $    $  ANS000.BYTE004  $  if(((x4>>2)&0x03)== 0x00) y=@0001;else if(((x4>>2)&0x03)== 0x01) y=@0000;else if(((x4>>2)&0x03)== 0x02) y=@01b0;else y=@0018;

  $)  07.IGN(点火)1高边输出状态
  $  07.IGN(点火)1高边输出状态
  $  REQ000:795 03 22 5C 0F 00 00 00 00       $  ANS000:79D 03 22 5C 0F 00 00 00 00

  $  000.高边输出状态           $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@0170;else y=@010e;
  $  001.高边输出诊断状态       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&0x03)== 0x00) y=@01ac;else if(((x>>1)&0x03)== 0x01) y=@01ad;else if(((x>>1)&0x03)== 0x02) y=@01ae;else y=@01af;

  $)  08.IGN(点火)2高边输出状态
  $  08.IGN(点火)2高边输出状态
  $  REQ000:795 03 22 5C 10 00 00 00 00       $  ANS000:79D 03 22 5C 10 00 00 00 00

  $  000.高边输出状态           $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@0191;else y=@0190;
  $  001.高边输出诊断状态       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&0x03)== 0x00) y=@01ac;else if(((x>>1)&0x03)== 0x01) y=@01ad;else if(((x>>1)&0x03)== 0x02) y=@01ae;else y=@01af;

  $)  09.Start高边输出状态
  $  09.Start高边输出状态
  $  REQ000:795 03 22 5C 11 00 00 00 00       $  ANS000:79D 03 22 5C 11 00 00 00 00

  $  000.高边输出状态           $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@0191;else y=@0190;
  $  001.高边输出诊断状态       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&0x03)== 0x00) y=@01ac;else if(((x>>1)&0x03)== 0x01) y=@01ad;else if(((x>>1)&0x03)== 0x02) y=@01ae;else y=@01af;

  $)  10.ACC高边输出状态
  $  10.ACC高边输出状态
  $  REQ000:795 03 22 5C 12 00 00 00 00       $  ANS000:79D 03 22 5C 12 00 00 00 00

  $  000.高边输出状态           $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@0191;else y=@0190;
  $  001.高边输出诊断状态       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&0x03)== 0x00) y=@01ac;else if(((x>>1)&0x03)== 0x01) y=@01ad;else if(((x>>1)&0x03)== 0x02) y=@01ae;else y=@01af;

  $)  11.读取PEPS(无钥匙进入一键式启动单元)学习状态
  $  11.读取PEPS(无钥匙进入一键式启动单元)学习状态
  $  REQ000:795 03 22 5C B9 00 00 00 00       $  ANS000:79D 03 22 5C B9 00 00 00 00

  $  000.PEPS(无钥匙进入一键式启动单元)学习状态       $    $  /     $    $  ANS000.BYTE004  $  HEX(x1);
  $  001.钥匙状态                                     $    $  /     $    $  ANS000.BYTE004  $  HEX(x2);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:795 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
