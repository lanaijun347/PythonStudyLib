
    车型ID：097c

    模拟：协议模拟-->097c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E8

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 00 00 00 00 00 00       $!  ANS000:7E8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E0 03 19 02 09 00 00 00 00       $#  ANS000:7E8 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0d000000


  $#  01.读故障码库
  $#  REQ000:7E0 02 19 0A 00 00 00 00 00       $#  ANS000:7E8 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/0d000000


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

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 12 00 00 00 00       $%  ANS000:7E8 03 22 F1 12 00 00 00 00
  $%  REQ001:7E0 03 22 F1 80 00 00 00 00       $%  ANS001:7E8 03 22 F1 80 00 00 00 00
  $%  REQ002:7E0 03 22 F1 87 00 00 00 00       $%  ANS002:7E8 03 22 F1 87 00 00 00 00
  $%  REQ003:7E0 03 22 F1 8A 00 00 00 00       $%  ANS003:7E8 03 22 F1 8A 00 00 00 00
  $%  REQ004:7E0 03 22 F1 8B 00 00 00 00       $%  ANS004:7E8 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E0 03 22 F1 8C 00 00 00 00       $%  ANS005:7E8 03 22 F1 8C 00 00 00 00
  $%  REQ006:7E0 03 22 F1 90 00 00 00 00       $%  ANS006:7E8 03 22 F1 90 00 00 00 00
  $%  REQ007:7E0 03 22 F1 93 00 00 00 00       $%  ANS007:7E8 03 22 F1 93 00 00 00 00
  $%  REQ008:7E0 03 22 F1 95 00 00 00 00       $%  ANS008:7E8 03 22 F1 95 00 00 00 00
  $%  REQ009:7E0 03 22 F1 98 00 00 00 00       $%  ANS009:7E8 03 22 F1 98 00 00 00 00
  $%  REQ010:7E0 03 22 F1 99 00 00 00 00       $%  ANS010:7E8 03 22 F1 99 00 00 00 00
  $%  REQ011:7E0 03 22 F1 9D 00 00 00 00       $%  ANS011:7E8 03 22 F1 9D 00 00 00 00
  $%  REQ012:7E0 03 22 F1 96 00 00 00 00       $%  ANS012:7E8 03 22 F1 96 00 00 00 00
  $%  REQ013:7E0 03 22 F1 82 00 00 00 00       $%  ANS013:7E8 03 22 F1 82 00 00 00 00

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
  $%  012:排放类型：                                   $%    $%  ANS012.BYTE004  $%  if(x==0x00)y=@0835;else if(x==0x01)y=@0836;else y=@0009;
  $%  013:标定软件版本号:                              $%    $%  ANS013.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

;  $  REQ000:7E0       $  ANS000:7E8
  $  REQ001:7E0 03 22 4B 0E 00 00 00 00       $  ANS001:7E8 03 22 4B 0E 00 00 00 00
  $  REQ002:7E0 03 22 4B 0F 00 00 00 00       $  ANS002:7E8 03 22 4B 0F 00 00 00 00
  $  REQ003:7E0 03 22 4B 11 00 00 00 00       $  ANS003:7E8 03 22 4B 11 00 00 00 00
  $  REQ004:7E0 03 22 4B 13 00 00 00 00       $  ANS004:7E8 03 22 4B 13 00 00 00 00
  $  REQ005:7E0 03 22 4B 15 00 00 00 00       $  ANS005:7E8 03 22 4B 15 00 00 00 00
  $  REQ006:7E0 03 22 4B 17 00 00 00 00       $  ANS006:7E8 03 22 4B 17 00 00 00 00
  $  REQ007:7E0 03 22 4B 18 00 00 00 00       $  ANS007:7E8 03 22 4B 18 00 00 00 00
  $  REQ008:7E0 03 22 4B 19 00 00 00 00       $  ANS008:7E8 03 22 4B 19 00 00 00 00
  $  REQ009:7E0 03 22 4B 1A 00 00 00 00       $  ANS009:7E8 03 22 4B 1A 00 00 00 00
  $  REQ010:7E0 03 22 4B 1C 00 00 00 00       $  ANS010:7E8 03 22 4B 1C 00 00 00 00
  $  REQ011:7E0 03 22 4B 1D 00 00 00 00       $  ANS011:7E8 03 22 4B 1D 00 00 00 00
  $  REQ012:7E0 03 22 4B 1E 00 00 00 00       $  ANS012:7E8 03 22 4B 1E 00 00 00 00
  $  REQ013:7E0 03 22 4B 1F 00 00 00 00       $  ANS013:7E8 03 22 4B 1F 00 00 00 00
  $  REQ014:7E0 03 22 4B 20 00 00 00 00       $  ANS014:7E8 03 22 4B 20 00 00 00 00
  $  REQ015:7E0 03 22 4B 21 00 00 00 00       $  ANS015:7E8 03 22 4B 21 00 00 00 00
  $  REQ016:7E0 03 22 4B 22 00 00 00 00       $  ANS016:7E8 03 22 4B 22 00 00 00 00
  $  REQ017:7E0 03 22 4B 23 00 00 00 00       $  ANS017:7E8 03 22 4B 23 00 00 00 00
  $  REQ018:7E0 03 22 4B 24 00 00 00 00       $  ANS018:7E8 03 22 4B 24 00 00 00 00
  $  REQ019:7E0 03 22 4B 25 00 00 00 00       $  ANS019:7E8 03 22 4B 25 00 00 00 00
  $  REQ020:7E0 03 22 4B 26 00 00 00 00       $  ANS020:7E8 03 22 4B 26 00 00 00 00
  $  REQ021:7E0 03 22 4B 27 00 00 00 00       $  ANS021:7E8 03 22 4B 27 00 00 00 00
  $  REQ022:7E0 03 22 4B 28 00 00 00 00       $  ANS022:7E8 03 22 4B 28 00 00 00 00
  $  REQ023:7E0 03 22 4B 29 00 00 00 00       $  ANS023:7E8 03 22 4B 29 00 00 00 00
  $  REQ024:7E0 03 22 4B 2A 00 00 00 00       $  ANS024:7E8 03 22 4B 2A 00 00 00 00
  $  REQ025:7E0 03 22 4B 2B 00 00 00 00       $  ANS025:7E8 03 22 4B 2B 00 00 00 00
  $  REQ026:7E0 03 22 4B 2C 00 00 00 00       $  ANS026:7E8 03 22 4B 2C 00 00 00 00
  $  REQ027:7E0 03 22 4B 2D 00 00 00 00       $  ANS027:7E8 03 22 4B 2D 00 00 00 00
  $  REQ028:7E0 03 22 4B 2E 00 00 00 00       $  ANS028:7E8 03 22 4B 2E 00 00 00 00
  $  REQ029:7E0 03 22 4B 35 00 00 00 00       $  ANS029:7E8 03 22 4B 35 00 00 00 00
  $  REQ030:7E0 03 22 4B 36 00 00 00 00       $  ANS030:7E8 03 22 4B 36 00 00 00 00
  $  REQ031:7E0 03 22 4B 37 00 00 00 00       $  ANS031:7E8 03 22 4B 37 00 00 00 00
  $  REQ032:7E0 03 22 4B 38 00 00 00 00       $  ANS032:7E8 03 22 4B 38 00 00 00 00
  $  REQ033:7E0 03 22 4B 39 00 00 00 00       $  ANS033:7E8 03 22 4B 39 00 00 00 00
  $  REQ034:7E0 03 22 4B 3A 00 00 00 00       $  ANS034:7E8 03 22 4B 3A 00 00 00 00
  $  REQ035:7E0 03 22 4B 3B 00 00 00 00       $  ANS035:7E8 03 22 4B 3B 00 00 00 00
  $  REQ036:7E0 03 22 4B 3C 00 00 00 00       $  ANS036:7E8 03 22 4B 3C 00 00 00 00
  $  REQ037:7E0 03 22 4B 3D 00 00 00 00       $  ANS037:7E8 03 22 4B 3D 00 00 00 00
  $  REQ038:7E0 03 22 4B 3E 00 00 00 00       $  ANS038:7E8 03 22 4B 3E 00 00 00 00
  $  REQ039:7E0 03 22 4B 3F 00 00 00 00       $  ANS039:7E8 03 22 4B 3F 00 00 00 00
  $  REQ040:7E0 03 22 4B 41 00 00 00 00       $  ANS040:7E8 03 22 4B 41 00 00 00 00

;  $  000.发动机转速                              $    $  rpm      $    $  ANS000.BYTE0-3  $  
;  $  001.电池电压                                $    $  V        $    $  ANS000.BYTE0-3  $  
;  $  002.进气歧管压力传感器信号电压              $    $  V        $    $  ANS000.BYTE0-3  $  
;  $  003.3#模组1#温度值                          $    $  degC     $    $  ANS000.BYTE0-3  $  
  $  004.6#模组1#温度值                          $    $  degC     $    $  ANS001.BYTE020  $  HEX(x1,x2,x3,x4);
  $  005.6#模组2#温度值                          $    $  degC     $    $  ANS001.BYTE024  $  HEX(x1,x2,x3,x4);
  $  006.7#模组1#温度值                          $    $  degC     $    $  ANS001.BYTE028  $  HEX(x1,x2,x3,x4);
  $  007.7#模组2#温度值                          $    $  degC     $    $  ANS002.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6);
  $  008.最大电芯电压的电芯号                    $    $  /        $    $  ANS003.BYTE004  $  HEX(x1,x2,x3,x4);
  $  009.VCU(整车控制器)充电允许                 $    $  /        $    $  ANS004.BYTE004  $  if(x==0x00)y=@0e61;else if(x==0x01)y=@0670;else if(x==0x02 || x==0x03)y=@0209;
  $  010.BMS(电池管理系统)状态                   $    $  /        $    $  ANS005.BYTE004  $  switxh(x)0x00:y=@00e8;0x01:y=@0318;0x02:y=@05cb;0x03:y=@0e62;0x04:y=@0e63;0x06:y=@03e3;0x07:y=@0e64;0x08:y=@09ab;0x09:y=@0e65;0x0a:y=@0e66;0x0b:y=@03db;0x0c:y=@0589;0x0d:y=@04a1;default:y=@0209;
  $  011.BMS(电池管理系统)充电故障等级           $    $  /        $    $  ANS006.BYTE004  $  switxh(x)0x00:y=@012f;0x01:y=@010f;0x02:y=@0129;0x03:y=@03d9;0x05:y=@0e6a;0x06:y=@0e6b;default:y=@0209;
  $  012.BMS(电池管理系统)放电回路预充状态       $    $  /        $    $  ANS007.BYTE004  $  switxh(x)0x00:y=@012f;0x01:y=@010f;0x02:y=@0129;0x03:y=@03d9;0x04:y=@095d;0x05:y=@0e51;0x06:y=@0e52;default:y=@0209;
  $  013.BMS(电池管理系统)充电回路预充状态       $    $  /        $    $  ANS008.BYTE004  $  switxh(x)0x00:y=@012f;0x01:y=@06af;0x02:y=@06b0;0x03:y=@03e6;0x04:y=@06b1;default:y=@0209;
  $  014.ECU(电子控制器)电源电压                 $    $  V        $    $  ANS009.BYTE004  $  y=x*0.1;
  $  015.1#模组1#温度值                          $    $  degC     $    $  ANS010.BYTE004  $  y=x*0.5-40;
  $  016.1#模组2#温度值                          $    $  degC     $    $  ANS010.BYTE005  $  y=x*0.5-40;
  $  017.2#模组1#温度值                          $    $  degC     $    $  ANS010.BYTE006  $  y=x*0.5-40;
  $  018.2#模组2#温度值                          $    $  degC     $    $  ANS010.BYTE007  $  y=x*0.5-40;
  $  019.3#模组1#温度值                          $    $  degC     $    $  ANS010.BYTE008  $  y=x*0.5-40;
  $  020.3#模组2#温度值                          $    $  degC     $    $  ANS010.BYTE009  $  y=x*0.5-40;
  $  021.4#模组1#温度值                          $    $  degC     $    $  ANS010.BYTE010  $  y=x*0.5-40;
  $  022.4#模组2#温度值                          $    $  degC     $    $  ANS010.BYTE011  $  y=x*0.5-40;
  $  023.5#模组1#温度值                          $    $  degC     $    $  ANS010.BYTE012  $  y=x*0.5-40;
  $  024.5#模组2#温度值                          $    $  degC     $    $  ANS010.BYTE013  $  y=x*0.5-40;
  $  025.6#模组1#温度值                          $    $  degC     $    $  ANS010.BYTE014  $  y=x*0.5-40;
  $  026.6#模组2#温度值                          $    $  degC     $    $  ANS010.BYTE015  $  y=x*0.5-40;
  $  027.7#模组1#温度值                          $    $  degC     $    $  ANS010.BYTE016  $  y=x*0.5-40;
  $  028.7#模组2#温度值                          $    $  degC     $    $  ANS010.BYTE017  $  y=x*0.5-40;
  $  029.最大电芯电压                            $    $  V        $    $  ANS011.BYTE004  $  y=(x1*256+x2)*0.001;
  $  030.最大电芯电压的电芯号                    $    $  /        $    $  ANS012.BYTE004  $  y=x;
  $  031.最小电芯电压                            $    $  V        $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.001;
  $  032.最小电芯电压的电芯号                    $    $  /        $    $  ANS014.BYTE004  $  y=x;
  $  033.电池包总电压                            $    $  V        $    $  ANS015.BYTE004  $  y=(x1*256+x2)*0.1;
  $  034.电池包总电流                            $    $  A        $    $  ANS016.BYTE004  $  y=(x1*256+x2)*0.1-500;
  $  035.电池包最高温度                          $    $  degC     $    $  ANS017.BYTE004  $  y=x*0.5-40;
  $  036.电池包最高温度的温度传感器号            $    $  /        $    $  ANS018.BYTE004  $  y=x;
  $  037.电池包最低温度                          $    $  degC     $    $  ANS019.BYTE004  $  y=x*0.5-40;
  $  038.电池包最低温度的温度传感器号            $    $  /        $    $  ANS020.BYTE004  $  y=x;
  $  039.绝缘电阻值                              $    $  Kohm     $    $  ANS021.BYTE004  $  y=x1*256+x2;
  $  040.绝缘监测状态                            $    $  /        $    $  ANS022.BYTE004  $  switxh(x)0x00:y=@0e67;0x01:y=@0e68;0x02:y=@0e69;default:y=@0209;
  $  041.整车高压互锁状态                        $    $  /        $    $  ANS023.BYTE004  $  switxh(x)0x00:y=@06b7;0x01:y=@06b8;default:y=@0209;
  $  042.主正继电器状态                          $    $  /        $    $  ANS024.BYTE004  $  if(0==((x>>0)&1) && 0==((x>>1)&1))y=@0001;else if(1==((x>>0)&1) && 0==((x>>1)&1))y=@0000;else if(0==((x>>0)&1) && 1==((x>>1)&1))y=@0e78;
  $  043.主负继电器状态                          $    $  /        $    $  ANS024.BYTE004  $  if(0==((x>>2)&1) && 0==((x>>3)&1))y=@0001;else if(1==((x>>2)&1) && 0==((x>>3)&1))y=@0000;else if(0==((x>>2)&1) && 1==((x>>3)&1))y=@068c;
  $  044.预充继电器状态                          $    $  /        $    $  ANS024.BYTE004  $  if(0==((x>>4)&1) && 0==((x>>5)&1))y=@0001;else if(1==((x>>4)&1) && 0==((x>>5)&1))y=@0000;
  $  045.充电继电器状态                          $    $  /        $    $  ANS024.BYTE004  $  if(0==((x>>6)&1) && 0==((x>>7)&1))y=@0001;else if(1==((x>>6)&1) && 0==((x>>7)&1))y=@0000;else if(0==((x>>6)&1) && 1==((x>>7)&1))y=@0e78;
  $  046.充电预充继电器状态                      $    $  /        $    $  ANS024.BYTE005  $  if(0==((x>>0)&1) && 0==((x>>1)&1))y=@0001;else if(1==((x>>0)&1) && 0==((x>>1)&1))y=@0000;
  $  047.充电机实际工作状态                      $    $  /        $    $  ANS025.BYTE004  $  switxh(x)0x00:y=@0209;0x01:y=@0e71;0x02:y=@0e72;0x03:y=@0b73;0x04:y=@03d6;0x05:y=@05e4;0x06:y=@0b74;0x07:y=@0b75;0x08:y=@0b76;0x09:y=@03d9;0x0A:y=@068b;0x0B:y=@0e73;0x0C:y=@0e74;
  $  048.充电机错误状态                          $    $  /        $    $  ANS026.BYTE004  $  switxh(x)0x00:y=@0481;0x01:y=@0e75;0x02:y=@0e76;0x03:y=@0e77;
  $  049.充电机输出电流                          $    $  A        $    $  ANS027.BYTE004  $  y=(x1*256+x2)*0.1;
  $  050.充电机输出电压                          $    $  V        $    $  ANS028.BYTE004  $  y=x1*256+x2;
  $  051.电池荷电状态                            $    $  %        $    $  ANS029.BYTE004  $  y=(x1*256+x2)*0.1;
  $  052.电池显示剩余电量                        $    $  %        $    $  ANS030.BYTE004  $  y=(x1*256+x2)*0.1;
  $  053.电池健康度                              $    $  %        $    $  ANS031.BYTE004  $  y=(x1*256+x2)*0.1;
  $  054.剩余能量                                $    $  Kwh      $    $  ANS032.BYTE004  $  y=(x1*256+x2)*0.1;
  $  055.允许的持续放电功率                      $    $  kW       $    $  ANS033.BYTE004  $  y=x;
  $  056.允许的峰值放电功率                      $    $  kW       $    $  ANS034.BYTE004  $  y=x;
  $  057.允许的持续充电功率                      $    $  kW       $    $  ANS035.BYTE004  $  y=x;
  $  058.允许的峰值充电功率                      $    $  kW       $    $  ANS036.BYTE004  $  y=x;
  $  059.电池单体最高容量                        $    $  Ah       $    $  ANS037.BYTE004  $  y=(x1*256+x2)*0.1;
  $  060.电池单体最低容量                        $    $  Ah       $    $  ANS038.BYTE004  $  y=(x1*256+x2)*0.1;
  $  061.空调对电池水泵请求的反馈                $    $  %        $    $  ANS039.BYTE004  $  y=x;
  $  062.充电枪CC状态                            $    $  /        $    $  ANS040.BYTE004  $  switxh(x)0x00:y=@01c3;0x01:y=@0240;0x02:y=@0e6c;0x03:y=@0e6d;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
