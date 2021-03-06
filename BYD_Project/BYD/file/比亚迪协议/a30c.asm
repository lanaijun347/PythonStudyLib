
    车型ID：a30c

    模拟：协议模拟-->a30c

;******************************************************************************************************************************************************

    通讯线: $~07$~07$~10400

进入命令:

  $~  REQ000:81 11 F1 81 04       $~  ANS000:81 11 F1 81 04
  $~  REQ001:82 11 F1 10 81 15       $~  ANS001:82 11 F1 10 81 15

空闲命令:

  $!  REQ000:81 11 F1 3E C1       $!  ANS000:81 11 F1 3E C1

退出命令:

  $@  REQ000:81 11 F1 82 05       $@  ANS000:81 11 F1 82 05


;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:84 11 F1 19 02 FF 00 A0       $#  ANS000:84 11 F1 19 02 FF 00 A0

  ANS000.BYTE04 控制故障码个数，从$#ANS000.BYTE5$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a30c0000


  $#  01.读历史故障码
  $#  REQ000:84 11 F1 19 10 FF 00 AE       $#  ANS000:84 11 F1 19 10 FF 00 AE

  ANS000.BYTE04 控制故障码个数，从$#ANS000.BYTE5$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a30c0000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
  <FUNCTION type="0" num="1">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:83 11 F1 14 FF 00 98       $$  ANS000:83 11 F1 14 FF 00 98

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:83 11 F1 22 F1 8C 24       $%  ANS000:83 11 F1 22 F1 8C 24
  $%  REQ001:83 11 F1 22 F1 90 28       $%  ANS001:83 11 F1 22 F1 90 28
  $%  REQ002:83 11 F1 22 F1 92 2A       $%  ANS002:83 11 F1 22 F1 92 2A
  $%  REQ003:83 11 F1 22 F1 94 2C       $%  ANS003:83 11 F1 22 F1 94 2C
  $%  REQ004:83 11 F1 22 F1 95 2D       $%  ANS004:83 11 F1 22 F1 95 2D
  $%  REQ005:83 11 F1 22 F1 98 30       $%  ANS005:83 11 F1 22 F1 98 30
  $%  REQ006:83 11 F1 22 F1 99 31       $%  ANS006:83 11 F1 22 F1 99 31

  $%  000:ECU序列号:                       $%    $%  ANS000.BYTE006  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $%  001:VIN码:                           $%    $%  ANS001.BYTE006  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  002:系统厂商ECU硬件号:               $%    $%  ANS002.BYTE006  $%  HEX(x1,x2,x3,x4);
  $%  003:系统厂商ECU软件号:               $%    $%  ANS003.BYTE006  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:系统厂商ECU软件版本号:           $%    $%  ANS004.BYTE006  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:维修站代码或诊断仪序列号:        $%    $%  ANS005.BYTE006  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:程序编写日期:                    $%    $%  ANS006.BYTE006  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:83 11 F1 22 00 01 A8       $  ANS000:83 11 F1 22 00 01 A8
  $  REQ001:83 11 F1 22 00 03 AA       $  ANS001:83 11 F1 22 00 03 AA
  $  REQ002:83 11 F1 22 00 04 AB       $  ANS002:83 11 F1 22 00 04 AB
  $  REQ003:83 11 F1 22 00 05 AC       $  ANS003:83 11 F1 22 00 05 AC
  $  REQ004:83 11 F1 22 00 06 AD       $  ANS004:83 11 F1 22 00 06 AD
  $  REQ005:83 11 F1 22 00 07 AE       $  ANS005:83 11 F1 22 00 07 AE
  $  REQ006:83 11 F1 22 00 0B B2       $  ANS006:83 11 F1 22 00 0B B2
  $  REQ007:83 11 F1 22 00 0C B3       $  ANS007:83 11 F1 22 00 0C B3
  $  REQ008:83 11 F1 22 00 0D B4       $  ANS008:83 11 F1 22 00 0D B4
  $  REQ009:83 11 F1 22 00 0E B5       $  ANS009:83 11 F1 22 00 0E B5
  $  REQ010:83 11 F1 22 00 0F B6       $  ANS010:83 11 F1 22 00 0F B6
  $  REQ011:83 11 F1 22 00 11 B8       $  ANS011:83 11 F1 22 00 11 B8
  $  REQ012:83 11 F1 22 00 13 BA       $  ANS012:83 11 F1 22 00 13 BA
  $  REQ013:83 11 F1 22 00 14 BB       $  ANS013:83 11 F1 22 00 14 BB
  $  REQ014:83 11 F1 22 00 15 BC       $  ANS014:83 11 F1 22 00 15 BC
  $  REQ015:83 11 F1 22 00 1C C3       $  ANS015:83 11 F1 22 00 1C C3
  $  REQ016:83 11 F1 22 00 1F C6       $  ANS016:83 11 F1 22 00 1F C6
  $  REQ017:83 11 F1 22 00 21 C8       $  ANS017:83 11 F1 22 00 21 C8
  $  REQ018:83 11 F1 22 00 2E D5       $  ANS018:83 11 F1 22 00 2E D5
  $  REQ019:83 11 F1 22 00 2F D6       $  ANS019:83 11 F1 22 00 2F D6
  $  REQ020:83 11 F1 22 00 30 D7       $  ANS020:83 11 F1 22 00 30 D7
  $  REQ021:83 11 F1 22 00 31 D8       $  ANS021:83 11 F1 22 00 31 D8
  $  REQ022:83 11 F1 22 00 33 DA       $  ANS022:83 11 F1 22 00 33 DA
  $  REQ023:83 11 F1 22 00 3C E3       $  ANS023:83 11 F1 22 00 3C E3
  $  REQ024:83 11 F1 22 00 42 E9       $  ANS024:83 11 F1 22 00 42 E9
  $  REQ025:83 11 F1 22 00 43 EA       $  ANS025:83 11 F1 22 00 43 EA
  $  REQ026:83 11 F1 22 00 44 EB       $  ANS026:83 11 F1 22 00 44 EB
  $  REQ027:83 11 F1 22 00 45 EC       $  ANS027:83 11 F1 22 00 45 EC
  $  REQ028:83 11 F1 22 00 47 EE       $  ANS028:83 11 F1 22 00 47 EE
  $  REQ029:83 11 F1 22 00 49 F0       $  ANS029:83 11 F1 22 00 49 F0
  $  REQ030:83 11 F1 22 00 4A F1       $  ANS030:83 11 F1 22 00 4A F1
  $  REQ031:83 11 F1 22 00 4D F4       $  ANS031:83 11 F1 22 00 4D F4
  $  REQ032:83 11 F1 22 11 00 B8       $  ANS032:83 11 F1 22 11 00 B8
  $  REQ033:83 11 F1 22 11 01 B9       $  ANS033:83 11 F1 22 11 01 B9
  $  REQ034:83 11 F1 22 11 02 BA       $  ANS034:83 11 F1 22 11 02 BA
  $  REQ035:83 11 F1 22 11 03 BB       $  ANS035:83 11 F1 22 11 03 BB
  $  REQ036:83 11 F1 22 11 04 BC       $  ANS036:83 11 F1 22 11 04 BC
  $  REQ037:83 11 F1 22 11 41 F9       $  ANS037:83 11 F1 22 11 41 F9
  $  REQ038:83 11 F1 22 11 44 FC       $  ANS038:83 11 F1 22 11 44 FC
  $  REQ039:83 11 F1 22 11 45 FD       $  ANS039:83 11 F1 22 11 45 FD
  $  REQ040:83 11 F1 22 11 46 FE       $  ANS040:83 11 F1 22 11 46 FE
  $  REQ041:83 11 F1 22 11 4B 03       $  ANS041:83 11 F1 22 11 4B 03
  $  REQ042:83 11 F1 22 11 4E 06       $  ANS042:83 11 F1 22 11 4E 06
  $  REQ043:83 11 F1 22 11 52 0A       $  ANS043:83 11 F1 22 11 52 0A
  $  REQ044:83 11 F1 22 11 55 0D       $  ANS044:83 11 F1 22 11 55 0D
  $  REQ045:83 11 F1 22 11 5E 16       $  ANS045:83 11 F1 22 11 5E 16
  $  REQ046:83 11 F1 22 11 64 1C       $  ANS046:83 11 F1 22 11 64 1C
  $  REQ047:83 11 F1 22 11 6F 27       $  ANS047:83 11 F1 22 11 6F 27
  $  REQ048:83 11 F1 22 11 70 28       $  ANS048:83 11 F1 22 11 70 28
  $  REQ049:83 11 F1 22 11 71 29       $  ANS049:83 11 F1 22 11 71 29
  $  REQ050:83 11 F1 22 11 7C 34       $  ANS050:83 11 F1 22 11 7C 34
  $  REQ051:83 11 F1 22 11 90 48       $  ANS051:83 11 F1 22 11 90 48
  $  REQ052:83 11 F1 22 11 92 4A       $  ANS052:83 11 F1 22 11 92 4A
  $  REQ053:83 11 F1 22 11 93 4B       $  ANS053:83 11 F1 22 11 93 4B
  $  REQ054:83 11 F1 22 11 9B 53       $  ANS054:83 11 F1 22 11 9B 53
  $  REQ055:83 11 F1 22 11 9D 55       $  ANS055:83 11 F1 22 11 9D 55
  $  REQ056:83 11 F1 22 11 9E 56       $  ANS056:83 11 F1 22 11 9E 56
  $  REQ057:83 11 F1 22 11 A0 58       $  ANS057:83 11 F1 22 11 A0 58
  $  REQ058:83 11 F1 22 11 A1 59       $  ANS058:83 11 F1 22 11 A1 59
  $  REQ059:83 11 F1 22 11 A3 5B       $  ANS059:83 11 F1 22 11 A3 5B
  $  REQ060:83 11 F1 22 11 A6 5E       $  ANS060:83 11 F1 22 11 A6 5E
  $  REQ061:83 11 F1 22 11 AC 64       $  ANS061:83 11 F1 22 11 AC 64
  $  REQ062:83 11 F1 22 11 BB 73       $  ANS062:83 11 F1 22 11 BB 73
  $  REQ063:83 11 F1 22 11 BD 75       $  ANS063:83 11 F1 22 11 BD 75
  $  REQ064:83 11 F1 22 11 BE 76       $  ANS064:83 11 F1 22 11 BE 76
  $  REQ065:83 11 F1 22 11 C0 78       $  ANS065:83 11 F1 22 11 C0 78
  $  REQ066:83 11 F1 22 11 C1 79       $  ANS066:83 11 F1 22 11 C1 79
  $  REQ067:83 11 F1 22 11 D7 8F       $  ANS067:83 11 F1 22 11 D7 8F
  $  REQ068:83 11 F1 22 11 E4 9C       $  ANS068:83 11 F1 22 11 E4 9C
  $  REQ069:83 11 F1 22 11 E6 9E       $  ANS069:83 11 F1 22 11 E6 9E
  $  REQ070:83 11 F1 22 11 E8 A0       $  ANS070:83 11 F1 22 11 E8 A0
  $  REQ071:83 11 F1 22 12 00 B9       $  ANS071:83 11 F1 22 12 00 B9
  $  REQ072:83 11 F1 22 12 01 BA       $  ANS072:83 11 F1 22 12 01 BA
  $  REQ073:83 11 F1 22 12 02 BB       $  ANS073:83 11 F1 22 12 02 BB
  $  REQ074:83 11 F1 22 12 03 BC       $  ANS074:83 11 F1 22 12 03 BC
  $  REQ075:83 11 F1 22 12 04 BD       $  ANS075:83 11 F1 22 12 04 BD
  $  REQ076:83 11 F1 22 12 05 BE       $  ANS076:83 11 F1 22 12 05 BE
  $  REQ077:83 11 F1 22 12 06 BF       $  ANS077:83 11 F1 22 12 06 BF
  $  REQ078:83 11 F1 22 12 07 C0       $  ANS078:83 11 F1 22 12 07 C0
  $  REQ079:83 11 F1 22 12 08 C1       $  ANS079:83 11 F1 22 12 08 C1
  $  REQ080:83 11 F1 22 12 12 CB       $  ANS080:83 11 F1 22 12 12 CB
  $  REQ081:83 11 F1 22 12 1A D3       $  ANS081:83 11 F1 22 12 1A D3
  $  REQ082:83 11 F1 22 12 27 E0       $  ANS082:83 11 F1 22 12 27 E0
  $  REQ083:83 11 F1 22 12 41 FA       $  ANS083:83 11 F1 22 12 41 FA
  $  REQ084:83 11 F1 22 12 43 FC       $  ANS084:83 11 F1 22 12 43 FC
  $  REQ085:83 11 F1 22 12 92 4B       $  ANS085:83 11 F1 22 12 92 4B
  $  REQ086:83 11 F1 22 12 A7 60       $  ANS086:83 11 F1 22 12 A7 60
  $  REQ087:83 11 F1 22 12 B0 69       $  ANS087:83 11 F1 22 12 B0 69
  $  REQ088:83 11 F1 22 12 B1 6A       $  ANS088:83 11 F1 22 12 B1 6A
  $  REQ089:83 11 F1 22 12 B4 6D       $  ANS089:83 11 F1 22 12 B4 6D
  $  REQ090:83 11 F1 22 12 B7 70       $  ANS090:83 11 F1 22 12 B7 70
  $  REQ091:83 11 F1 22 12 B8 71       $  ANS091:83 11 F1 22 12 B8 71
  $  REQ092:83 11 F1 22 12 C5 7E       $  ANS092:83 11 F1 22 12 C5 7E
  $  REQ093:83 11 F1 22 12 D4 8D       $  ANS093:83 11 F1 22 12 D4 8D
  $  REQ094:83 11 F1 22 12 E4 9D       $  ANS094:83 11 F1 22 12 E4 9D
  $  REQ095:83 11 F1 22 12 E5 9E       $  ANS095:83 11 F1 22 12 E5 9E
  $  REQ096:83 11 F1 22 12 ED A6       $  ANS096:83 11 F1 22 12 ED A6
  $  REQ097:83 11 F1 22 13 EF A9       $  ANS097:83 11 F1 22 13 EF A9
  $  REQ098:83 11 F1 22 13 1E D8       $  ANS098:83 11 F1 22 13 1E D8
  $  REQ099:83 11 F1 22 13 3C F6       $  ANS099:83 11 F1 22 13 3C F6
  $  REQ100:83 11 F1 22 13 3D F7       $  ANS100:83 11 F1 22 13 3D F7
  $  REQ101:83 11 F1 22 13 3E F8       $  ANS101:83 11 F1 22 13 3E F8
  $  REQ102:83 11 F1 22 13 3F F9       $  ANS102:83 11 F1 22 13 3F F9
  $  REQ103:83 11 F1 22 13 44 FE       $  ANS103:83 11 F1 22 13 44 FE
  $  REQ104:83 11 F1 22 13 45 FF       $  ANS104:83 11 F1 22 13 45 FF
  $  REQ105:83 11 F1 22 13 46 00       $  ANS105:83 11 F1 22 13 46 00
  $  REQ106:83 11 F1 22 13 C0 7A       $  ANS106:83 11 F1 22 13 C0 7A
  $  REQ107:83 11 F1 22 13 C1 7B       $  ANS107:83 11 F1 22 13 C1 7B
  $  REQ108:83 11 F1 22 14 4B 06       $  ANS108:83 11 F1 22 14 4B 06
  $  REQ109:83 11 F1 22 14 4C 07       $  ANS109:83 11 F1 22 14 4C 07
  $  REQ110:83 11 F1 22 14 69 24       $  ANS110:83 11 F1 22 14 69 24
  $  REQ111:83 11 F1 22 14 71 2C       $  ANS111:83 11 F1 22 14 71 2C
  $  REQ112:83 11 F1 22 14 72 2D       $  ANS112:83 11 F1 22 14 72 2D
  $  REQ113:83 11 F1 22 14 73 2E       $  ANS113:83 11 F1 22 14 73 2E
  $  REQ114:83 11 F1 22 14 74 2F       $  ANS114:83 11 F1 22 14 74 2F
  $  REQ115:83 11 F1 22 14 75 30       $  ANS115:83 11 F1 22 14 75 30
  $  REQ116:83 11 F1 22 14 76 31       $  ANS116:83 11 F1 22 14 76 31
  $  REQ117:83 11 F1 22 14 77 32       $  ANS117:83 11 F1 22 14 77 32
  $  REQ118:83 11 F1 22 14 81 3C       $  ANS118:83 11 F1 22 14 81 3C
  $  REQ119:83 11 F1 22 14 82 3D       $  ANS119:83 11 F1 22 14 82 3D
  $  REQ120:83 11 F1 22 15 00 BC       $  ANS120:83 11 F1 22 15 00 BC
  $  REQ121:83 11 F1 22 15 01 BD       $  ANS121:83 11 F1 22 15 01 BD
  $  REQ122:83 11 F1 22 15 04 C0       $  ANS122:83 11 F1 22 15 04 C0
  $  REQ123:83 11 F1 22 15 09 C5       $  ANS123:83 11 F1 22 15 09 C5
  $  REQ124:83 11 F1 22 15 0B C7       $  ANS124:83 11 F1 22 15 0B C7
  $  REQ125:83 11 F1 22 15 22 DE       $  ANS125:83 11 F1 22 15 22 DE
  $  REQ126:83 11 F1 22 15 3D F9       $  ANS126:83 11 F1 22 15 3D F9
  $  REQ127:83 11 F1 22 15 41 FD       $  ANS127:83 11 F1 22 15 41 FD
  $  REQ128:83 11 F1 22 15 42 FE       $  ANS128:83 11 F1 22 15 42 FE
  $  REQ129:83 11 F1 22 15 51 0D       $  ANS129:83 11 F1 22 15 51 0D
  $  REQ130:83 11 F1 22 16 03 C0       $  ANS130:83 11 F1 22 16 03 C0
  $  REQ131:83 11 F1 22 16 78 35       $  ANS131:83 11 F1 22 16 78 35

  $  000:MIL(故障指示灯)状态                     $    $               $    $  ANS000.BYTE006  $  if(x1&0x80) y=@00a1;else y=@00a2;
  $  001:失火监测                                $    $               $    $  ANS000.BYTE007  $  if(x1&0x01) y=@0203;else y=@01ef;
  $  002:燃油系统监测                            $    $               $    $  ANS000.BYTE007  $  if(x1&0x02) y=@0203;else y=@01ef;
  $  003:综合部件监测                            $    $               $    $  ANS000.BYTE007  $  if(x1&0x04) y=@0203;else y=@01ef;
  $  004:催化剂测试                              $    $               $    $  ANS000.BYTE008  $  if(x1&0x01) y=@0203;else y=@01ef;
  $  005:催化剂加热测试                          $    $               $    $  ANS000.BYTE008  $  if(x1&0x02) y=@0203;else y=@01ef;
  $  006:加强的蒸发净化系统测试                  $    $               $    $  ANS000.BYTE008  $  if(x1&0x04) y=@0203;else y=@01ef;
  $  007:二次空气喷射测试                        $    $               $    $  ANS000.BYTE008  $  if(x1&0x08) y=@0203;else y=@01ef;
  $  008:空调系统冷媒测试                        $    $               $    $  ANS000.BYTE008  $  if(x1&0x10) y=@0203;else y=@01ef;
  $  009:氧传感器测试                            $    $               $    $  ANS000.BYTE008  $  if(x1&0x20) y=@0203;else y=@01ef;
  $  010:氧传感器加热测试                        $    $               $    $  ANS000.BYTE008  $  if(x1&0x40) y=@0203;else y=@01ef;
  $  011:废气再循环系统测试                      $    $               $    $  ANS000.BYTE008  $  if(x1&0x80) y=@0203;else y=@01ef;
  $  012:燃油系统1状态                           $    $               $    $  ANS001.BYTE006  $  if(x1&0x01) y=@0204;else if(x1&0x02) y=@006c;else if(x1&0x04) y=@0205;else if(x1&0x08) y=@0206;else y=@0076;
  $  013:燃油系统2状态                           $    $               $    $  ANS001.BYTE007  $  if(x1&0x01) y=@0204;else if(x1&0x02) y=@006c;else if(x1&0x04) y=@0205;else if(x1&0x08) y=@0206;else y=@0076;
  $  014:计算负载值                              $    $  %            $    $  ANS002.BYTE006  $  y=x1*100.00/255;
  $  015:冷却液温度                              $    $  degree C     $    $  ANS003.BYTE006  $  y=x1-40;
  $  016:短期燃油修正(Bank1)                     $    $  %            $    $  ANS004.BYTE006  $  y=x1*199.22/255-100.00;
  $  017:长期燃油修正(Bank1)                     $    $  %            $    $  ANS005.BYTE006  $  y=x1*199.22/255-100.00;
  $  018:进气绝对压力                            $    $  kPa          $    $  ANS006.BYTE006  $  y=x1;
  $  019:发动机转速                              $    $  rpm          $    $  ANS007.BYTE006  $  y=x1*16320.00/255+x2*63.75/255;
  $  020:车速                                    $    $  km/h         $    $  ANS008.BYTE006  $  y=x1;
  $  021:1缸点火提前角                           $    $  °           $    $  ANS009.BYTE006  $  y=x1*127/255-64;
  $  022:进气温度                                $    $  degree C     $    $  ANS010.BYTE006  $  y=x1-40;
  $  023:绝对节气门位置                          $    $  %            $    $  ANS011.BYTE006  $  y=x1*100.00/255;
  $  024:氧传感器安装位置                        $    $               $    $  ANS012.BYTE006  $  if(x1&0x01) y=@0207;else if(x1&0x02) y=@0208;  else if(x1&0x04)  y=@0209; else if(x1=0x08) y=@020a;  else if(x1&0x10) y=@020b; else if(x1&0x20) y=@020c;  else if(x1&0x40) y=@020d;  else if(x1&0x80) y=@020e;
  $  025:前氧传感器电压                          $    $  V            $    $  ANS013.BYTE006  $  y=x1*1.27/255;
  $  026:前氧传感器短期燃油修正                  $    $  %            $    $  ANS013.BYTE007  $  y=x1*199.22/255-100.00;
  $  027:后氧传感器电压                          $    $  V            $    $  ANS014.BYTE006  $  y=x1*1.27/255;
  $  028:后氧传感器短短期燃油修正                $    $  %            $    $  ANS014.BYTE007  $  y=x1*199.22/255-100.00;
  $  029:OBD系统类型                             $    $               $    $  ANS015.BYTE006  $  if(x==0x01) y=@020f;else if(x==0x02) y=@0210;else if(x==0x03) y=@0211;else if(x==0x04) y=@0016;else if(x==0x05) y=@0212;else if(x==0x06) y=@0213;else if(x==0x07) y=@0214;else if(x==0x08) y=@0215;else if(x==0x09) y=@0216;else if(x==0x0A) y=@0217;else if(x==0x0B) y=@0218;else if(x==0x0C) y=@0219;else if(x==0x0D) y=@021a;else y=@00d6;
  $  030:发动机运行时间                          $    $  秒           $    $  ANS016.BYTE006  $  y=65280*x1/255+x2;
  $  031:故障指示灯亮运行距离                    $    $  km           $    $  ANS017.BYTE006  $  y=65280*x1/255+x2;
  $  032:蒸发器净化率                            $    $  %            $    $  ANS018.BYTE006  $  y=x1*100.00/255;
  $  033:燃油位输入                              $    $  %            $    $  ANS019.BYTE006  $  y=x1*100.00/255;
  $  034:自从故障码清除之后预热次数              $    $  Cycles       $    $  ANS020.BYTE006  $  y=x1;
  $  035:清除故障码后车辆运行距离                $    $  km           $    $  ANS021.BYTE006  $  y=65280*x1/255+x2;
  $  036:大气压力                                $    $  kPa          $    $  ANS022.BYTE006  $  y=x1;
  $  037:B1S1催化剂温度                          $    $  degree C     $    $  ANS023.BYTE006  $  y=6528*x1/255+x2-40;
  $  038:控制模块电压                            $    $  V            $    $  ANS024.BYTE006  $  y=3F(65.280*x1/255+x2*0.001-40);
  $  039:绝对负载值                              $    $  %            $    $  ANS025.BYTE006  $  y=25600.00*x1/255+x2*100.00/255-40;
  $  040:控制等值比率                            $    $  Ratio        $    $  ANS026.BYTE006  $  y=3F(x1*1.991/255);
  $  041:相对节气门位置                          $    $  %            $    $  ANS027.BYTE006  $  y=x1*100.00/255;
  $  042:绝对节气门位置B                         $    $  %            $    $  ANS028.BYTE006  $  y=x1*100.00/255;
  $  043:加速踏板位置D                           $    $  %            $    $  ANS029.BYTE006  $  y=x1*100.00/255;
  $  044:加速踏板位置E                           $    $  %            $    $  ANS030.BYTE006  $  y=x1*100.00/255;
  $  045:命令的节气门激励控制                    $    $  %            $    $  ANS030.BYTE006  $  y=x1*100.00/255;
  $  046:故障灯点亮车辆运行时间                  $    $  分           $    $  ANS031.BYTE006  $  y=65280*x1/255+x2;
  $  047:节气门怠速                              $    $               $    $  ANS032.BYTE006  $  if(x1&0x01)y=@0000;else y=@0001;
  $  048:助力转向                                $    $               $    $  ANS032.BYTE006  $  if(x1&0x08)y=@021b;else y=@0001;
  $  049:空调请求                                $    $               $    $  ANS032.BYTE006  $  if(x1&0x10)y=@0000;else y=@0001;
  $  050:空调离合器                              $    $               $    $  ANS032.BYTE006  $  if(x1&0x20)y=@0000;else y=@0001;
  $  051:催化剂保护模式                          $    $               $    $  ANS032.BYTE006  $  if(x1&0x40)y=@0000;else y=@0001;
  $  052:燃油泵命令开                            $    $               $    $  ANS032.BYTE006  $  if(x1&0x80)y=@0000;else y=@0001;
  $  053:MIL(故障指示灯)                         $    $               $    $  ANS033.BYTE006  $  if(x1&0x04)y=@009f;else y=@00a0;
  $  054:SVS(系统维修指示灯)                     $    $               $    $  ANS033.BYTE006  $  if(x1&0x08)y=@009f;else y=@00a0;
  $  055:低燃油位灯                              $    $               $    $  ANS033.BYTE006  $  if(x1&0x10)y=@009f;else y=@00a0;
  $  056:VIM阀                                   $    $               $    $  ANS033.BYTE006  $  if(x1&0x20)y=@009f;else y=@00a0;
  $  057:断油激活                                $    $               $    $  ANS033.BYTE006  $  if(x1&0x40)y=@009f;else y=@00a0;
  $  058:闭环                                    $    $               $    $  ANS034.BYTE006  $  if(x1&0x01)y=@0000;else y=@0001;
  $  059:前氧传感器就绪                          $    $               $    $  ANS034.BYTE006  $  if(x1&0x02)y=@0000;else y=@0001;
  $  060:车辆节气制止                            $    $               $    $  ANS034.BYTE006  $  if(x1&0x04)y=@0006;else y=@0007;
  $  061:燃油修正学习                            $    $               $    $  ANS034.BYTE006  $  if(x1&0x08)y=@0000;else y=@0001;
  $  062:动力富足                                $    $               $    $  ANS034.BYTE006  $  if(x1&0x10)y=@0000;else y=@0001;
  $  063:爆震存在                                $    $               $    $  ANS034.BYTE006  $  if(x1&0x20)y=@0000;else y=@0001;
  $  064:浓/稀 前氧传感器                        $    $               $    $  ANS034.BYTE006  $  if(x1&0x40)y=@0008;else y=@0009;
  $  065:低速风扇                                $    $               $    $  ANS035.BYTE006  $  if(x1&0x01)y=@009f;else y=@00a0;
  $  066:高速风扇                                $    $               $    $  ANS035.BYTE006  $  if(x1&0x02)y=@009f;else y=@00a0;
  $  067:P/N档                                   $    $               $    $  ANS035.BYTE006  $  if(x1&0x40)y=@021d;else y=@021e;
  $  068:ETC(电子节气门)模式                     $    $               $    $  ANS035.BYTE006  $  if(x1&0x80)y=@0059;else y=@0022;
  $  069:坏路屏蔽失火数据                        $    $               $    $  ANS036.BYTE006  $  if(x1&0x04)y=@0000;else y=@0001;
  $  070:本次钥匙循环凸轮轴信号存在错误          $    $               $    $  ANS036.BYTE006  $  if(x1&0x08)y=@021c;else y=@00be;
  $  071:EEVAP(燃油蒸发系统)出口阀               $    $               $    $  ANS036.BYTE006  $  if(x1&0x10)y=@0000;else y=@0001;
  $  072:EGR(废气再循环)阀关闭位置错误           $    $               $    $  ANS036.BYTE006  $  if(x1&0x20)y=@021c;else y=@00be;
  $  073:怠速使能测试                            $    $               $    $  ANS036.BYTE006  $  if(x1&0x40)y=@021c;else y=@00be;
  $  074:EGR(废气再循环)流量测试允许             $    $               $    $  ANS036.BYTE006  $  if(x1&0x80)y=@021c;else y=@00be;
  $  075:点火电压                                $    $  V            $    $  ANS037.BYTE006  $  y=x1*0.1;
  $  076:空调压力模数转换                        $    $  V            $    $  ANS038.BYTE006  $  y=x1*5.00/255;
  $  077:前氧传感器                              $    $  mV           $    $  ANS039.BYTE006  $  y=x1*1106/255;
  $  078:后氧传感器加热                          $    $  mV           $    $  ANS040.BYTE006  $  y=x1*1106/255;
  $  079:线性EGR(废气再循环)反馈模数转换         $    $  V            $    $  ANS041.BYTE006  $  y=x1*5.00/255;
  $  080:邮箱真空压力模数转换                    $    $  V            $    $  ANS042.BYTE006  $  y=x1*5.00/255;
  $  081:线性规格化的EGR(废气再循环)             $    $  %            $    $  ANS043.BYTE006  $  y=x1*100.00/255;
  $  082:燃油位传感器模数转换                    $    $  V            $    $  ANS044.BYTE006  $  y=x1*5.00/255;
  $  083:发动机凸轮活动                          $    $  计数         $    $  ANS045.BYTE006  $  y=x1;
  $  084:轮速或车速输入                          $    $  kph          $    $  ANS046.BYTE006  $  y=x1;
  $  085:冷却液温度(启动)                        $    $  degree C     $    $  ANS047.BYTE006  $  y=x1-40;
  $  086:EEVAP(燃油蒸发系统)阀占空比             $    $  %            $    $  ANS048.BYTE006  $  y=x1*100.00/255;
  $  087:EGR(废气再循环)占空比                   $    $  %            $    $  ANS049.BYTE006  $  y=x1*99.61/255;
  $  088:前氧传感器主状态                        $    $               $    $  ANS050.BYTE006  $  if(x1&0x03) y=@021f;else if(x1&0x08) y=@0202;else y=@009a;
  $  089:燃油修正单元                            $    $  Cell#        $    $  ANS051.BYTE006  $  y=x1;
  $  090:理想怠速                                $    $  rpm          $    $  ANS052.BYTE006  $  y=x1*3200/256;
  $  091:运输的BPW                               $    $  毫秒         $    $  ANS053.BYTE006  $  y=996.11*x1/255+x2*3.89/255-40;
  $  092:理想的线性EGR(废气再循环)位置           $    $  %            $    $  ANS054.BYTE006  $  y=x1*99.61/255;
  $  093:大气压力                                $    $  kPa          $    $  ANS055.BYTE006  $  y=x1*91.10/255+10.33;
  $  094:空燃比                                  $    $  Ratio        $    $  ANS056.BYTE006  $  y=x1*25.5/255;
  $  095:爆震计数器                              $    $  计数         $    $  ANS057.BYTE006  $  y=x1;
  $  096:发动机运行时间                          $    $  秒           $    $  ANS058.BYTE006  $  y=65280*x1/255+x2;
  $  097:计算的 催化剂温度                       $    $  degree C     $    $  ANS059.BYTE006  $  y=x1*765/255+300;
  $  098:爆震延时                                $    $  °           $    $  ANS060.BYTE006  $  y=x1*22/255;
  $  099:计算的空气流量                          $    $  g/s          $    $  ANS061.BYTE006  $  y=510.00*x1/255+1.99*x2/255;
  $  100:EGR(废气再循环)关闭位置                 $    $  %            $    $  ANS062.BYTE006  $  y=199.22*x1/255+0.78*x2/255;
  $  101:EGR(废气再循环)测试样本计数             $    $  Test         $    $  ANS063.BYTE006  $  y=x1;
  $  102:EGR(废气再循环) EWMA限值                $    $  计数         $    $  ANS064.BYTE006  $  y=65280*x1/255+x2;
  $  103:EGR(废气再循环) EWMA结果(服务)          $    $  计数         $    $  ANS065.BYTE006  $  y=65280*x1/255+x2;
  $  104:EGR(废气再循环)阀位置错误               $    $  计数         $    $  ANS066.BYTE006  $  y=398.44*x1/255+x2*1.56/255;
  $  105:氧传感器(B1-S1)响应稀到浓转变           $    $  计数         $    $  ANS067.BYTE006  $  y=65280*x1/255+x2;
  $  106:汽缸模式失火                            $    $  计数         $    $  ANS068.BYTE006  $  y=65280*x1/255+x2;
  $  107:转换模式失火                            $    $  计数         $    $  ANS069.BYTE006  $  y=65280*x1/255+x2;
  $  108:失火周期延时计数器                      $    $  计数         $    $  ANS070.BYTE006  $  y=x1;
  $  109:失火总计                                $    $  计数         $    $  ANS071.BYTE006  $  y=65280*x1/255+x2;
  $  110:1缸历史失火                             $    $  计数         $    $  ANS072.BYTE006  $  y=65280*x1/255+x2;
  $  111:2缸历史失火                             $    $  计数         $    $  ANS073.BYTE006  $  y=65280*x1/255+x2;
  $  112:3缸历史失火                             $    $  计数         $    $  ANS074.BYTE006  $  y=65280*x1/255+x2;
  $  113:4缸历史失火                             $    $  计数         $    $  ANS075.BYTE006  $  y=65280*x1/255+x2;
  $  114:2缸当前失火                             $    $  计数         $    $  ANS076.BYTE006  $  y=x1;
  $  115:1缸当前失火                             $    $  计数         $    $  ANS077.BYTE006  $  y=x1;
  $  116:3缸当前失火                             $    $  计数         $    $  ANS078.BYTE006  $  y=x1;
  $  117:4缸当前失火                             $    $  计数         $    $  ANS079.BYTE006  $  y=x1;
  $  118:前氧传感器从浓/稀到稀/浓响应效率        $    $  Ratio        $    $  ANS080.BYTE006  $  y=127.50*x1/255+0.50*x2/255;
  $  119:前氧传感器响应浓到稀转化                $    $  计数         $    $  ANS081.BYTE006  $  y=65280*x1/255+x2;
  $  120:发动机里程表                            $    $  km           $    $  ANS081.BYTE006  $  y=652800*x1/255+x2*10;
  $  121:第一次失败后失火故障                    $    $  计数         $    $  ANS082.BYTE006  $  y=65280*x1/255+x2;
  $  122:第一次失败后失火通过                    $    $  计数         $    $  ANS082.BYTE006  $  y=65280*x1/255+x2;
  $  123:前氧传感器响应-稀转浓总时间             $    $  毫秒         $    $  ANS080.BYTE006  $  y=509836.80*x1/255+1991.55*x2/255;
  $  124:前氧传感器响应-浓转稀总时间             $    $  毫秒         $    $  ANS083.BYTE006  $  y=509836.80*x1/255+1991.55*x2/255;
  $  125:前氧传感器响应-稀转浓平均时间           $    $  毫秒         $    $  ANS084.BYTE006  $  y=127.50*x1/255+0.50*x2/255;
  $  126:怠速错误                                $    $  rpm          $    $  ANS085.BYTE006  $  y=8160*x1/255+31.88*x2/255-4064.00;
  $  127:弱缸                                    $    $               $    $  ANS086.BYTE006  $  switxh(x1) 0x00: y=@01f6;0x01: y=@01f7;0x02: y=@01f8;0x03: y=@01f9; 0x04: y=@01fa;0x05: y=@01fb;0x06: y=@01fc;0x07: y=@01fd;0x08: y=@01fe;default: y=@009a;
  $  128:ECT油门踏板位置                         $    $  %            $    $  ANS087.BYTE006  $  y=199.22*x1/255+0.78*x2/255;
  $  129:ECT节气门指示位置                       $    $  %            $    $  ANS088.BYTE006  $  y=199.22*x1/255+0.78*x2/255;
  $  130:ECT踏板位置传感器#1                     $    $  %            $    $  ANS089.BYTE006  $  y=199.22*x1/255+0.78*x2/255;
  $  131:ECT踏板位置传感器#2                     $    $  %            $    $  ANS089.BYTE006  $  y=199.22*x1/255+0.78*x2/255;
  $  132:ECT节气门位置传感器#1                   $    $  %            $    $  ANS090.BYTE006  $  y=199.22*x1/255+0.78*x2/255;
  $  133:ECT节气门位置传感器#2                   $    $  %            $    $  ANS091.BYTE006  $  y=199.22*x1/255+0.78*x2/255;
  $  134:燃油位输出                              $    $  %            $    $  ANS092.BYTE006  $  y=x1*100.00/255;
  $  135:前氧传感器-浓转稀平均时间               $    $  毫秒         $    $  ANS093.BYTE006  $  y=127.50*x1/255+0.50*x2/255;
  $  136:启动进气温度传感器                      $    $  degree C     $    $  ANS094.BYTE006  $  y=x1-40;
  $  137:进气压力差异                            $    $  kPa          $    $  ANS095.BYTE006  $  y=510.00*x1/255+1.99*x2/255-256.00;
  $  138:G传感器                                 $    $               $    $  ANS096.BYTE006  $  y=15.94*x1/255-8.00;
  $  139:TEC尝试转稀                             $    $  计数         $    $  ANS097.BYTE006  $  y=x1;
  $  140:ETC(电子节气门)理想节气门位置           $    $  %            $    $  ANS098.BYTE006  $  y=127.50*x1/255+0.50*x2/255;
  $  141:1缸TEC学习值                            $    $  计数         $    $  ANS099.BYTE006  $  y=65280*x1/255+x2;
  $  142:2缸TEC学习值                            $    $  计数         $    $  ANS100.BYTE006  $  y=65280*x1/255+x2;
  $  143:3缸TEC学习值                            $    $  计数         $    $  ANS101.BYTE006  $  y=65280*x1/255+x2;
  $  144:4缸TEC学习值                            $    $  计数         $    $  ANS102.BYTE006  $  y=65280*x1/255+x2;
  $  145:EGR(废气再循环) EWMA结果                $    $  计数         $    $  ANS103.BYTE006  $  y=65280*x1/255+x2;
  $  146:EGR(废气再循环)减速测试通过计数器       $    $  计数         $    $  ANS104.BYTE006  $  y=65280*x1/255+x2;
  $  147:EGR(废气再循环)减速测试失败计数器       $    $  计数         $    $  ANS105.BYTE006  $  y=65280*x1/255+x2;
  $  148:爆震传感器失败计数                      $    $  计数         $    $  ANS106.BYTE006  $  y=x1;
  $  149:爆震传感器采样计数                      $    $  计数         $    $  ANS106.BYTE006  $  y=x1;
  $  150:爆震系统故障高计数器                    $    $  计数         $    $  ANS107.BYTE006  $  y=x1;
  $  151:爆震系统故障低计数器                    $    $  计数         $    $  ANS107.BYTE006  $  y=x1;
  $  152:爆震系统采样计数器                      $    $  计数         $    $  ANS107.BYTE006  $  y=x1;
  $  153:怠速催化剂监测氧气存储EWMA值            $    $  秒           $    $  ANS108.BYTE006  $  y=1020.00*x1/255+3.98*x2/255;
  $  154:怠速催化剂氧气存储失败限值              $    $  秒           $    $  ANS109.BYTE006  $  y=1020.00*x1/255+3.98*x2/255;
  $  155:空调压力                                $    $  kPa          $    $  ANS110.BYTE006  $  y=8160*x1/255+32*x2/255-4096;
  $  156:进气凸轮相位理想位置                    $    $               $    $  ANS111.BYTE006  $  y=x1-127;
  $  157:排气凸轮相位理想位置                    $    $               $    $  ANS112.BYTE006  $  y=x1-127;
  $  158:进气凸轮相位实际位置                    $    $               $    $  ANS113.BYTE006  $  y=x1-127;
  $  159:排气凸轮相位实际位置                    $    $               $    $  ANS114.BYTE006  $  y=x1-127;
  $  160:进气凸轮相位占空因素                    $    $  E%           $    $  ANS115.BYTE006  $  y=x1/255;
  $  161:排气凸轮相位占空因素                    $    $  E%           $    $  ANS116.BYTE006  $  y=x1/255;
  $  162:凸轮相位主要使能打包标志                $    $               $    $  ANS117.BYTE006  $  if(x1&0x01)y=@0000;else y=@0001;
  $  163:凸轮相位指示所有诊断无关使能条件        $    $               $    $  ANS117.BYTE006  $  if(x1&0x02)y=@0000;else y=@0001;
  $  164:当前前氧传感器加热                      $    $  E            $    $  ANS118.BYTE006  $  y=1305.60*x1/255+5.10*x2/255;
  $  165:当前后氧传感器加热                      $    $  E            $    $  ANS119.BYTE006  $  y=1305.60*x1/255+5.10*x2/255;
  $  166:ICMD使能的最小催化温度                  $    $  degree C     $    $  ANS120.BYTE006  $  y=4080.00*x1/255+16.00*x2/255-2048.00;
  $  167:ICMD使能的最大催化温度                  $    $  degree C     $    $  ANS121.BYTE006  $  y=4080.00*x1/255+16.00*x2/255-2048.00;
  $  168:怠速催化剂监测测试状态                  $    $               $    $  ANS122.BYTE006  $  switxh(x1) 0x01: y=@01ff;0x02: y=@0200;0x04: y=@0201;0x08: y=@0202;default: y=@009a;
  $  169:怠速催化剂监测时间-最后测试结果         $    $  s            $    $  ANS123.BYTE006  $  y=1020.00*x1/255+3.98*x2/255;
  $  170:怠速催化剂监测状态位置                  $    $  s            $    $  ANS124.BYTE006  $  y=1020.00*x1/255+3.98*x2/255;
  $  171:ETC(电子节气门)无动力的节气门位置       $    $  %            $    $  ANS125.BYTE006  $  y=127.50*x1/255+0.50*x2/255;
  $  172:巡航速度                                $    $  kph          $    $  ANS126.BYTE006  $  y=510*x1/255+2*x2/255-256;
  $  173:巡航目标速度                            $    $  kph          $    $  ANS127.BYTE006  $  y=510*x1/255;
  $  174:巡航目标发动机扭矩                      $    $  degree C     $    $  ANS128.BYTE006  $  y=4080*x1/255+16*x2/255-2048;
  $  175:巡航激活灯                              $    $               $    $  ANS129.BYTE006  $  if(x1&0x01)y=@009f;else y=@00a0;
  $  176:巡航使能灯                              $    $               $    $  ANS129.BYTE006  $  if(x1&0x02)y=@009f;else y=@00a0;
  $  177:决定VCPC使能的油温                      $    $  degree C     $    $  ANS130.BYTE006  $  y=x1-40;
  $  178:当前前氧传感器加热                      $    $  Amps         $    $  ANS131.BYTE006  $  y=x1*127/255;
  $  179:当前后氧传感器加热                      $    $  Amps         $    $  ANS131.BYTE006  $  y=x1*127/255;

;******************************************************************************************************************************************************

