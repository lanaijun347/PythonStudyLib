
    车型ID：1001

    模拟：协议模拟-->1001

;******************************************************************************************************************************************************

    通讯线: $~07$~07$~10400

进入命令:

  $~  REQ000:81 11 F1 81 04       $~  ANS000:81 11 F1 81 04

空闲命令:

  $!  REQ000:81 11 F1 3E C1       $!  ANS000:81 11 F1 3E C1

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:84 11 F1 18 00 FF 00 9D       $#  ANS000:84 11 F1 18 00 FF 00 9D

  ANS000.BYTE04 控制故障码个数，从$#ANS000.BYTE5$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:83 11 F1 14 FF 00 98       $$  ANS000:83 11 F1 14 FF 00 98

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:82 11 F1 1A 92 30       $%  ANS000:82 11 F1 1A 92 30
  $%  REQ001:82 11 F1 1A 94 32       $%  ANS001:82 11 F1 1A 94 32
  $%  REQ002:82 11 F1 1A 95 33       $%  ANS002:82 11 F1 1A 95 33
  $%  REQ003:82 11 F1 1A 96 34       $%  ANS003:82 11 F1 1A 96 34
  $%  REQ004:82 11 F1 1A 97 35       $%  ANS004:82 11 F1 1A 97 35
  $%  REQ005:82 11 F1 1A 99 37       $%  ANS005:82 11 F1 1A 99 37
  $%  REQ006:82 11 F1 1A 9A 38       $%  ANS006:82 11 F1 1A 9A 38
  $%  REQ007:82 11 F1 1A 9B 39       $%  ANS007:82 11 F1 1A 9B 39
  $%  REQ008:82 11 F1 1A 9C 3A       $%  ANS008:82 11 F1 1A 9C 3A
  $%  REQ009:82 11 F1 1A 9D 3B       $%  ANS009:82 11 F1 1A 9D 3B
  $%  REQ010:82 11 F1 1A 9F 3D       $%  ANS010:82 11 F1 1A 9F 3D
  $%  REQ011:82 11 F1 1A 90 2E       $%  ANS011:82 11 F1 1A 90 2E

  $%  000:硬件编号:                    $%    $%  ANS000.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  001:软件编号:                    $%    $%  ANS001.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:软件版本号:                  $%    $%  ANS002.BYTE005  $%  ASCII(x1,x2);
  $%  003:定型编号:                    $%    $%  ANS003.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:系统名称或发动机类型:        $%    $%  ANS004.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  005:编程日期:                    $%    $%  ANS005.BYTE005  $%  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);
  $%  006:ECU诊断数据标识:             $%    $%  ANS006.BYTE005  $%  HEX(x1,x2);
  $%  007:ECU代码版本号:               $%    $%  ANS007.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  008:ECU ROM版本号:               $%    $%  ANS008.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:CAN数据字典版本号:           $%    $%  ANS009.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:零部件编号:                  $%    $%  ANS010.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:VIN:                         $%    $%  ANS011.BYTE005  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

