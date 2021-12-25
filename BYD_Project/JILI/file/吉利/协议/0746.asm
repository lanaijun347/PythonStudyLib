
    车型ID：0746

    模拟：协议模拟-->0746

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7DA

进入命令:

  $~  REQ000:7D2 02 10 01 00 00 00 00 00       $~  ANS000:7DA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7D2 02 3E 00 00 00 00 00 00       $!  ANS000:7DA 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7D2 03 19 02 09 00 00 00 00       $#  ANS000:7DA 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/4a000000


  $#  01.读故障码库
  $#  REQ000:7D2 02 19 0A 00 00 00 00 00       $#  ANS000:7DA 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/4a000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7D2 04 14 FF FF FF 00 00 00       $$  ANS000:7DA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7D2 03 22 F1 12 00 00 00 00       $%  ANS000:7DA 03 22 F1 12 00 00 00 00
  $%  REQ001:7D2 03 22 F1 87 00 00 00 00       $%  ANS001:7DA 03 22 F1 87 00 00 00 00
  $%  REQ002:7D2 03 22 F1 8A 00 00 00 00       $%  ANS002:7DA 03 22 F1 8A 00 00 00 00
  $%  REQ003:7D2 03 22 F1 8B 00 00 00 00       $%  ANS003:7DA 03 22 F1 8B 00 00 00 00
  $%  REQ004:7D2 03 22 F1 8C 00 00 00 00       $%  ANS004:7DA 03 22 F1 8C 00 00 00 00
  $%  REQ005:7D2 03 22 F1 90 00 00 00 00       $%  ANS005:7DA 03 22 F1 90 00 00 00 00
  $%  REQ006:7D2 03 22 F1 93 00 00 00 00       $%  ANS006:7DA 03 22 F1 93 00 00 00 00
  $%  REQ007:7D2 03 22 F1 95 00 00 00 00       $%  ANS007:7DA 03 22 F1 95 00 00 00 00
  $%  REQ008:7D2 03 22 F1 9D 00 00 00 00       $%  ANS008:7DA 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                         $%    $%  ANS000.BYTE004  $%  0 ASCII
  $%  001:零件号:                           $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:供应商代码:                       $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:ECU(电子控制器)生产日期:          $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:ECU(电子控制器)序列号:            $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  005:车辆识别号（VIN码）:              $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:ECU(电子控制器)硬件版本号:        $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:ECU(电子控制器)软件版本号:        $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)安装日期:          $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7D2 03 22 DF 00 00 00 00 00       $  ANS000:7DA 03 22 DF 00 00 00 00 00
  $  REQ001:7D2 03 22 DF 01 00 00 00 00       $  ANS001:7DA 03 22 DF 01 00 00 00 00
  $  REQ002:7D2 03 22 32 00 00 00 00 00       $  ANS002:7DA 03 22 32 00 00 00 00 00
  $  REQ003:7D2 03 22 32 01 00 00 00 00       $  ANS003:7DA 03 22 32 01 00 00 00 00
  $  REQ004:7D2 03 22 32 03 00 00 00 00       $  ANS004:7DA 03 22 32 03 00 00 00 00
  $  REQ005:7D2 03 22 32 04 00 00 00 00       $  ANS005:7DA 03 22 32 04 00 00 00 00
  $  REQ006:7D2 03 22 32 05 00 00 00 00       $  ANS006:7DA 03 22 32 05 00 00 00 00
  $  REQ007:7D2 03 22 32 06 00 00 00 00       $  ANS007:7DA 03 22 32 06 00 00 00 00
  $  REQ008:7D2 03 22 32 07 00 00 00 00       $  ANS008:7DA 03 22 32 07 00 00 00 00
  $  REQ009:7D2 03 22 32 09 00 00 00 00       $  ANS009:7DA 03 22 32 09 00 00 00 00
  $  REQ010:7D2 03 22 32 0A 00 00 00 00       $  ANS010:7DA 03 22 32 0A 00 00 00 00
  $  REQ011:7D2 03 22 32 0B 00 00 00 00       $  ANS011:7DA 03 22 32 0B 00 00 00 00
  $  REQ012:7D2 03 22 32 0E 00 00 00 00       $  ANS012:7DA 03 22 32 0E 00 00 00 00

  $  000.ECU(电子控制器)供电电压       $    $  V         $    $  ANS000.BYTE004  $  y=(x)*0.1;
  $  001.车速                          $    $  km/h      $    $  ANS001.BYTE004  $  y=INT((x1*256+x2)*0.05625);
  $  002.转向角                        $    $  deg       $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.1-780;
  $  003.ECU(电子控制器)温度           $    $  degC      $    $  ANS003.BYTE004  $  y=(x)*1-40;
  $  004.电机电流                      $    $  A         $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.5;
  $  005.转向速度                      $    $  deg/s     $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.1;
  $  006.方向盘扭矩                    $    $  Nm        $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.01;
  $  007.扭矩传感器供电电压            $    $  V         $    $  ANS007.BYTE004  $  y=(x)*0.1;
  $  008.电机输出扭矩                  $    $  Nm        $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.01;
  $  009.扭矩指令                      $    $  /         $    $  ANS009.BYTE004  $  y=(x)*1-20;
  $  010.电机位置                      $    $  deg       $    $  ANS010.BYTE004  $  y=(x1*256+x2)*(360/4096);
  $  011.电机速度                      $    $  rpm       $    $  ANS011.BYTE004  $  y=(x1*256+x2)*1;
  $  012.助力模式                      $    $  /         $    $  ANS012.BYTE004  $  if(x==0) y=@0374; else if(x==1) y=@0375; else if(x==2) y=@0376; else y=@023f;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7D2 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
