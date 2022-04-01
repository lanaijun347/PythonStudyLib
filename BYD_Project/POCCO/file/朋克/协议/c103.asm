
    车型ID：c103

    模拟：协议模拟-->c103

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~790

进入命令:

  $~  REQ000:710 02 10 03 00 00 00 00 00       $~  ANS000:790 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:710 02 3E 00 00 00 00 00 00       $!  ANS000:790 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:710 03 19 02 09 00 00 00 00       $#  ANS000:790 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/c3000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:710 04 14 FF FF FF 00 00 00       $$  ANS000:790 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:710 03 22 F1 87 00 00 00 00       $%  ANS000:790 03 22 F1 87 00 00 00 00
  $%  REQ001:710 03 22 F1 8A 00 00 00 00       $%  ANS001:790 03 22 F1 8A 00 00 00 00
  $%  REQ002:710 03 22 F1 8C 00 00 00 00       $%  ANS002:790 03 22 F1 8C 00 00 00 00
  $%  REQ003:710 03 22 F1 90 00 00 00 00       $%  ANS003:790 03 22 F1 90 00 00 00 00
  $%  REQ004:710 03 22 F1 93 00 00 00 00       $%  ANS004:790 03 22 F1 93 00 00 00 00
  $%  REQ005:710 03 22 F1 95 00 00 00 00       $%  ANS005:790 03 22 F1 95 00 00 00 00
  $%  REQ006:710 03 22 F1 98 00 00 00 00       $%  ANS006:790 03 22 F1 98 00 00 00 00
  $%  REQ007:710 03 22 F1 99 00 00 00 00       $%  ANS007:790 03 22 F1 99 00 00 00 00
  $%  REQ008:710 03 22 F1 00 00 00 00 00       $%  ANS008:790 03 22 F1 00 00 00 00 00

  $%  000:零件号:                 $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  001:供应商代码:             $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:ECU流水编号:            $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:车辆识别号(VIN):        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:硬件版本号:             $%    $%  ANS004.BYTE004  $%  SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@001e,X1,@001f,X2,@0020,X6,X5,X4,X3);
  $%  005:软件版本号:             $%    $%  ANS005.BYTE004  $%  SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@001e,X1,@0021,X2,@0020,X6,X5,X4,X3);
  $%  006:测试仪序列号:           $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  007:软件编程日期:           $%    $%  ANS007.BYTE004  $%  SPRINTF([%02X%s%02X%s%02X%s],X1,@0022,X2,@0023,X3,@0024);
  $%  008:电池包溯源编码:         $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:710 03 22 1E 00 00 00 00 00       $  ANS000:790 03 22 1E 00 00 00 00 00
  $  REQ001:710 03 22 1E 01 00 00 00 00       $  ANS001:790 03 22 1E 01 00 00 00 00
  $  REQ002:710 03 22 1E 02 00 00 00 00       $  ANS002:790 03 22 1E 02 00 00 00 00
  $  REQ003:710 03 22 1E 03 00 00 00 00       $  ANS003:790 03 22 1E 03 00 00 00 00
  $  REQ004:710 03 22 1E 04 00 00 00 00       $  ANS004:790 03 22 1E 04 00 00 00 00
  $  REQ005:710 03 22 1E 05 00 00 00 00       $  ANS005:790 03 22 1E 05 00 00 00 00
  $  REQ006:710 03 22 1E 06 00 00 00 00       $  ANS006:790 03 22 1E 06 00 00 00 00
  $  REQ007:710 03 22 1E 07 00 00 00 00       $  ANS007:790 03 22 1E 07 00 00 00 00
  $  REQ008:710 03 22 1E 08 00 00 00 00       $  ANS008:790 03 22 1E 08 00 00 00 00
  $  REQ009:710 03 22 1E 09 00 00 00 00       $  ANS009:790 03 22 1E 09 00 00 00 00
  $  REQ010:710 03 22 1E 0A 00 00 00 00       $  ANS010:790 03 22 1E 0A 00 00 00 00
  $  REQ011:710 03 22 1E 0B 00 00 00 00       $  ANS011:790 03 22 1E 0B 00 00 00 00
  $  REQ012:710 03 22 1E 0C 00 00 00 00       $  ANS012:790 03 22 1E 0C 00 00 00 00
  $  REQ013:710 03 22 1E 0D 00 00 00 00       $  ANS013:790 03 22 1E 0D 00 00 00 00
  $  REQ014:710 03 22 1E 0E 00 00 00 00       $  ANS014:790 03 22 1E 0E 00 00 00 00
  $  REQ015:710 03 22 1E 0F 00 00 00 00       $  ANS015:790 03 22 1E 0F 00 00 00 00
  $  REQ016:710 03 22 1E 10 00 00 00 00       $  ANS016:790 03 22 1E 10 00 00 00 00
  $  REQ017:710 03 22 1E 11 00 00 00 00       $  ANS017:790 03 22 1E 11 00 00 00 00
  $  REQ018:710 03 22 1E 12 00 00 00 00       $  ANS018:790 03 22 1E 12 00 00 00 00
  $  REQ019:710 03 22 1E 13 00 00 00 00       $  ANS019:790 03 22 1E 13 00 00 00 00
  $  REQ020:710 03 22 1E 14 00 00 00 00       $  ANS020:790 03 22 1E 14 00 00 00 00
  $  REQ021:710 03 22 1E 15 00 00 00 00       $  ANS021:790 03 22 1E 15 00 00 00 00
  $  REQ022:710 03 22 1E 16 00 00 00 00       $  ANS022:790 03 22 1E 16 00 00 00 00
  $  REQ023:710 03 22 1E 17 00 00 00 00       $  ANS023:790 03 22 1E 17 00 00 00 00
  $  REQ024:710 03 22 1E 18 00 00 00 00       $  ANS024:790 03 22 1E 18 00 00 00 00
  $  REQ025:710 03 22 1E 19 00 00 00 00       $  ANS025:790 03 22 1E 19 00 00 00 00
  $  REQ026:710 03 22 1E 1A 00 00 00 00       $  ANS026:790 03 22 1E 1A 00 00 00 00
  $  REQ027:710 03 22 1E 1B 00 00 00 00       $  ANS027:790 03 22 1E 1B 00 00 00 00
  $  REQ028:710 03 22 1E 1C 00 00 00 00       $  ANS028:790 03 22 1E 1C 00 00 00 00
  $  REQ029:710 03 22 1E 1D 00 00 00 00       $  ANS029:790 03 22 1E 1D 00 00 00 00
  $  REQ030:710 03 22 1E 1E 00 00 00 00       $  ANS030:790 03 22 1E 1E 00 00 00 00
  $  REQ031:710 03 22 1E 1F 00 00 00 00       $  ANS031:790 03 22 1E 1F 00 00 00 00
  $  REQ032:710 03 22 1E 20 00 00 00 00       $  ANS032:790 03 22 1E 20 00 00 00 00
  $  REQ033:710 03 22 1E 21 00 00 00 00       $  ANS033:790 03 22 1E 21 00 00 00 00
  $  REQ034:710 03 22 1E 22 00 00 00 00       $  ANS034:790 03 22 1E 22 00 00 00 00
  $  REQ035:710 03 22 1E 23 00 00 00 00       $  ANS035:790 03 22 1E 23 00 00 00 00
  $  REQ036:710 03 22 1E 24 00 00 00 00       $  ANS036:790 03 22 1E 24 00 00 00 00
  $  REQ037:710 03 22 1E 25 00 00 00 00       $  ANS037:790 03 22 1E 25 00 00 00 00
  $  REQ038:710 03 22 1E 26 00 00 00 00       $  ANS038:790 03 22 1E 26 00 00 00 00
  $  REQ039:710 03 22 1E 27 00 00 00 00       $  ANS039:790 03 22 1E 27 00 00 00 00
  $  REQ040:710 03 22 1E 28 00 00 00 00       $  ANS040:790 03 22 1E 28 00 00 00 00
  $  REQ041:710 03 22 1E A0 00 00 00 00       $  ANS041:790 03 22 1E A0 00 00 00 00
  $  REQ042:710 03 22 1E A1 00 00 00 00       $  ANS042:790 03 22 1E A1 00 00 00 00
  $  REQ043:710 03 22 1E A2 00 00 00 00       $  ANS043:790 03 22 1E A2 00 00 00 00
  $  REQ044:710 03 22 1E A3 00 00 00 00       $  ANS044:790 03 22 1E A3 00 00 00 00
  $  REQ045:710 03 22 1E A4 00 00 00 00       $  ANS045:790 03 22 1E A4 00 00 00 00
  $  REQ046:710 03 22 1E A5 00 00 00 00       $  ANS046:790 03 22 1E A5 00 00 00 00
  $  REQ047:710 03 22 1E A6 00 00 00 00       $  ANS047:790 03 22 1E A6 00 00 00 00
  $  REQ048:710 03 22 1E A7 00 00 00 00       $  ANS048:790 03 22 1E A7 00 00 00 00
  $  REQ049:710 03 22 1E A8 00 00 00 00       $  ANS049:790 03 22 1E A8 00 00 00 00
  $  REQ050:710 03 22 1E A9 00 00 00 00       $  ANS050:790 03 22 1E A9 00 00 00 00
  $  REQ051:710 03 22 1E AA 00 00 00 00       $  ANS051:790 03 22 1E AA 00 00 00 00
  $  REQ052:710 03 22 1E AB 00 00 00 00       $  ANS052:790 03 22 1E AB 00 00 00 00
  $  REQ053:710 03 22 1E AC 00 00 00 00       $  ANS053:790 03 22 1E AC 00 00 00 00
  $  REQ054:710 03 22 1E AE 00 00 00 00       $  ANS054:790 03 22 1E AE 00 00 00 00
  $  REQ055:710 03 22 1E AF 00 00 00 00       $  ANS055:790 03 22 1E AF 00 00 00 00
  $  REQ056:710 03 22 1E B0 00 00 00 00       $  ANS056:790 03 22 1E B0 00 00 00 00
  $  REQ057:710 03 22 1E B1 00 00 00 00       $  ANS057:790 03 22 1E B1 00 00 00 00
  $  REQ058:710 03 22 1E B2 00 00 00 00       $  ANS058:790 03 22 1E B2 00 00 00 00
  $  REQ059:710 03 22 1E B3 00 00 00 00       $  ANS059:790 03 22 1E B3 00 00 00 00
  $  REQ060:710 03 22 1E B4 00 00 00 00       $  ANS060:790 03 22 1E B4 00 00 00 00
  $  REQ061:710 03 22 1E B5 00 00 00 00       $  ANS061:790 03 22 1E B5 00 00 00 00

  $  000.Pack电压                            $    $  V       $    $  ANS000.BYTE004  $  y=x1*25.6+x2*0.1;
  $  001.正极绝缘电阻                        $    $  KΩ     $    $  ANS001.BYTE004  $  y=x1*256+x2*1;
  $  002.负极绝缘电阻                        $    $  KΩ     $    $  ANS002.BYTE004  $  y=x1*256+x2*1;
  $  003.电池允许输入功率                    $    $  W       $    $  ANS003.BYTE004  $  y=x1*2560+x2*10;
  $  004.电池允许输出功率                    $    $  W       $    $  ANS004.BYTE004  $  y=x1*2560+x2*10;
  $  005.电池组SOC                           $    $  %       $    $  ANS005.BYTE004  $  y=x1*25.6+x2*0.1;
  $  006.电池组SOH                           $    $  %       $    $  ANS006.BYTE004  $  y=x1*0.5;
  $  007.Cell temperature 1(温度1)           $    $  ℃      $    $  ANS007.BYTE004  $  y=x1-50;
  $  008.Cell temperature 2(温度2)           $    $  ℃      $    $  ANS008.BYTE004  $  y=x1-50;
  $  009.Cell temperature 3(温度3)           $    $  ℃      $    $  ANS009.BYTE004  $  y=x1-50;
  $  010.Cell temperature 4(温度4)           $    $  ℃      $    $  ANS010.BYTE004  $  y=x1-50;
  $  011.Cell temperature 5(温度5)           $    $  ℃      $    $  ANS011.BYTE004  $  y=x1-50;
  $  012.Cell temperature 6(温度6)           $    $  ℃      $    $  ANS012.BYTE004  $  y=x1-50;
  $  013.Cell temperature 7(温度7)           $    $  ℃      $    $  ANS013.BYTE004  $  y=x1-50;
  $  014.Cell temperature 8(温度8)           $    $  ℃      $    $  ANS014.BYTE004  $  y=x1-50;
  $  015.Cell temperature 9(温度9)           $    $  ℃      $    $  ANS015.BYTE004  $  y=x1-50;
  $  016.Cell temperature 10(温度10)         $    $  ℃      $    $  ANS016.BYTE004  $  y=x1-50;
  $  017.Cell Voltage 1(电芯电压1)           $    $  mV      $    $  ANS017.BYTE004  $  y=x1*256+x2*1;
  $  018.Cell Voltage 2(电芯电压2)           $    $  mV      $    $  ANS018.BYTE004  $  y=x1*256+x2*1;
  $  019.Cell Voltage 3(电芯电压3)           $    $  mV      $    $  ANS019.BYTE004  $  y=x1*256+x2*1;
  $  020.Cell Voltage 4(电芯电压4)           $    $  mV      $    $  ANS020.BYTE004  $  y=x1*256+x2*1;
  $  021.Cell Voltage 5(电芯电压5)           $    $  mV      $    $  ANS021.BYTE004  $  y=x1*256+x2*1;
  $  022.Cell Voltage 6(电芯电压6)           $    $  mV      $    $  ANS022.BYTE004  $  y=x1*256+x2*1;
  $  023.Cell Voltage 7(电芯电压7)           $    $  mV      $    $  ANS023.BYTE004  $  y=x1*256+x2*1;
  $  024.Cell Voltage 8(电芯电压8)           $    $  mV      $    $  ANS024.BYTE004  $  y=x1*256+x2*1;
  $  025.Cell Voltage 9(电芯电压9)           $    $  mV      $    $  ANS025.BYTE004  $  y=x1*256+x2*1;
  $  026.Cell Voltage 10(电芯电压10)         $    $  mV      $    $  ANS026.BYTE004  $  y=x1*256+x2*1;
  $  027.Cell Voltage 11(电芯电压11)         $    $  mV      $    $  ANS027.BYTE004  $  y=x1*256+x2*1;
  $  028.Cell Voltage 12(电芯电压12)         $    $  mV      $    $  ANS028.BYTE004  $  y=x1*256+x2*1;
  $  029.Cell Voltage 13(电芯电压13)         $    $  mV      $    $  ANS029.BYTE004  $  y=x1*256+x2*1;
  $  030.Cell Voltage 14(电芯电压14)         $    $  mV      $    $  ANS030.BYTE004  $  y=x1*256+x2*1;
  $  031.Cell Voltage 15(电芯电压15)         $    $  mV      $    $  ANS031.BYTE004  $  y=x1*256+x2*1;
  $  032.Cell Voltage 16(电芯电压16)         $    $  mV      $    $  ANS032.BYTE004  $  y=x1*256+x2*1;
  $  033.Cell Voltage 17(电芯电压17)         $    $  mV      $    $  ANS033.BYTE004  $  y=x1*256+x2*1;
  $  034.Cell Voltage 18(电芯电压18)         $    $  mV      $    $  ANS034.BYTE004  $  y=x1*256+x2*1;
  $  035.Cell Voltage 19(电芯电压19)         $    $  mV      $    $  ANS035.BYTE004  $  y=x1*256+x2*1;
  $  036.Cell Voltage 20(电芯电压20)         $    $  mV      $    $  ANS036.BYTE004  $  y=x1*256+x2*1;
  $  037.Cell Voltage 21(电芯电压21)         $    $  mV      $    $  ANS037.BYTE004  $  y=x1*256+x2*1;
  $  038.Cell Voltage 22(电芯电压22)         $    $  mV      $    $  ANS038.BYTE004  $  y=x1*256+x2*1;
  $  039.Cell Voltage 23(电芯电压23)         $    $  mV      $    $  ANS039.BYTE004  $  y=x1*256+x2*1;
  $  040.Cell Voltage 24(电芯电压24)         $    $  mV      $    $  ANS040.BYTE004  $  y=x1*256+x2*1;
  $  041.12V蓄电池电压                       $    $  V       $    $  ANS041.BYTE004  $  y=x1*0.1;
  $  042.电池组电压                          $    $  V       $    $  ANS042.BYTE004  $  y=x1*25.6+x2*0.1;
  $  043.电池组电流                          $    $  A       $    $  ANS043.BYTE004  $  y=x1*25.6+x2*0.1-500;
  $  044.最高单体电压                        $    $  mV      $    $  ANS044.BYTE004  $  y=x1*256+x2;
  $  045.最低单体电压                        $    $  mV      $    $  ANS045.BYTE004  $  y=x1*256+x2;
  $  046.平均单体电压                        $    $  mV      $    $  ANS046.BYTE004  $  y=x1*256+x2;
  $  047.最高单体电压编号                    $    $          $    $  ANS047.BYTE004  $  y=x1*1;
  $  048.最低单体电压编号                    $    $          $    $  ANS048.BYTE004  $  y=x1*1;
  $  049.最高单体温度                        $    $  ℃      $    $  ANS049.BYTE004  $  y=x1-50;
  $  050.最低单体温度                        $    $  ℃      $    $  ANS050.BYTE004  $  y=x1-50;
  $  051.平均单体温度                        $    $  ℃      $    $  ANS051.BYTE004  $  y=x1-50;
  $  052.最高单体温度编号                    $    $          $    $  ANS052.BYTE004  $  y=x1*1;
  $  053.最低单体温度编号                    $    $          $    $  ANS053.BYTE004  $  y=x1*1;
  $  054.主继电器外端电压(DC Link电压)       $    $  V       $    $  ANS054.BYTE004  $  y=x1*25.6+x2*0.1;
  $  055.请求充电电压                        $    $  V       $    $  ANS055.BYTE004  $  y=x1*25.6+x2*0.1;
  $  056.请求充电电流                        $    $  A       $    $  ANS056.BYTE004  $  y=x1*25.6+x2*0.1;
  $  057.维护报警编码                        $    $          $    $  ANS057.BYTE004  $  y=x1*16777216+x2*65536+x3*256+x4;
  $  058.电池报警1编码                       $    $          $    $  ANS058.BYTE004  $  y=x1*16777216+x2*65536+x3*256+x4;
  $  059.电池报警2编码                       $    $          $    $  ANS059.BYTE004  $  y=x1*16777216+x2*65536+x3*256+x4;
  $  060.电池报警3编码                       $    $          $    $  ANS060.BYTE004  $  y=x1*16777216+x2*65536+x3*256+x4;
  $  061.电池报警4编码                       $    $          $    $  ANS061.BYTE004  $  y=x1*16777216+x2*65536+x3*256+x4;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:710 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
