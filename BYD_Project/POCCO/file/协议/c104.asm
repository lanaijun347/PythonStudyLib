
    车型ID：c104

    模拟：协议模拟-->c104

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~792

进入命令:

  $~  REQ000:712 02 10 03 00 00 00 00 00       $~  ANS000:792 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:712 02 3E 00 00 00 00 00 00       $!  ANS000:792 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:712 03 19 02 09 00 00 00 00       $#  ANS000:792 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/c4000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:712 04 14 FF FF FF 00 00 00       $$  ANS000:792 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:712 03 22 F1 87 00 00 00 00       $%  ANS000:792 03 22 F1 87 00 00 00 00
  $%  REQ001:712 03 22 F1 8A 00 00 00 00       $%  ANS001:792 03 22 F1 8A 00 00 00 00
  $%  REQ002:712 03 22 F1 8C 00 00 00 00       $%  ANS002:792 03 22 F1 8C 00 00 00 00
  $%  REQ003:712 03 22 F1 90 00 00 00 00       $%  ANS003:792 03 22 F1 90 00 00 00 00
  $%  REQ004:712 03 22 F1 93 00 00 00 00       $%  ANS004:792 03 22 F1 93 00 00 00 00
  $%  REQ005:712 03 22 F1 95 00 00 00 00       $%  ANS005:792 03 22 F1 95 00 00 00 00
  $%  REQ006:712 03 22 F1 98 00 00 00 00       $%  ANS006:792 03 22 F1 98 00 00 00 00
  $%  REQ007:712 03 22 F1 99 00 00 00 00       $%  ANS007:792 03 22 F1 99 00 00 00 00

  $%  000:零件号:                 $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  001:供应商代码:             $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:ECU流水编号:            $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:车辆识别号(VIN):        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:硬件版本号:             $%    $%  ANS004.BYTE004  $%  SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@001e,X1,@001f,X2,@0020,X6,X5,X4,X3);
  $%  005:软件版本号:             $%    $%  ANS005.BYTE004  $%  SPRINTF([%s%02X%s%02X%s%02X%02X%02X%02X],@001e,X1,@0021,X2,@0020,X6,X5,X4,X3);
  $%  006:测试仪序列号:           $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  007:软件编程日期:           $%    $%  ANS007.BYTE004  $%  SPRINTF([%02X%s%02X%s%02X%s],X1,@0022,X2,@0023,X3,@0024);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:712 03 22 C7 01 00 00 00 00       $  ANS000:792 03 22 C7 01 00 00 00 00
  $  REQ001:712 03 22 C7 02 00 00 00 00       $  ANS001:792 03 22 C7 02 00 00 00 00
  $  REQ002:712 03 22 C7 07 00 00 00 00       $  ANS002:792 03 22 C7 07 00 00 00 00
  $  REQ003:712 03 22 C7 08 00 00 00 00       $  ANS003:792 03 22 C7 08 00 00 00 00
  $  REQ004:712 03 22 C7 09 00 00 00 00       $  ANS004:792 03 22 C7 09 00 00 00 00
  $  REQ005:712 03 22 C7 0A 00 00 00 00       $  ANS005:792 03 22 C7 0A 00 00 00 00
  $  REQ006:712 03 22 C7 0B 00 00 00 00       $  ANS006:792 03 22 C7 0B 00 00 00 00
  $  REQ007:712 03 22 C7 0C 00 00 00 00       $  ANS007:792 03 22 C7 0C 00 00 00 00
  $  REQ008:712 03 22 C7 11 00 00 00 00       $  ANS008:792 03 22 C7 11 00 00 00 00
  $  REQ009:712 03 22 C7 12 00 00 00 00       $  ANS009:792 03 22 C7 12 00 00 00 00
  $  REQ010:712 03 22 C7 13 00 00 00 00       $  ANS010:792 03 22 C7 13 00 00 00 00
  $  REQ011:712 03 22 C7 15 00 00 00 00       $  ANS011:792 03 22 C7 15 00 00 00 00
  $  REQ012:712 03 22 C7 17 00 00 00 00       $  ANS012:792 03 22 C7 17 00 00 00 00
  $  REQ013:712 03 22 C7 18 00 00 00 00       $  ANS013:792 03 22 C7 18 00 00 00 00
  $  REQ014:712 03 22 C7 19 00 00 00 00       $  ANS014:792 03 22 C7 19 00 00 00 00
  $  REQ015:712 03 22 C7 1B 00 00 00 00       $  ANS015:792 03 22 C7 1B 00 00 00 00
  $  REQ016:712 03 22 C7 1C 00 00 00 00       $  ANS016:792 03 22 C7 1C 00 00 00 00

  $  000.设置电压           $    $  V      $    $  ANS000.BYTE004  $  y=x1*2.56+x2*0.01;
  $  001.设置电流           $    $  A      $    $  ANS001.BYTE004  $  y=x1*2.56+x2*0.01;
  $  002.输入电压           $    $  V      $    $  ANS002.BYTE004  $  y=x1*2.56+x2*0.01;
  $  003.DC温度             $    $  ℃     $    $  ANS003.BYTE004  $  y=x1-80;
  $  004.内部电源电压       $    $  V      $    $  ANS004.BYTE004  $  y=x1*0.1;
  $  005.蓄电池电压         $    $  V      $    $  ANS005.BYTE004  $  y=x1*0.1;
  $  006.输出电压           $    $  V      $    $  ANS006.BYTE004  $  y=x1*2.56+x2*0.01;
  $  007.输出电流           $    $  A      $    $  ANS007.BYTE004  $  y=x1*2.56+x2*0.01;
  $  008.设置电压           $    $  V      $    $  ANS008.BYTE004  $  y=x1*2.56+x2*0.01;
  $  009.设置电流           $    $  A      $    $  ANS009.BYTE004  $  y=x1*2.56+x2*0.01;
  $  010.输入电流限制       $    $  A      $    $  ANS010.BYTE004  $  y=x1*2.56+x2*0.01;
  $  011.功率限制           $    $  W      $    $  ANS011.BYTE004  $  y=x1*256+x2;
  $  012.输入电压           $    $  V      $    $  ANS012.BYTE004  $  y=x1*2.56+x2*0.01;
  $  013.充电机温度         $    $  ℃     $    $  ANS013.BYTE004  $  y=x1-80;
  $  014.内部电源电压       $    $  V      $    $  ANS014.BYTE004  $  y=x1*0.1;
  $  015.输出电压           $    $  V      $    $  ANS015.BYTE004  $  y=x1*2.56+x2*0.01;
  $  016.输出电流           $    $  A      $    $  ANS016.BYTE004  $  y=x1*2.56+x2*0.01;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:712 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
