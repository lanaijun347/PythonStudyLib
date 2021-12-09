
    车型ID：110c

    模拟：协议模拟-->110c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:722 02 10 01 00 00 00 00 00       $~  ANS000:72A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:722 02 3E 80 00 00 00 00 00       $!  ANS000:72A 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:722 03 19 02 09 00 00 00 00       $#  ANS000:72A 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:722 04 14 FF FF FF 00 00 00       $$  ANS000:72A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:722 03 22 F1 93 00 00 00 00       $%  ANS000:72A 03 22 F1 93 00 00 00 00
  $%  REQ001:722 03 22 F1 94 00 00 00 00       $%  ANS001:72A 03 22 F1 94 00 00 00 00
  $%  REQ002:722 03 22 F1 95 00 00 00 00       $%  ANS002:72A 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:722 03 22 00 01 00 00 00 00       $  ANS000:72A 03 22 00 01 00 00 00 00
  $  REQ001:722 03 22 00 02 00 00 00 00       $  ANS001:72A 03 22 00 02 00 00 00 00
  $  REQ002:722 03 22 00 03 00 00 00 00       $  ANS002:72A 03 22 00 03 00 00 00 00
  $  REQ003:722 03 22 00 04 00 00 00 00       $  ANS003:72A 03 22 00 04 00 00 00 00
  $  REQ004:722 03 22 00 09 00 00 00 00       $  ANS004:72A 03 22 00 09 00 00 00 00
  $  REQ005:722 03 22 00 0A 00 00 00 00       $  ANS005:72A 03 22 00 0A 00 00 00 00
  $  REQ006:722 03 22 00 0B 00 00 00 00       $  ANS006:72A 03 22 00 0B 00 00 00 00
  $  REQ007:722 03 22 00 0D 00 00 00 00       $  ANS007:72A 03 22 00 0D 00 00 00 00
  $  REQ008:722 03 22 00 0E 00 00 00 00       $  ANS008:72A 03 22 00 0E 00 00 00 00
  $  REQ009:722 03 22 00 0F 00 00 00 00       $  ANS009:72A 03 22 00 0F 00 00 00 00

  $  000:BSG启动允许状态               $    $               $    $  ANS000.BYTE004  $  if(x1 == 0x00) y=@002c;else if(x1 == 0x01) y=@002d;else y=@001c;
  $  001:BSG工作状态                   $    $               $    $  ANS001.BYTE004  $  if(x1 == 0x00) y=@0005;else if(x1 == 0x01) y=@003b;else y=@001c;
  $  002:BSG电机实际转速               $    $  rpm          $    $  ANS002.BYTE004  $  y=(x1*256+x2)-30000;
  $  003:BSG输出扭矩(发电、电动)       $    $  牛顿米       $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.1-500;
  $  004:BSG电机温度                   $    $  degree C     $    $  ANS004.BYTE004  $  y=x1-40;
  $  005:BSG稳压状态                   $    $               $    $  ANS005.BYTE004  $  if(x1 == 0x28) y=@0005;else if(x1 == 0x29) y=@003b;else y=@001c;
  $  006:IPM温度                       $    $  degree C     $    $  ANS006.BYTE004  $  y=x1-40;
  $  007:电源电压                      $    $  V            $    $  ANS007.BYTE004  $  y=x1*0.1;
  $  008:三相继电器总状态              $    $               $    $  ANS008.BYTE004  $  if(x1 == 0x00) y=@002f;else if(x1 == 0x01) y=@002e;else y=@001c;
  $  009:电容温度                      $    $  degree C     $    $  ANS009.BYTE004  $  y=x1-40;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:722 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
