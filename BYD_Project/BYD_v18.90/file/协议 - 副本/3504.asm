
    车型ID：3504

    模拟：协议模拟-->3504

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~78B

进入命令:

  $~  REQ000:783 02 10 01 00 00 00 00 00       $~  ANS000:78B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:783 02 3E 80 00 00 00 00 00       $!  ANS000:78B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:783 03 19 02 09 00 00 00 00       $#  ANS000:78B 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/84000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:783 04 14 FF FF FF 00 00 00       $$  ANS000:78B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:783 03 22 F1 93 00 00 00 00       $%  ANS000:78B 03 22 F1 93 00 00 00 00
  $%  REQ001:783 03 22 F1 94 00 00 00 00       $%  ANS001:78B 03 22 F1 94 00 00 00 00
  $%  REQ002:783 03 22 F1 95 00 00 00 00       $%  ANS002:78B 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:783 03 22 00 01 00 00 00 00       $  ANS000:78B 03 22 00 01 00 00 00 00
  $  REQ001:783 03 22 00 02 00 00 00 00       $  ANS001:78B 03 22 00 02 00 00 00 00
  $  REQ002:783 03 22 00 03 00 00 00 00       $  ANS002:78B 03 22 00 03 00 00 00 00
  $  REQ003:783 03 22 00 04 00 00 00 00       $  ANS003:78B 03 22 00 04 00 00 00 00
  $  REQ004:783 03 22 00 05 00 00 00 00       $  ANS004:78B 03 22 00 05 00 00 00 00
  $  REQ005:783 03 22 00 06 00 00 00 00       $  ANS005:78B 03 22 00 06 00 00 00 00
  $  REQ006:783 03 22 00 07 00 00 00 00       $  ANS006:78B 03 22 00 07 00 00 00 00
  $  REQ007:783 03 22 00 08 00 00 00 00       $  ANS007:78B 03 22 00 08 00 00 00 00
  $  REQ008:783 03 22 00 09 00 00 00 00       $  ANS008:78B 03 22 00 09 00 00 00 00
  $  REQ009:783 03 22 00 0A 00 00 00 00       $  ANS009:78B 03 22 00 0A 00 00 00 00
  $  REQ010:783 03 22 00 0B 00 00 00 00       $  ANS010:78B 03 22 00 0B 00 00 00 00
  $  REQ011:783 03 22 00 0C 00 00 00 00       $  ANS011:78B 03 22 00 0C 00 00 00 00
  $  REQ012:783 03 22 00 0D 00 00 00 00       $  ANS012:78B 03 22 00 0D 00 00 00 00
  $  REQ013:783 03 22 00 0E 00 00 00 00       $  ANS013:78B 03 22 00 0E 00 00 00 00
  $  REQ014:783 03 22 F1 90 00 00 00 00       $  ANS014:78B 03 22 F1 90 00 00 00 00
  $  REQ015:783 03 22 F1 93 00 00 00 00       $  ANS015:78B 03 22 F1 93 00 00 00 00
  $  REQ016:783 03 22 F1 94 00 00 00 00       $  ANS016:78B 03 22 F1 94 00 00 00 00
  $  REQ017:783 03 22 F1 95 00 00 00 00       $  ANS017:78B 03 22 F1 95 00 00 00 00
  $  REQ018:783 03 22 00 0F 00 00 00 00       $  ANS018:78B 03 22 00 0F 00 00 00 00
  $  REQ019:783 03 22 00 11 00 00 00 00       $  ANS019:78B 03 22 00 11 00 00 00 00
  $  REQ020:783 03 22 00 12 00 00 00 00       $  ANS020:78B 03 22 00 12 00 00 00 00
  $  REQ021:783 03 22 00 13 00 00 00 00       $  ANS021:78B 03 22 00 13 00 00 00 00

  $  000.转角角度标定标志位         $    $  /         $    $  ANS000.BYTE004  $  y=x1;
  $  001.转角传感器角度原始值       $    $  deg       $    $  ANS001.BYTE004  $  if(x1<0x80) y=SPRINTF([%.4f],(x1*256+x2)*0.03125);else y=SPRINTF([%.4f],((x1-256)*256+x2)*0.03125);
  $  002.当前角度值                 $    $  deg       $    $  ANS002.BYTE004  $  if(x1<0x80) y=SPRINTF([%.4f],(x1*256+x2)*0.03125);else y=SPRINTF([%.4f],((x1-256)*256+x2)*0.03125);
  $  003.方向盘转速                 $    $  deg/s     $    $  ANS003.BYTE004  $  if(x1<0x80) y=SPRINTF([%.1f],(x1*256+x2)*0.5);else y=SPRINTF([%.1f],((x1-256)*256+x2)*0.5);
  $  004.扭矩标定标志位             $    $  /         $    $  ANS004.BYTE004  $  y=x1;
  $  005.当前扭矩                   $    $  Nm        $    $  ANS005.BYTE004  $  if(x1<0x80) y=SPRINTF([%.4f],(x1*256+x2)*0.0078125);else y=SPRINTF([%.4f],((x1-256)*256+x2)*0.0078125);
  $  006.车速                       $    $  Km/h      $    $  ANS006.BYTE004  $  y=SPRINTF([%.1f],(x1*256+x2)*0.5);
  $  007.电机转速                   $    $  RPM       $    $  ANS007.BYTE004  $  y=(x1*256+x2);
  $  008.电机电流                   $    $  A         $    $  ANS008.BYTE004  $  if(x1<0x80) y=SPRINTF([%.4f],(x1*256+x2)*0.0078125);else y=SPRINTF([%.4f],((x1-256)*256+x2)*0.0078125);
  $  009.ECU内部温度                $    $  ℃        $    $  ANS009.BYTE004  $  y=SPRINTF([%.1f],(x1*256+x2)*0.5-40);
  $  010.ECU供电电压                $    $  V         $    $  ANS010.BYTE004  $  y=SPRINTF([%.4f],(x1*256+x2)*0.0009765625);
  $  011.末端保护使能状态           $    $  /         $    $  ANS011.BYTE004  $  y=x1;
  $  012.末端保护左端初始位置       $    $  deg       $    $  ANS012.BYTE004  $  if(x1<0x80) y=SPRINTF([%.1f],(x1*256+x2)*0.5);else y=SPRINTF([%.1f],((x1-256)*256+x2)*0.5);
  $  013.末端保护右端初始位置       $    $  deg       $    $  ANS013.BYTE004  $  if(x1<0x80) y=SPRINTF([%.1f],(x1*256+x2)*0.5);else y=SPRINTF([%.1f],((x1-256)*256+x2)*0.5);
  $  014.VIN(车辆识别码)码          $    $            $    $  ANS014.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $  015.硬件版本                   $    $            $    $  ANS015.BYTE004  $  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $  016.硬件日期                   $    $            $    $  ANS015.BYTE005  $  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);
  $  017.软件编号                   $    $            $    $  ANS016.BYTE004  $  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $  018.软件版本                   $    $            $    $  ANS017.BYTE004  $  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $  019.扭矩传感器T1周期           $    $  /         $    $  ANS018.BYTE004  $  y=SPRINTF([%.2f],10000000/(x1*256+x2));
  $  020.扭矩传感器T2周期           $    $  /         $    $  ANS019.BYTE004  $  y=SPRINTF([%.2f],10000000/(x1*256+x2));
  $  021.扭矩传感器T1占空比         $    $  /         $    $  ANS020.BYTE004  $  y=SPRINTF([%.2f],(x1*256+x2)/32768);
  $  022.扭矩传感器T2占空比         $    $  /         $    $  ANS021.BYTE004  $  y=SPRINTF([%.2f],(x1*256+x2)/32768);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:783 30 01 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
