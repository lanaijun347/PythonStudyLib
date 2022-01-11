
    车型ID：077f

    模拟：协议模拟-->077f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7B9

进入命令:

  $~  REQ000:7B1 02 10 01 00 00 00 00 00       $~  ANS000:7B9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7B1 02 3E 00 00 00 00 00 00       $!  ANS000:7B9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7B1 03 19 02 09 00 00 00 00       $#  ANS000:7B9 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/53000000


  $#  01.读故障码库
  $#  REQ000:7B1 02 19 0A 00 00 00 00 00       $#  ANS000:7B9 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/53000000


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

  $$  REQ000:7B1 04 14 FF FF FF 00 00 00       $$  ANS000:7B9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7B1 03 22 F1 12 00 00 00 00       $%  ANS000:7B9 03 22 F1 12 00 00 00 00
  $%  REQ001:7B1 03 22 F1 87 00 00 00 00       $%  ANS001:7B9 03 22 F1 87 00 00 00 00
  $%  REQ002:7B1 03 22 F1 89 00 00 00 00       $%  ANS002:7B9 03 22 F1 89 00 00 00 00
  $%  REQ003:7B1 03 22 F1 8A 00 00 00 00       $%  ANS003:7B9 03 22 F1 8A 00 00 00 00
  $%  REQ004:7B1 03 22 F1 8B 00 00 00 00       $%  ANS004:7B9 03 22 F1 8B 00 00 00 00
  $%  REQ005:7B1 03 22 F1 8C 00 00 00 00       $%  ANS005:7B9 03 22 F1 8C 00 00 00 00
  $%  REQ006:7B1 03 22 F1 90 00 00 00 00       $%  ANS006:7B9 03 22 F1 90 00 00 00 00
  $%  REQ007:7B1 03 22 F1 93 00 00 00 00       $%  ANS007:7B9 03 22 F1 93 00 00 00 00
  $%  REQ008:7B1 03 22 F1 95 00 00 00 00       $%  ANS008:7B9 03 22 F1 95 00 00 00 00
  $%  REQ009:7B1 03 22 F1 9D 00 00 00 00       $%  ANS009:7B9 03 22 F1 9D 00 00 00 00
  $%  REQ010:7B1 03 22 F1 97 00 00 00 00       $%  ANS010:7B9 03 22 F1 97 00 00 00 00
  $%  REQ011:7B1 03 22 F1 99 00 00 00 00       $%  ANS011:7B9 03 22 F1 99 00 00 00 00
  $%  REQ012:7B1 03 22 4B 02 00 00 00 00       $%  ANS012:7B9 03 22 4B 02 00 00 00 00
  $%  REQ013:7B1 03 22 F1 82 00 00 00 00       $%  ANS013:7B9 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                  $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                           $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                                $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                   $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                     $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                       $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                 $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                 $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:                   $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:ECU(电子控制器)系统名称或发动机类型:       $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  011:ECU(电子控制器)刷写日期:                   $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:电池包版本号:                              $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  013:标定软件版本号:                            $%    $%  ANS013.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7B1 03 22 4B 03 00 00 00 00       $  ANS000:7B9 03 22 4B 03 00 00 00 00
  $  REQ001:7B1 03 22 4B 04 00 00 00 00       $  ANS001:7B9 03 22 4B 04 00 00 00 00
  $  REQ002:7B1 03 22 4B 05 00 00 00 00       $  ANS002:7B9 03 22 4B 05 00 00 00 00
  $  REQ003:7B1 03 22 4B 07 00 00 00 00       $  ANS003:7B9 03 22 4B 07 00 00 00 00
  $  REQ004:7B1 03 22 4B 09 00 00 00 00       $  ANS004:7B9 03 22 4B 09 00 00 00 00
  $  REQ005:7B1 03 22 4B 0A 00 00 00 00       $  ANS005:7B9 03 22 4B 0A 00 00 00 00
  $  REQ006:7B1 03 22 4B 0B 00 00 00 00       $  ANS006:7B9 03 22 4B 0B 00 00 00 00
  $  REQ007:7B1 03 22 4B 0C 00 00 00 00       $  ANS007:7B9 03 22 4B 0C 00 00 00 00
  $  REQ008:7B1 03 22 4B 13 00 00 00 00       $  ANS008:7B9 03 22 4B 13 00 00 00 00
  $  REQ009:7B1 03 22 4B 15 00 00 00 00       $  ANS009:7B9 03 22 4B 15 00 00 00 00
  $  REQ010:7B1 03 22 4B 17 00 00 00 00       $  ANS010:7B9 03 22 4B 17 00 00 00 00
  $  REQ011:7B1 03 22 4B 18 00 00 00 00       $  ANS011:7B9 03 22 4B 18 00 00 00 00
  $  REQ012:7B1 03 22 4B 19 00 00 00 00       $  ANS012:7B9 03 22 4B 19 00 00 00 00
  $  REQ013:7B1 03 22 FD 00 00 00 00 00       $  ANS013:7B9 03 22 FD 00 00 00 00 00
  $  REQ014:7B1 03 22 4B 1C 00 00 00 00       $  ANS014:7B9 03 22 4B 1C 00 00 00 00
  $  REQ015:7B1 03 22 4B 1D 00 00 00 00       $  ANS015:7B9 03 22 4B 1D 00 00 00 00
  $  REQ016:7B1 03 22 4B 1E 00 00 00 00       $  ANS016:7B9 03 22 4B 1E 00 00 00 00
  $  REQ017:7B1 03 22 4B 1F 00 00 00 00       $  ANS017:7B9 03 22 4B 1F 00 00 00 00
  $  REQ018:7B1 03 22 4B 20 00 00 00 00       $  ANS018:7B9 03 22 4B 20 00 00 00 00
  $  REQ019:7B1 03 22 4B 21 00 00 00 00       $  ANS019:7B9 03 22 4B 21 00 00 00 00
  $  REQ020:7B1 03 22 4B 22 00 00 00 00       $  ANS020:7B9 03 22 4B 22 00 00 00 00
  $  REQ021:7B1 03 22 4B 23 00 00 00 00       $  ANS021:7B9 03 22 4B 23 00 00 00 00
  $  REQ022:7B1 03 22 4B 24 00 00 00 00       $  ANS022:7B9 03 22 4B 24 00 00 00 00
  $  REQ023:7B1 03 22 4B 25 00 00 00 00       $  ANS023:7B9 03 22 4B 25 00 00 00 00
  $  REQ024:7B1 03 22 4B 26 00 00 00 00       $  ANS024:7B9 03 22 4B 26 00 00 00 00
  $  REQ025:7B1 03 22 4B 27 00 00 00 00       $  ANS025:7B9 03 22 4B 27 00 00 00 00
  $  REQ026:7B1 03 22 4B 28 00 00 00 00       $  ANS026:7B9 03 22 4B 28 00 00 00 00
  $  REQ027:7B1 03 22 4B 29 00 00 00 00       $  ANS027:7B9 03 22 4B 29 00 00 00 00
  $  REQ028:7B1 03 22 4B 2A 00 00 00 00       $  ANS028:7B9 03 22 4B 2A 00 00 00 00
  $  REQ029:7B1 03 22 4B 2B 00 00 00 00       $  ANS029:7B9 03 22 4B 2B 00 00 00 00
  $  REQ030:7B1 03 22 4B 2C 00 00 00 00       $  ANS030:7B9 03 22 4B 2C 00 00 00 00
  $  REQ031:7B1 03 22 4B 2D 00 00 00 00       $  ANS031:7B9 03 22 4B 2D 00 00 00 00
  $  REQ032:7B1 03 22 4B 2E 00 00 00 00       $  ANS032:7B9 03 22 4B 2E 00 00 00 00
  $  REQ033:7B1 03 22 4B 35 00 00 00 00       $  ANS033:7B9 03 22 4B 35 00 00 00 00
  $  REQ034:7B1 03 22 4B 36 00 00 00 00       $  ANS034:7B9 03 22 4B 36 00 00 00 00
  $  REQ035:7B1 03 22 4B 37 00 00 00 00       $  ANS035:7B9 03 22 4B 37 00 00 00 00
  $  REQ036:7B1 03 22 4B 38 00 00 00 00       $  ANS036:7B9 03 22 4B 38 00 00 00 00
  $  REQ037:7B1 03 22 4B 39 00 00 00 00       $  ANS037:7B9 03 22 4B 39 00 00 00 00
  $  REQ038:7B1 03 22 4B 3A 00 00 00 00       $  ANS038:7B9 03 22 4B 3A 00 00 00 00
  $  REQ039:7B1 03 22 4B 3B 00 00 00 00       $  ANS039:7B9 03 22 4B 3B 00 00 00 00
  $  REQ040:7B1 03 22 4B 3C 00 00 00 00       $  ANS040:7B9 03 22 4B 3C 00 00 00 00
  $  REQ041:7B1 03 22 4B 3D 00 00 00 00       $  ANS041:7B9 03 22 4B 3D 00 00 00 00
  $  REQ042:7B1 03 22 4B 3E 00 00 00 00       $  ANS042:7B9 03 22 4B 3E 00 00 00 00
  $  REQ043:7B1 03 22 4B 3F 00 00 00 00       $  ANS043:7B9 03 22 4B 3F 00 00 00 00
  $  REQ044:7B1 03 22 4B 41 00 00 00 00       $  ANS044:7B9 03 22 4B 41 00 00 00 00
  $  REQ045:7B1 03 22 4B 42 00 00 00 00       $  ANS045:7B9 03 22 4B 42 00 00 00 00
  $  REQ046:7B1 03 22 4B 43 00 00 00 00       $  ANS046:7B9 03 22 4B 43 00 00 00 00
  $  REQ047:7B1 03 22 4B 44 00 00 00 00       $  ANS047:7B9 03 22 4B 44 00 00 00 00
  $  REQ048:7B1 03 22 4B 45 00 00 00 00       $  ANS048:7B9 03 22 4B 45 00 00 00 00
  $  REQ049:7B1 03 22 4B 46 00 00 00 00       $  ANS049:7B9 03 22 4B 46 00 00 00 00
  $  REQ050:7B1 03 22 4B 47 00 00 00 00       $  ANS050:7B9 03 22 4B 47 00 00 00 00
  $  REQ051:7B1 03 22 4B 48 00 00 00 00       $  ANS051:7B9 03 22 4B 48 00 00 00 00
  $  REQ052:7B1 03 22 4B 58 00 00 00 00       $  ANS052:7B9 03 22 4B 58 00 00 00 00
  $  REQ053:7B1 03 22 4B 02 00 00 00 00       $  ANS053:7B9 03 22 4B 02 00 00 00 00
  $  REQ054:7B1 03 22 4B 06 00 00 00 00       $  ANS054:7B9 03 22 4B 06 00 00 00 00
  $  REQ055:7B1 03 22 4B 0D 00 00 00 00       $  ANS055:7B9 03 22 4B 0D 00 00 00 00
  $  REQ056:7B1 03 22 4B 0F 00 00 00 00       $  ANS056:7B9 03 22 4B 0F 00 00 00 00
  $  REQ057:7B1 03 22 4B 10 00 00 00 00       $  ANS057:7B9 03 22 4B 10 00 00 00 00
  $  REQ058:7B1 03 22 4B 11 00 00 00 00       $  ANS058:7B9 03 22 4B 11 00 00 00 00
  $  REQ059:7B1 03 22 4B 53 00 00 00 00       $  ANS059:7B9 03 22 4B 53 00 00 00 00
  $  REQ060:7B1 03 22 4B 54 00 00 00 00       $  ANS060:7B9 03 22 4B 54 00 00 00 00

  $  000.电池包标称容量                          $    $  Ah       $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.1;
  $  001.电池包标称能量                          $    $  kWh      $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.1;
  $  002.标称电压                                $    $  V        $    $  ANS002.BYTE004  $  y=(x1<<8)+x2;
  $  003.Cell总数                                $    $  /        $    $  ANS003.BYTE004  $  y=x;
  $  004.电池包单次放电容量                      $    $  Ah       $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.1;
  $  005.电池包单次充电容量                      $    $  Ah       $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.1;
  $  006.电池包累计放电容量                      $    $  Ah       $    $  ANS006.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  007.电池包累计充电容量                      $    $  Ah       $    $  ANS007.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  008.VCU(整车控制器)充电允许                 $    $  /        $    $  ANS008.BYTE004  $  if(x==0x00)y=@0e61;else if(x==0x01)y=@0670;else if(x==0x02 || x==0x03)y=@0209;
  $  009.BMS(电池管理系统)状态                   $    $  /        $    $  ANS009.BYTE004  $  switxh(x)0x00:y=@00e8;0x01:y=@0318;0x02:y=@05cb;0x03:y=@0e62;0x04:y=@0e63;0x06:y=@03e3;0x07:y=@0e64;0x08:y=@09ab;0x09:y=@0e65;0x0a:y=@0e66;0x0b:y=@03db;0x0c:y=@0589;0x0d:y=@04a1;default:y=@0209;
  $  010.BMS(电池管理系统)充电故障等级           $    $  /        $    $  ANS010.BYTE004  $  switxh(x)0x00:y=@012f;0x01:y=@010f;0x02:y=@0129;0x03:y=@03d9;0x05:y=@0e6a;0x06:y=@0e6b;default:y=@0209;
  $  011.BMS(电池管理系统)放电回路预充状态       $    $  /        $    $  ANS011.BYTE004  $  switxh(x)0x00:y=@012f;0x01:y=@010f;0x02:y=@0129;0x03:y=@03d9;0x04:y=@095d;0x05:y=@0e51;0x06:y=@0e52;default:y=@0209;
  $  012.BMS(电池管理系统)充电回路预充状态       $    $  /        $    $  ANS012.BYTE004  $  switxh(x)0x00:y=@012f;0x01:y=@06af;0x02:y=@06b0;0x03:y=@03e6;0x04:y=@06b1;default:y=@0209;
  $  013.ECU(电子控制器)电源电压                 $    $  V        $    $  ANS013.BYTE004  $  y=x*0.1;
  $  014.1#模组1#温度值                          $    $  degC     $    $  ANS014.BYTE004  $  y=x*0.5-40;
  $  015.1#模组2#温度值                          $    $  degC     $    $  ANS014.BYTE005  $  y=x*0.5-40;
  $  016.2#模组1#温度值                          $    $  degC     $    $  ANS014.BYTE006  $  y=x*0.5-40;
  $  017.2#模组2#温度值                          $    $  degC     $    $  ANS014.BYTE007  $  y=x*0.5-40;
  $  018.3#模组1#温度值                          $    $  degC     $    $  ANS014.BYTE008  $  y=x*0.5-40;
  $  019.3#模组2#温度值                          $    $  degC     $    $  ANS014.BYTE009  $  y=x*0.5-40;
  $  020.4#模组1#温度值                          $    $  degC     $    $  ANS014.BYTE010  $  y=x*0.5-40;
  $  021.4#模组2#温度值                          $    $  degC     $    $  ANS014.BYTE011  $  y=x*0.5-40;
  $  022.5#模组1#温度值                          $    $  degC     $    $  ANS014.BYTE012  $  y=x*0.5-40;
  $  023.5#模组2#温度值                          $    $  degC     $    $  ANS014.BYTE013  $  y=x*0.5-40;
  $  024.6#模组1#温度值                          $    $  degC     $    $  ANS014.BYTE014  $  y=x*0.5-40;
  $  025.6#模组2#温度值                          $    $  degC     $    $  ANS014.BYTE015  $  y=x*0.5-40;
  $  026.7#模组1#温度值                          $    $  degC     $    $  ANS014.BYTE016  $  y=x*0.5-40;
  $  027.7#模组2#温度值                          $    $  degC     $    $  ANS014.BYTE017  $  y=x*0.5-40;
  $  028.最大电芯电压                            $    $  V        $    $  ANS015.BYTE004  $  y=(x1*256+x2)*0.001;
  $  029.最大电芯电压的电芯号                    $    $  /        $    $  ANS016.BYTE004  $  y=x;
  $  030.最小电芯电压                            $    $  V        $    $  ANS017.BYTE004  $  y=(x1*256+x2)*0.001;
  $  031.最小电芯电压的电芯号                    $    $  /        $    $  ANS018.BYTE004  $  y=x;
  $  032.电池包总电压                            $    $  V        $    $  ANS019.BYTE004  $  y=(x1*256+x2)*0.1;
  $  033.电池包总电流                            $    $  A        $    $  ANS020.BYTE004  $  y=(x1*256+x2)*0.1-500;
  $  034.电池包最高温度                          $    $  degC     $    $  ANS021.BYTE004  $  y=x*0.5-40;
  $  035.电池包最高温度的温度传感器号            $    $  /        $    $  ANS022.BYTE004  $  y=x;
  $  036.电池包最低温度                          $    $  degC     $    $  ANS023.BYTE004  $  y=x*0.5-40;
  $  037.电池包最低温度的温度传感器号            $    $  /        $    $  ANS024.BYTE004  $  y=x;
  $  038.绝缘电阻值                              $    $  Kohm     $    $  ANS025.BYTE004  $  y=x1*256+x2;
  $  039.绝缘监测状态                            $    $  /        $    $  ANS026.BYTE004  $  switxh(x)0x00:y=@0e67;0x01:y=@0e68;0x02:y=@0e69;default:y=@0209;
  $  040.整车高压互锁状态                        $    $  /        $    $  ANS027.BYTE004  $  switxh(x)0x00:y=@06b7;0x01:y=@06b8;default:y=@0209;
  $  041.主正继电器状态                          $    $  /        $    $  ANS028.BYTE004  $  if(0==((x>>0)&1) && 0==((x>>1)&1))y=@0001;else if(1==((x>>0)&1) && 0==((x>>1)&1))y=@0000;else if(0==((x>>0)&1) && 1==((x>>1)&1))y=@0e78;
  $  042.主负继电器状态                          $    $  /        $    $  ANS028.BYTE004  $  if(0==((x>>2)&1) && 0==((x>>3)&1))y=@0001;else if(1==((x>>2)&1) && 0==((x>>3)&1))y=@0000;else if(0==((x>>2)&1) && 1==((x>>3)&1))y=@068c;
  $  043.预充继电器状态                          $    $  /        $    $  ANS028.BYTE004  $  if(0==((x>>4)&1) && 0==((x>>5)&1))y=@0001;else if(1==((x>>4)&1) && 0==((x>>5)&1))y=@0000;
  $  044.充电继电器状态                          $    $  /        $    $  ANS028.BYTE004  $  if(0==((x>>6)&1) && 0==((x>>7)&1))y=@0001;else if(1==((x>>6)&1) && 0==((x>>7)&1))y=@0000;else if(0==((x>>6)&1) && 1==((x>>7)&1))y=@0e78;
  $  045.充电预充继电器状态                      $    $  /        $    $  ANS028.BYTE005  $  if(0==((x>>0)&1) && 0==((x>>1)&1))y=@0001;else if(1==((x>>0)&1) && 0==((x>>1)&1))y=@0000;
  $  046.充电机实际工作状态                      $    $  /        $    $  ANS029.BYTE004  $  switxh(x)0x00:y=@0209;0x01:y=@0e71;0x02:y=@0e72;0x03:y=@0b73;0x04:y=@03d6;0x05:y=@05e4;0x06:y=@0b74;0x07:y=@0b75;0x08:y=@0b76;0x09:y=@03d9;0x0A:y=@068b;0x0B:y=@0e73;0x0C:y=@0e74;
  $  047.充电机错误状态                          $    $  /        $    $  ANS030.BYTE004  $  switxh(x)0x00:y=@0481;0x01:y=@0e75;0x02:y=@0e76;0x03:y=@0e77;
  $  048.充电机输出电流                          $    $  A        $    $  ANS031.BYTE004  $  y=(x1*256+x2)*0.1;
  $  049.充电机输出电压                          $    $  V        $    $  ANS032.BYTE004  $  y=x1*256+x2;
  $  050.电池荷电状态                            $    $  %        $    $  ANS033.BYTE004  $  y=(x1*256+x2)*0.1;
  $  051.电池显示剩余电量                        $    $  %        $    $  ANS034.BYTE004  $  y=(x1*256+x2)*0.1;
  $  052.电池健康度                              $    $  %        $    $  ANS035.BYTE004  $  y=(x1*256+x2)*0.1;
  $  053.剩余能量                                $    $  Kwh      $    $  ANS036.BYTE004  $  y=(x1*256+x2)*0.1;
  $  054.允许的持续放电功率                      $    $  kW       $    $  ANS037.BYTE004  $  y=x;
  $  055.允许的峰值放电功率                      $    $  kW       $    $  ANS038.BYTE004  $  y=x;
  $  056.允许的持续充电功率                      $    $  kW       $    $  ANS039.BYTE004  $  y=x;
  $  057.允许的峰值充电功率                      $    $  kW       $    $  ANS040.BYTE004  $  y=x;
  $  058.电池单体最高容量                        $    $  Ah       $    $  ANS041.BYTE004  $  y=(x1*256+x2)*0.1;
  $  059.电池单体最低容量                        $    $  Ah       $    $  ANS042.BYTE004  $  y=(x1*256+x2)*0.1;
  $  060.空调对电池水泵请求的反馈                $    $  %        $    $  ANS043.BYTE004  $  y=x;
  $  061.充电枪CC状态                            $    $  /        $    $  ANS044.BYTE004  $  switxh(x)0x00:y=@01c3;0x01:y=@0240;0x02:y=@0e6c;0x03:y=@0e6d;
  $  062.充电机CP连接状态                        $    $  /        $    $  ANS045.BYTE004  $  switxh(x)0x00:y=@01c3;0x01:y=@0e6e;0x02:y=@0e6f;0x03:y=@0e70;0x07:y=@063e;
  $  063.充电允许指令                            $    $  /        $    $  ANS046.BYTE004  $  switxh(x)0x00:y=@012f;0x04:y=@0422;0x05:y=@095a;0x0A:y=@0e5a;0x0B:y=@0e5b;0x0C:y=@0e5c;default:y=@0209;
  $  064.BMS(电池管理系统)请求的充电电流         $    $  A        $    $  ANS047.BYTE004  $  y=(x1*256+x2)*0.1;
  $  065.BMS(电池管理系统)请求的充电电压         $    $  V        $    $  ANS048.BYTE004  $  y=(x1*256+x2)*0.1;
  $  066.BMS(电池管理系统)热管理请求             $    $  /        $    $  ANS049.BYTE004  $  switxh(x)0x00:y=@012f;0x01:y=@08ea;0x02:y=@0e5d;default:y=@0209;
  $  067.AC(空调)热管理应答                      $    $  /        $    $  ANS050.BYTE004  $  switxh(x)0x00:y=@012f;0x01:y=@08ea;0x02:y=@0693;0x03:y=@0e56;0x04:y=@0e57;0x05:y=@0e58;0x06:y=@07a3;default:y=@0209;
  $  068.电池包进水口温度                        $    $  degC     $    $  ANS051.BYTE004  $  y=x*0.5-40;
  $  069.发动机状态                              $    $  /        $    $  ANS052.BYTE004  $  switxh(x)0x00:y=@0390;0x01:y=@0e55;0x02:y=@06dc;0x03:y=@0373;0x04:y=@0209;0x05:y=@0209;0x06:y=@0421;0x07:y=@0132;
  $  070.电池包版本号                            $    $  /        $    $  ANS053.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  071.电池类型码                              $    $  /        $    $  ANS054.BYTE004  $  HEX(x1);
  $  072.1#模组序列号                            $    $  /        $    $  ANS055.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  073.2#模组序列号                            $    $  /        $    $  ANS055.BYTE028  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  074.3#模组序列号                            $    $  /        $    $  ANS055.BYTE052  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  075.4#模组序列号                            $    $  /        $    $  ANS055.BYTE076  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  076.5#模组序列号                            $    $  /        $    $  ANS055.BYTE100  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  077.6#模组序列号                            $    $  /        $    $  ANS055.BYTE124  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  078.7#模组序列号                            $    $  /        $    $  ANS055.BYTE148  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  079.主控板供应商代码                        $    $  /        $    $  ANS056.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6);
  $  080.主控板序列号                            $    $  /        $    $  ANS057.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  081.主控板制造日期                          $    $  /        $    $  ANS058.BYTE004  $  HEX(x1,x2,x3,x4);
  $  082.1号模组软件版本号                       $    $  /        $    $  ANS059.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  083.2号模组软件版本号                       $    $  /        $    $  ANS059.BYTE028  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  084.3号模组软件版本号                       $    $  /        $    $  ANS059.BYTE052  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  085.4号模组软件版本号                       $    $  /        $    $  ANS059.BYTE076  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  086.5号模组软件版本号                       $    $  /        $    $  ANS059.BYTE100  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  087.6号模组软件版本号                       $    $  /        $    $  ANS059.BYTE124  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  088.7号模组软件版本号                       $    $  /        $    $  ANS059.BYTE148  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  089.1号模组硬件版本号                       $    $  /        $    $  ANS060.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  090.2号模组硬件版本号                       $    $  /        $    $  ANS060.BYTE028  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  091.3号模组硬件版本号                       $    $  /        $    $  ANS060.BYTE052  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  092.4号模组硬件版本号                       $    $  /        $    $  ANS060.BYTE076  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  093.5号模组硬件版本号                       $    $  /        $    $  ANS060.BYTE100  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  094.6号模组硬件版本号                       $    $  /        $    $  ANS060.BYTE124  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  095.7号模组硬件版本号                       $    $  /        $    $  ANS060.BYTE148  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7B1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
