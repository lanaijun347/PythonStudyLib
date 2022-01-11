
    车型ID：075d

    模拟：协议模拟-->075d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E9

进入命令:

  $~  REQ000:7E1 02 10 01 00 00 00 00 00       $~  ANS000:7E9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E1 02 3E 00 00 00 00 00 00       $!  ANS000:7E9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E1 03 19 02 09 00 00 00 00       $#  ANS000:7E9 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/9d000000


  $#  01.读故障码库
  $#  REQ000:7E1 02 19 0A 00 00 00 00 00       $#  ANS000:7E9 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/9d000000


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

  $$  REQ000:7E1 04 14 FF FF FF 00 00 00       $$  ANS000:7E9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E1 03 22 F1 12 00 00 00 00       $%  ANS000:7E9 03 22 F1 12 00 00 00 00
  $%  REQ001:7E1 03 22 F1 80 00 00 00 00       $%  ANS001:7E9 03 22 F1 80 00 00 00 00
  $%  REQ002:7E1 03 22 F1 87 00 00 00 00       $%  ANS002:7E9 03 22 F1 87 00 00 00 00
  $%  REQ003:7E1 03 22 F1 8A 00 00 00 00       $%  ANS003:7E9 03 22 F1 8A 00 00 00 00
  $%  REQ004:7E1 03 22 F1 8B 00 00 00 00       $%  ANS004:7E9 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E1 03 22 F1 8C 00 00 00 00       $%  ANS005:7E9 03 22 F1 8C 00 00 00 00
  $%  REQ006:7E1 03 22 F1 90 00 00 00 00       $%  ANS006:7E9 03 22 F1 90 00 00 00 00
  $%  REQ007:7E1 03 22 F1 93 00 00 00 00       $%  ANS007:7E9 03 22 F1 93 00 00 00 00
  $%  REQ008:7E1 03 22 F1 95 00 00 00 00       $%  ANS008:7E9 03 22 F1 95 00 00 00 00
  $%  REQ009:7E1 03 22 F1 98 00 00 00 00       $%  ANS009:7E9 03 22 F1 98 00 00 00 00
  $%  REQ010:7E1 03 22 F1 99 00 00 00 00       $%  ANS010:7E9 03 22 F1 99 00 00 00 00
  $%  REQ011:7E1 03 22 F1 9D 00 00 00 00       $%  ANS011:7E9 03 22 F1 9D 00 00 00 00
  $%  REQ012:7E1 03 22 F1 82 00 00 00 00       $%  ANS012:7E9 03 22 F1 82 00 00 00 00

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

  $)  00.数据流
  $  00.数据流
  $  REQ000:7E1 03 22 10 01 00 00 00 00       $  ANS000:7E9 03 22 10 01 00 00 00 00
  $  REQ001:7E1 03 22 10 02 00 00 00 00       $  ANS001:7E9 03 22 10 02 00 00 00 00
  $  REQ002:7E1 03 22 10 03 00 00 00 00       $  ANS002:7E9 03 22 10 03 00 00 00 00
  $  REQ003:7E1 03 22 10 04 00 00 00 00       $  ANS003:7E9 03 22 10 04 00 00 00 00
  $  REQ004:7E1 03 22 10 05 00 00 00 00       $  ANS004:7E9 03 22 10 05 00 00 00 00
  $  REQ005:7E1 03 22 10 07 00 00 00 00       $  ANS005:7E9 03 22 10 07 00 00 00 00
  $  REQ006:7E1 03 22 10 0D 00 00 00 00       $  ANS006:7E9 03 22 10 0D 00 00 00 00
  $  REQ007:7E1 03 22 10 0E 00 00 00 00       $  ANS007:7E9 03 22 10 0E 00 00 00 00
  $  REQ008:7E1 03 22 10 0F 00 00 00 00       $  ANS008:7E9 03 22 10 0F 00 00 00 00
  $  REQ009:7E1 03 22 10 1A 00 00 00 00       $  ANS009:7E9 03 22 10 1A 00 00 00 00
  $  REQ010:7E1 03 22 10 1B 00 00 00 00       $  ANS010:7E9 03 22 10 1B 00 00 00 00
  $  REQ011:7E1 03 22 10 1D 00 00 00 00       $  ANS011:7E9 03 22 10 1D 00 00 00 00
  $  REQ012:7E1 03 22 10 1E 00 00 00 00       $  ANS012:7E9 03 22 10 1E 00 00 00 00
  $  REQ013:7E1 03 22 10 1F 00 00 00 00       $  ANS013:7E9 03 22 10 1F 00 00 00 00
  $  REQ014:7E1 03 22 11 02 00 00 00 00       $  ANS014:7E9 03 22 11 02 00 00 00 00
  $  REQ015:7E1 03 22 11 04 00 00 00 00       $  ANS015:7E9 03 22 11 04 00 00 00 00
  $  REQ016:7E1 03 22 D1 01 00 00 00 00       $  ANS016:7E9 03 22 D1 01 00 00 00 00
  $  REQ017:7E1 03 22 D1 06 00 00 00 00       $  ANS017:7E9 03 22 D1 06 00 00 00 00
  $  REQ018:7E1 03 22 D1 07 00 00 00 00       $  ANS018:7E9 03 22 D1 07 00 00 00 00
  $  REQ019:7E1 03 22 D1 08 00 00 00 00       $  ANS019:7E9 03 22 D1 08 00 00 00 00
  $  REQ020:7E1 03 22 D1 09 00 00 00 00       $  ANS020:7E9 03 22 D1 09 00 00 00 00
  $  REQ021:7E1 03 22 D1 0A 00 00 00 00       $  ANS021:7E9 03 22 D1 0A 00 00 00 00
  $  REQ022:7E1 03 22 D1 0B 00 00 00 00       $  ANS022:7E9 03 22 D1 0B 00 00 00 00
  $  REQ023:7E1 03 22 D1 0C 00 00 00 00       $  ANS023:7E9 03 22 D1 0C 00 00 00 00
  $  REQ024:7E1 03 22 D1 0D 00 00 00 00       $  ANS024:7E9 03 22 D1 0D 00 00 00 00
  $  REQ025:7E1 03 22 D1 0E 00 00 00 00       $  ANS025:7E9 03 22 D1 0E 00 00 00 00
  $  REQ026:7E1 03 22 D1 0F 00 00 00 00       $  ANS026:7E9 03 22 D1 0F 00 00 00 00
  $  REQ027:7E1 03 22 D1 10 00 00 00 00       $  ANS027:7E9 03 22 D1 10 00 00 00 00
  $  REQ028:7E1 03 22 D1 11 00 00 00 00       $  ANS028:7E9 03 22 D1 11 00 00 00 00
  $  REQ029:7E1 03 22 D1 12 00 00 00 00       $  ANS029:7E9 03 22 D1 12 00 00 00 00
  $  REQ030:7E1 03 22 D1 13 00 00 00 00       $  ANS030:7E9 03 22 D1 13 00 00 00 00
  $  REQ031:7E1 03 22 D1 14 00 00 00 00       $  ANS031:7E9 03 22 D1 14 00 00 00 00
  $  REQ032:7E1 03 22 D1 16 00 00 00 00       $  ANS032:7E9 03 22 D1 16 00 00 00 00
  $  REQ033:7E1 03 22 D1 17 00 00 00 00       $  ANS033:7E9 03 22 D1 17 00 00 00 00
  $  REQ034:7E1 03 22 D1 18 00 00 00 00       $  ANS034:7E9 03 22 D1 18 00 00 00 00
  $  REQ035:7E1 03 22 D1 19 00 00 00 00       $  ANS035:7E9 03 22 D1 19 00 00 00 00
  $  REQ036:7E1 03 22 D1 1A 00 00 00 00       $  ANS036:7E9 03 22 D1 1A 00 00 00 00
  $  REQ037:7E1 03 22 D1 1B 00 00 00 00       $  ANS037:7E9 03 22 D1 1B 00 00 00 00
  $  REQ038:7E1 03 22 D1 1C 00 00 00 00       $  ANS038:7E9 03 22 D1 1C 00 00 00 00
  $  REQ039:7E1 03 22 D1 1D 00 00 00 00       $  ANS039:7E9 03 22 D1 1D 00 00 00 00
  $  REQ040:7E1 03 22 D1 1E 00 00 00 00       $  ANS040:7E9 03 22 D1 1E 00 00 00 00
  $  REQ041:7E1 03 22 D1 1F 00 00 00 00       $  ANS041:7E9 03 22 D1 1F 00 00 00 00
  $  REQ042:7E1 03 22 D1 20 00 00 00 00       $  ANS042:7E9 03 22 D1 20 00 00 00 00
  $  REQ043:7E1 03 22 D2 01 00 00 00 00       $  ANS043:7E9 03 22 D2 01 00 00 00 00
  $  REQ044:7E1 03 22 D2 02 00 00 00 00       $  ANS044:7E9 03 22 D2 02 00 00 00 00
  $  REQ045:7E1 03 22 D2 03 00 00 00 00       $  ANS045:7E9 03 22 D2 03 00 00 00 00
  $  REQ046:7E1 03 22 D2 04 00 00 00 00       $  ANS046:7E9 03 22 D2 04 00 00 00 00
  $  REQ047:7E1 03 22 D2 05 00 00 00 00       $  ANS047:7E9 03 22 D2 05 00 00 00 00
  $  REQ048:7E1 03 22 D2 06 00 00 00 00       $  ANS048:7E9 03 22 D2 06 00 00 00 00
  $  REQ049:7E1 03 22 D2 07 00 00 00 00       $  ANS049:7E9 03 22 D2 07 00 00 00 00
  $  REQ050:7E1 03 22 D2 08 00 00 00 00       $  ANS050:7E9 03 22 D2 08 00 00 00 00
  $  REQ051:7E1 03 22 D2 09 00 00 00 00       $  ANS051:7E9 03 22 D2 09 00 00 00 00
  $  REQ052:7E1 03 22 D2 0A 00 00 00 00       $  ANS052:7E9 03 22 D2 0A 00 00 00 00
  $  REQ053:7E1 03 22 D2 0B 00 00 00 00       $  ANS053:7E9 03 22 D2 0B 00 00 00 00
  $  REQ054:7E1 03 22 D2 0C 00 00 00 00       $  ANS054:7E9 03 22 D2 0C 00 00 00 00
  $  REQ055:7E1 03 22 D2 0D 00 00 00 00       $  ANS055:7E9 03 22 D2 0D 00 00 00 00
  $  REQ056:7E1 03 22 D2 0E 00 00 00 00       $  ANS056:7E9 03 22 D2 0E 00 00 00 00
  $  REQ057:7E1 03 22 D2 0F 00 00 00 00       $  ANS057:7E9 03 22 D2 0F 00 00 00 00
  $  REQ058:7E1 03 22 D2 10 00 00 00 00       $  ANS058:7E9 03 22 D2 10 00 00 00 00
  $  REQ059:7E1 03 22 D2 11 00 00 00 00       $  ANS059:7E9 03 22 D2 11 00 00 00 00
  $  REQ060:7E1 03 22 D2 12 00 00 00 00       $  ANS060:7E9 03 22 D2 12 00 00 00 00
  $  REQ061:7E1 03 22 D2 13 00 00 00 00       $  ANS061:7E9 03 22 D2 13 00 00 00 00
  $  REQ062:7E1 03 22 D2 14 00 00 00 00       $  ANS062:7E9 03 22 D2 14 00 00 00 00
  $  REQ063:7E1 03 22 15 01 00 00 00 00       $  ANS063:7E9 03 22 15 01 00 00 00 00
  $  REQ064:7E1 03 22 15 02 00 00 00 00       $  ANS064:7E9 03 22 15 02 00 00 00 00
  $  REQ065:7E1 03 22 15 03 00 00 00 00       $  ANS065:7E9 03 22 15 03 00 00 00 00
  $  REQ066:7E1 03 22 15 08 00 00 00 00       $  ANS066:7E9 03 22 15 08 00 00 00 00
  $  REQ067:7E1 03 22 15 09 00 00 00 00       $  ANS067:7E9 03 22 15 09 00 00 00 00
  $  REQ068:7E1 03 22 15 0A 00 00 00 00       $  ANS068:7E9 03 22 15 0A 00 00 00 00
  $  REQ069:7E1 03 22 15 0B 00 00 00 00       $  ANS069:7E9 03 22 15 0B 00 00 00 00
  $  REQ070:7E1 03 22 15 0C 00 00 00 00       $  ANS070:7E9 03 22 15 0C 00 00 00 00
  $  REQ071:7E1 03 22 15 0D 00 00 00 00       $  ANS071:7E9 03 22 15 0D 00 00 00 00
  $  REQ072:7E1 03 22 15 0E 00 00 00 00       $  ANS072:7E9 03 22 15 0E 00 00 00 00
  $  REQ073:7E1 03 22 15 0F 00 00 00 00       $  ANS073:7E9 03 22 15 0F 00 00 00 00
  $  REQ074:7E1 03 22 15 10 00 00 00 00       $  ANS074:7E9 03 22 15 10 00 00 00 00
  $  REQ075:7E1 03 22 15 11 00 00 00 00       $  ANS075:7E9 03 22 15 11 00 00 00 00
  $  REQ076:7E1 03 22 15 12 00 00 00 00       $  ANS076:7E9 03 22 15 12 00 00 00 00
  $  REQ077:7E1 03 22 16 07 00 00 00 00       $  ANS077:7E9 03 22 16 07 00 00 00 00

  $  000.发动机速度(CAN)                                                    $    $  1 / min     $    $  ANS000.BYTE004  $  y=(x1*0x100+x2)*0.25;
  $  001.车速由TCU(自动变速器控制单元)计算                                  $    $  km/h        $    $  ANS001.BYTE004  $  y=x;
  $  002.节气门位置(CAN)                                                    $    $  %           $    $  ANS002.BYTE004  $  y=x*0.392157;
  $  003.主动轮速度                                                         $    $  1/min       $    $  ANS003.BYTE004  $  y=(x1*0x100+x2)*0.25;
  $  004.输出速度                                                           $    $  1/min       $    $  ANS004.BYTE004  $  y=(x1*0x100+x2)*0.25;
  $  005.离合器打滑(只用正数)                                               $    $  /           $    $  ANS005.BYTE004  $  y=(x1*0x100+x2)*0.25-512;
  $  006.EDS(电子差速锁)1专用PWM(脉宽调制)运转周期                          $    $  %           $    $  ANS006.BYTE004  $  y=x*0.392200;
  $  007.EDS(电子差速锁)2专用PWM(脉宽调制)运转周期                          $    $  %           $    $  ANS007.BYTE004  $  y=x*0.392200;
  $  008.EDS(电子差速锁)3专用PWM(脉宽调制)运转周期                          $    $  %           $    $  ANS008.BYTE004  $  y=x*0.392200;
  $  009.油温                                                               $    $  degC        $    $  ANS009.BYTE004  $  y=x-40;
  $  010.传动比                                                             $    $  /           $    $  ANS010.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  011.把手位置                                                           $    $  /           $    $  ANS011.BYTE004  $  switxh(x) 0x00:y=@0143; 0x01:y=@0b9a; 0x02:y=@0b9b; 0x03:y=@0b9c; 0x04:y=@0b9d; 0x05:y=@0b9e; 0x06:y=@0b9f; 0x10:y=@0d26; 0x20:y=@0ba0; 0x21:y=@0ba1; 0x22:y=@0ba2; 0x23:y=@0ba3; 0x41:y=@0d27; 0x42:y=@0d28; 0x43:y=@0d29; 0x44:y=@0d2a; 0x45:y=@0d2b; 0x46:y=@0d2c; 0x47:y=@0d2d; 0x48:y=@0d2e; 0xF0:y=@0d2f; 0xF1:y=@0d30; 0xF2:y=@0d31; 0xF3:y=@0d32; 0xF4:y=@0d33; 0xFF:y=@0132;
  $  012.EOL离合器适用错误                                                  $    $  /           $    $  ANS012.BYTE004  $  if(((x>>0)&1)) y=@0d34;else if(((x>>1)&1)) y=@0d35;else if(((x>>2)&1)) y=@0d36;else if(((x>>3)&1)) y=@0d37;else if(((x>>4)&1)) y=@0d38;else if(((x>>5)&1)) y=@0d39; else y=@0220;
  $  013.需要更新离合器电流的数值                                           $    $  mA          $    $  ANS013.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  014.诊断数据:DTC数量                                                   $    $  /           $    $  ANS014.BYTE004  $  if(((x>>7)&1)) y=x-128; else y=x;
  $  015.诊断数据:故障指示灯状态                                            $    $  /           $    $  ANS014.BYTE004  $  if(((x>>7)&1)) y=@0170;else y=@010e;
  $  016.发动机扭力(CAN)                                                    $    $  Nm          $    $  ANS015.BYTE004  $  y=x*2-150;
  $  017.制动器错误状态                                                     $    $  /           $    $  ANS016.BYTE004  $  y=x1*0x100+x2;
  $  018.发动机冷却液温度(CAN)                                              $    $  degC        $    $  ANS017.BYTE004  $  y=x*1-48;
  $  019.ABS(防抱刹车系统)系统信号故障                                      $    $  /           $    $  ANS018.BYTE004  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  020.于CAN缺少一个或几个ABS(防抱刹车系统)标识符                         $    $  /           $    $  ANS019.BYTE004  $  y=x;
  $  021.EMS(发动机管理系统)系统信号故障                                    $    $  /           $    $  ANS020.BYTE004  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  022.于CAN缺少一个或几个EMS(发动机管理系统)标识符                       $    $  /           $    $  ANS021.BYTE004  $  y=x;
  $  023.HCU(整车控制器)系统信号故障                                        $    $  /           $    $  ANS022.BYTE004  $  y=x1*0x100+x2;
  $  024.于CAN缺少一个或几个HCU(整车控制器)标识符                           $    $  /           $    $  ANS023.BYTE004  $  y=x;
  $  025.MCU(驱动电机控制单元)系统信号故障                                  $    $  /           $    $  ANS024.BYTE004  $  y=x1*0x100+x2;
  $  026.于CAN缺少一个或几个MCU(驱动电机控制单元)标识符                     $    $  /           $    $  ANS025.BYTE004  $  y=x;
  $  027.于CAN缺少一个或几个TCU(自动变速器控制单元)传递标识符               $    $  /           $    $  ANS026.BYTE004  $  y=x;
  $  028.活动错误反应(1/2)                                                  $    $  /           $    $  ANS027.BYTE004  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  029.活动错误反应(2/2)                                                  $    $  /           $    $  ANS028.BYTE004  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  030.滑轮1压力调节器的指挥电流                                          $    $  mA          $    $  ANS029.BYTE004  $  y=(x1*0x100+x2)*1;
  $  031.滑轮2压力调节器的指挥电流                                          $    $  mA          $    $  ANS030.BYTE004  $  y=(x1*0x100+x2)*1;
  $  032.离合器压力调节器的指挥电流                                         $    $  mA          $    $  ANS031.BYTE004  $  y=(x1*0x100+x2)*1;
  $  033.目标比率                                                           $    $  /           $    $  ANS032.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  034.比率斜度                                                           $    $  /           $    $  ANS033.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.001; else y=(x1*0x100+x2-65536)*0.001;
  $  035.发动机扭力由TCU(自动变速器控制单元)计算                            $    $  Nm          $    $  ANS034.BYTE004  $  if(x1<0x80)y=x1*0x100+x2; else y=x1*0x100+x2-65536;
  $  036.从动轮速度                                                         $    $  1/min       $    $  ANS035.BYTE004  $  y=(x1*0x100+x2)*0.25;
  $  037.滑轮1压力调节气的实际电流                                          $    $  mA          $    $  ANS036.BYTE004  $  y=(x1*0x100+x2)*1;
  $  038.滑轮2压力调节气的实际电流                                          $    $  mA          $    $  ANS037.BYTE004  $  y=(x1*0x100+x2)*1;
  $  039.离合器压力调节气的实际电流                                         $    $  mA          $    $  ANS038.BYTE004  $  y=(x1*0x100+x2)*1;
  $  040.离合器指挥压力                                                     $    $  bar         $    $  ANS039.BYTE004  $  y=INT((x1*0x100+x2)*0.01);
  $  041.滑轮2指挥压力                                                      $    $  bar         $    $  ANS040.BYTE004  $  y=INT((x1*0x100+x2)*0.01);
  $  042.滑轮2检测压力                                                      $    $  bar         $    $  ANS041.BYTE004  $  y=INT((x1*0x100+x2)*0.01);
  $  043.高侧检测电流                                                       $    $  mA          $    $  ANS042.BYTE004  $  y=(x1*0x100+x2)*1;
  $  044.单行状态传感器位置                                                 $    $  /           $    $  ANS043.BYTE004  $  y=x1*0x100+x2;
  $  045.ZF复位计数器                                                       $    $  /           $    $  ANS044.BYTE004  $  y=x1*0x100+x2;
  $  046.SV复位计数器                                                       $    $  /           $    $  ANS045.BYTE004  $  y=x1*0x100+x2;
  $  047.TRAP复位计数器                                                     $    $  /           $    $  ANS046.BYTE004  $  y=x1*0x100+x2;
  $  048.TSK复位计数器                                                      $    $  /           $    $  ANS047.BYTE004  $  y=x1*0x100+x2;
  $  049.制热诊断状态                                                       $    $  /           $    $  ANS048.BYTE004  $  y=x1*0x100+x2;
  $  050.传感器信号状态                                                     $    $  /           $    $  ANS049.BYTE004  $  y=x1*0x100+x2;
  $  051.输出速度为基础的车速                                               $    $  km/h        $    $  ANS050.BYTE004  $  y=INT((x1*0x100+x2)*0.01);
  $  052.非驱动轮平均速度                                                   $    $  km/h        $    $  ANS051.BYTE004  $  y=INT((x1*0x100+x2)*0.01);
  $  053.高侧电压                                                           $    $  V           $    $  ANS052.BYTE004  $  y=x*0.1;
  $  054.点火电压                                                           $    $  V           $    $  ANS053.BYTE004  $  y=x*0.1;
  $  055.传感器电源电压5V                                                   $    $  V           $    $  ANS054.BYTE004  $  y=x*0.1;
  $  056.传感器电源电压8.4V                                                 $    $  V           $    $  ANS055.BYTE004  $  y=x*0.1;
  $  057.里数                                                               $    $  km          $    $  ANS056.BYTE004  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  058.电池电压                                                           $    $  V           $    $  ANS057.BYTE004  $  y=x*0.1;
  $  059.外部WTD复位计数器                                                  $    $  /           $    $  ANS058.BYTE004  $  y=x1*0x100+x2;
  $  060.内部WTD复位计数器                                                  $    $  /           $    $  ANS059.BYTE004  $  y=x1*0x100+x2;
  $  061.TCU(自动变速器控制单元)冻结帧的把手位置                            $    $  /           $    $  ANS060.BYTE004  $  if(((x>>0)&1)) y=@0220;else if(((x>>1)&1)) y=@0bad;else if(((x>>2)&1)) y=@000b;else if(((x>>3)&1)) y=@000b;else if(((x>>4)&1)) y=@04a9;else if(((x>>5)&1)) y=@04a8;else if(((x>>6)&1)) y=@04aa;else if(((x>>7)&1)) y=@04a7;
  $  062.离合器状态                                                         $    $  /           $    $  ANS061.BYTE004  $  switxh(x) 0x01:y=@0001; 0x02:y=@0d3a; 0x03:y=@0594; 0x04:y=@0d3b; 0x05:y=@0d3c; 0x06:y=@051d; 0x07:y=@0d3d; 0x08:y=@0001; 0x09:y=@035f; 0x0A:y=@0d3e; 0x0B:y=@0bb7; 0x0C:y=@0d3f; 0x0D:y=@0000;
  $  063.期待离合器压力                                                     $    $  bar         $    $  ANS062.BYTE004  $  y=x*0.1;
  $  064.指示适应值的有效性                                                 $    $  /           $    $  ANS063.BYTE004  $  y=(x1*0x100+x2)*1;
  $  065.最终行驶循环倒档离合器的断电温度                                   $    $  degC        $    $  ANS064.BYTE004  $  y=x1*0x100+x2;
  $  066.最终行驶循环进档离合器的断电温度                                   $    $  degC        $    $  ANS065.BYTE004  $  y=x1*0x100+x2;
  $  067.用于补偿轮半径的不准确性，车速和从动速度之间的关系的校正因素       $    $  /           $    $  ANS066.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  068.驱动左轮用原始ABS(防抱刹车系统)传感器信号的校正因素                $    $  /           $    $  ANS067.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  069.非驱动左轮用原始ABS(防抱刹车系统)传感器信号的校正因素              $    $  /           $    $  ANS068.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  070.非驱动右轮用原始ABS(防抱刹车系统)传感器信号的校正因素              $    $  /           $    $  ANS069.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  071.主动速度传感器(FC46)用峰值计数器                                   $    $  /           $    $  ANS070.BYTE004  $  y=x;
  $  072.从动速度传感器(FC47)用峰值计数器                                   $    $  /           $    $  ANS071.BYTE004  $  y=x;
  $  073.当进行最终行驶循环时FC96的状态                                     $    $  /           $    $  ANS072.BYTE004  $  y=x;
  $  074.发动机关掉后最终计里器位置                                         $    $  km          $    $  ANS073.BYTE004  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  075.变速器中止换挡时递减计时器因素的最终已知数值                       $    $  /           $    $  ANS074.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  076.变速器中止换挡时递减计时器因素的最终已知数值                       $    $  /           $    $  ANS075.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  077.无限比率                                                           $    $  /           $    $  ANS076.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  078.自上次EOL自学习以来所覆盖的距离                                    $    $  km          $    $  ANS077.BYTE004  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;

  $)  01.倒档离合器的适应电流(9个数值)
  $  01.倒档离合器的适应电流(9个数值)
  $  REQ000:7E1 03 22 15 04 00 00 00 00       $  ANS000:7E9 03 22 15 04 00 00 00 00

  $  000.倒档离合器的适应电流(1)       $    $  mA     $    $  ANS000.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  001.倒档离合器的适应电流(2)       $    $  mA     $    $  ANS000.BYTE006  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  002.倒档离合器的适应电流(3)       $    $  mA     $    $  ANS000.BYTE008  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  003.倒档离合器的适应电流(4)       $    $  mA     $    $  ANS000.BYTE010  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  004.倒档离合器的适应电流(5)       $    $  mA     $    $  ANS000.BYTE012  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  005.倒档离合器的适应电流(6)       $    $  mA     $    $  ANS000.BYTE014  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  006.倒档离合器的适应电流(7)       $    $  mA     $    $  ANS000.BYTE016  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  007.倒档离合器的适应电流(8)       $    $  mA     $    $  ANS000.BYTE018  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  008.倒档离合器的适应电流(9)       $    $  mA     $    $  ANS000.BYTE020  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;

  $)  02.进档离合器的适应电流(9个数值)
  $  02.进档离合器的适应电流(9个数值)
  $  REQ000:7E1 03 22 15 05 00 00 00 00       $  ANS000:7E9 03 22 15 05 00 00 00 00

  $  000.进档离合器的适应电流(1)       $    $  mA     $    $  ANS000.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  001.进档离合器的适应电流(2)       $    $  mA     $    $  ANS000.BYTE006  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  002.进档离合器的适应电流(3)       $    $  mA     $    $  ANS000.BYTE008  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  003.进档离合器的适应电流(4)       $    $  mA     $    $  ANS000.BYTE010  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  004.进档离合器的适应电流(5)       $    $  mA     $    $  ANS000.BYTE012  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  005.进档离合器的适应电流(6)       $    $  mA     $    $  ANS000.BYTE014  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  006.进档离合器的适应电流(7)       $    $  mA     $    $  ANS000.BYTE016  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  007.进档离合器的适应电流(8)       $    $  mA     $    $  ANS000.BYTE018  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;
  $  008.进档离合器的适应电流(9)       $    $  mA     $    $  ANS000.BYTE020  $  if(x1<0x80)y=(x1*0x100+x2)*0.01; else y=(x1*0x100+x2-65536)*0.01;

  $)  03.倒档离合器的累积训练值(9个数值)
  $  03.倒档离合器的累积训练值(9个数值)
  $  REQ000:7E1 03 22 15 06 00 00 00 00       $  ANS000:7E9 03 22 15 06 00 00 00 00

  $  000.倒档离合器的累积训练值(1)       $    $  mA     $    $  ANS000.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  001.倒档离合器的累积训练值(2)       $    $  mA     $    $  ANS000.BYTE006  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  002.倒档离合器的累积训练值(3)       $    $  mA     $    $  ANS000.BYTE008  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  003.倒档离合器的累积训练值(4)       $    $  mA     $    $  ANS000.BYTE010  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  004.倒档离合器的累积训练值(5)       $    $  mA     $    $  ANS000.BYTE012  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  005.倒档离合器的累积训练值(6)       $    $  mA     $    $  ANS000.BYTE014  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  006.倒档离合器的累积训练值(7)       $    $  mA     $    $  ANS000.BYTE016  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  007.倒档离合器的累积训练值(8)       $    $  mA     $    $  ANS000.BYTE018  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  008.倒档离合器的累积训练值(9)       $    $  mA     $    $  ANS000.BYTE020  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;

  $)  04.进档离合器的累积训练值(9个数值)
  $  04.进档离合器的累积训练值(9个数值)
  $  REQ000:7E1 03 22 15 07 00 00 00 00       $  ANS000:7E9 03 22 15 07 00 00 00 00

  $  000.进档离合器的累积训练值(1)       $    $  mA     $    $  ANS000.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  001.进档离合器的累积训练值(2)       $    $  mA     $    $  ANS000.BYTE006  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  002.进档离合器的累积训练值(3)       $    $  mA     $    $  ANS000.BYTE008  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  003.进档离合器的累积训练值(4)       $    $  mA     $    $  ANS000.BYTE010  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  004.进档离合器的累积训练值(5)       $    $  mA     $    $  ANS000.BYTE012  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  005.进档离合器的累积训练值(6)       $    $  mA     $    $  ANS000.BYTE014  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  006.进档离合器的累积训练值(7)       $    $  mA     $    $  ANS000.BYTE016  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  007.进档离合器的累积训练值(8)       $    $  mA     $    $  ANS000.BYTE018  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;
  $  008.进档离合器的累积训练值(9)       $    $  mA     $    $  ANS000.BYTE020  $  if(x1<0x80)y=(x1*0x100+x2)*0.01;

  $)  05.倒档离合器适应的温度点(9个数值)
  $  05.倒档离合器适应的温度点(9个数值)
  $  REQ000:7E1 03 22 16 01 00 00 00 00       $  ANS000:7E9 03 22 16 01 00 00 00 00

  $  000.倒档离合器适应的温度点(1)       $    $  degC     $    $  ANS000.BYTE004  $  y=x1*0x100+x2;
  $  001.倒档离合器适应的温度点(2)       $    $  degC     $    $  ANS000.BYTE006  $  y=x1*0x100+x2;
  $  002.倒档离合器适应的温度点(3)       $    $  degC     $    $  ANS000.BYTE008  $  y=x1*0x100+x2;
  $  003.倒档离合器适应的温度点(4)       $    $  degC     $    $  ANS000.BYTE010  $  y=x1*0x100+x2;
  $  004.倒档离合器适应的温度点(5)       $    $  degC     $    $  ANS000.BYTE012  $  y=x1*0x100+x2;
  $  005.倒档离合器适应的温度点(6)       $    $  degC     $    $  ANS000.BYTE014  $  y=x1*0x100+x2;
  $  006.倒档离合器适应的温度点(7)       $    $  degC     $    $  ANS000.BYTE016  $  y=x1*0x100+x2;
  $  007.倒档离合器适应的温度点(8)       $    $  degC     $    $  ANS000.BYTE018  $  y=x1*0x100+x2;
  $  008.倒档离合器适应的温度点(9)       $    $  degC     $    $  ANS000.BYTE020  $  y=x1*0x100+x2;

  $)  06.进档离合器适应的温度点(9个数值)
  $  06.进档离合器适应的温度点(9个数值)
  $  REQ000:7E1 03 22 16 02 00 00 00 00       $  ANS000:7E9 03 22 16 02 00 00 00 00

  $  000.进档离合器适应的温度点(1)       $    $  degC     $    $  ANS000.BYTE004  $  y=x1*0x100+x2;
  $  001.进档离合器适应的温度点(2)       $    $  degC     $    $  ANS000.BYTE006  $  y=x1*0x100+x2;
  $  002.进档离合器适应的温度点(3)       $    $  degC     $    $  ANS000.BYTE008  $  y=x1*0x100+x2;
  $  003.进档离合器适应的温度点(4)       $    $  degC     $    $  ANS000.BYTE010  $  y=x1*0x100+x2;
  $  004.进档离合器适应的温度点(5)       $    $  degC     $    $  ANS000.BYTE012  $  y=x1*0x100+x2;
  $  005.进档离合器适应的温度点(6)       $    $  degC     $    $  ANS000.BYTE014  $  y=x1*0x100+x2;
  $  006.进档离合器适应的温度点(7)       $    $  degC     $    $  ANS000.BYTE016  $  y=x1*0x100+x2;
  $  007.进档离合器适应的温度点(8)       $    $  degC     $    $  ANS000.BYTE018  $  y=x1*0x100+x2;
  $  008.进档离合器适应的温度点(9)       $    $  degC     $    $  ANS000.BYTE020  $  y=x1*0x100+x2;

  $)  07.距离比较阈值启动自适应倒档离合器（9个值）
  $  07.距离比较阈值启动自适应倒档离合器（9个值）
  $  REQ000:7E1 03 22 16 03 00 00 00 00       $  ANS000:7E9 03 22 16 03 00 00 00 00

  $  000.距离比较阈值启动自适应倒档离合器(1)       $    $  /     $    $  ANS000.BYTE004  $  y=x1*0x100+x2;
  $  001.距离比较阈值启动自适应倒档离合器(2)       $    $  /     $    $  ANS000.BYTE006  $  y=x1*0x100+x2;
  $  002.距离比较阈值启动自适应倒档离合器(3)       $    $  /     $    $  ANS000.BYTE008  $  y=x1*0x100+x2;
  $  003.距离比较阈值启动自适应倒档离合器(4)       $    $  /     $    $  ANS000.BYTE010  $  y=x1*0x100+x2;
  $  004.距离比较阈值启动自适应倒档离合器(5)       $    $  /     $    $  ANS000.BYTE012  $  y=x1*0x100+x2;
  $  005.距离比较阈值启动自适应倒档离合器(6)       $    $  /     $    $  ANS000.BYTE014  $  y=x1*0x100+x2;
  $  006.距离比较阈值启动自适应倒档离合器(7)       $    $  /     $    $  ANS000.BYTE016  $  y=x1*0x100+x2;
  $  007.距离比较阈值启动自适应倒档离合器(8)       $    $  /     $    $  ANS000.BYTE018  $  y=x1*0x100+x2;
  $  008.距离比较阈值启动自适应倒档离合器(9)       $    $  /     $    $  ANS000.BYTE020  $  y=x1*0x100+x2;

  $)  08.距离比较阈值启动自适应前进离合器（9个值）
  $  08.距离比较阈值启动自适应前进离合器（9个值）
  $  REQ000:7E1 03 22 16 04 00 00 00 00       $  ANS000:7E9 03 22 16 04 00 00 00 00

  $  000.距离比较阈值启动自适应前进离合器(1)       $    $  /     $    $  ANS000.BYTE004  $  y=x1*0x100+x2;
  $  001.距离比较阈值启动自适应前进离合器(2)       $    $  /     $    $  ANS000.BYTE006  $  y=x1*0x100+x2;
  $  002.距离比较阈值启动自适应前进离合器(3)       $    $  /     $    $  ANS000.BYTE008  $  y=x1*0x100+x2;
  $  003.距离比较阈值启动自适应前进离合器(4)       $    $  /     $    $  ANS000.BYTE010  $  y=x1*0x100+x2;
  $  004.距离比较阈值启动自适应前进离合器(5)       $    $  /     $    $  ANS000.BYTE012  $  y=x1*0x100+x2;
  $  005.距离比较阈值启动自适应前进离合器(6)       $    $  /     $    $  ANS000.BYTE014  $  y=x1*0x100+x2;
  $  006.距离比较阈值启动自适应前进离合器(7)       $    $  /     $    $  ANS000.BYTE016  $  y=x1*0x100+x2;
  $  007.距离比较阈值启动自适应前进离合器(8)       $    $  /     $    $  ANS000.BYTE018  $  y=x1*0x100+x2;
  $  008.距离比较阈值启动自适应前进离合器(9)       $    $  /     $    $  ANS000.BYTE020  $  y=x1*0x100+x2;

  $)  09.最大计数调速器倒档离合器中的VAC部分（9个值）
  $  09.最大计数调速器倒档离合器中的VAC部分（9个值）
  $  REQ000:7E1 03 22 16 05 00 00 00 00       $  ANS000:7E9 03 22 16 05 00 00 00 00

  $  000.最大计数调速器倒档离合器中的VAC部分(1)       $    $  /     $    $  ANS000.BYTE004  $  y=x;
  $  001.最大计数调速器倒档离合器中的VAC部分(2)       $    $  /     $    $  ANS000.BYTE005  $  y=x;
  $  002.最大计数调速器倒档离合器中的VAC部分(3)       $    $  /     $    $  ANS000.BYTE006  $  y=x;
  $  003.最大计数调速器倒档离合器中的VAC部分(4)       $    $  /     $    $  ANS000.BYTE007  $  y=x;
  $  004.最大计数调速器倒档离合器中的VAC部分(5)       $    $  /     $    $  ANS000.BYTE008  $  y=x;
  $  005.最大计数调速器倒档离合器中的VAC部分(6)       $    $  /     $    $  ANS000.BYTE009  $  y=x;
  $  006.最大计数调速器倒档离合器中的VAC部分(7)       $    $  /     $    $  ANS000.BYTE010  $  y=x;
  $  007.最大计数调速器倒档离合器中的VAC部分(8)       $    $  /     $    $  ANS000.BYTE011  $  y=x;
  $  008.最大计数调速器倒档离合器中的VAC部分(9)       $    $  /     $    $  ANS000.BYTE012  $  y=x;

  $)  10.调度器前进离合器中最大计数VAC部分
  $  10.调度器前进离合器中最大计数VAC部分
  $  REQ000:7E1 03 22 16 06 00 00 00 00       $  ANS000:7E9 03 22 16 06 00 00 00 00

  $  000.调度器前进离合器中最大计数VAC部分(1)       $    $  /     $    $  ANS000.BYTE004  $  y=x;
  $  001.调度器前进离合器中最大计数VAC部分(2)       $    $  /     $    $  ANS000.BYTE005  $  y=x;
  $  002.调度器前进离合器中最大计数VAC部分(3)       $    $  /     $    $  ANS000.BYTE006  $  y=x;
  $  003.调度器前进离合器中最大计数VAC部分(4)       $    $  /     $    $  ANS000.BYTE007  $  y=x;
  $  004.调度器前进离合器中最大计数VAC部分(5)       $    $  /     $    $  ANS000.BYTE008  $  y=x;
  $  005.调度器前进离合器中最大计数VAC部分(6)       $    $  /     $    $  ANS000.BYTE009  $  y=x;
  $  006.调度器前进离合器中最大计数VAC部分(7)       $    $  /     $    $  ANS000.BYTE010  $  y=x;
  $  007.调度器前进离合器中最大计数VAC部分(8)       $    $  /     $    $  ANS000.BYTE011  $  y=x;
  $  008.调度器前进离合器中最大计数VAC部分(9)       $    $  /     $    $  ANS000.BYTE012  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E1 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7E1 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
