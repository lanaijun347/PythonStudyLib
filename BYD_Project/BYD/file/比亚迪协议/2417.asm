
    车型ID：2417

    模拟：协议模拟-->2417

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:783 02 10 01 00 00 00 00 00       $~  ANS000:78B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:783 02 3E 80 00 00 00 00 00       $!  ANS000:78B 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:783 03 19 02 09 00 00 00 00       $#  ANS000:78B 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ec000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:783 04 14 FF FF FF 00 00 00       $$  ANS000:78B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:783 03 22 F1 95 00 00 00 00       $%  ANS000:78B 03 22 F1 95 00 00 00 00
  $%  REQ001:783 03 22 F1 94 00 00 00 00       $%  ANS001:78B 03 22 F1 94 00 00 00 00
  $%  REQ002:783 03 22 F1 93 00 00 00 00       $%  ANS002:78B 03 22 F1 93 00 00 00 00
  $%  REQ003:783 03 22 F1 80 00 00 00 00       $%  ANS003:78B 03 22 F1 80 00 00 00 00

  $%  000:软件版本:            $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  001:软件日期:            $%    $%  ANS000.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:修改次数:            $%    $%  ANS000.BYTE009  $%  y=x1;
  $%  003:软件编号:            $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  004:硬件版本:            $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  005:硬件日期:            $%    $%  ANS002.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  006:boot版本号:          $%    $%  ANS003.BYTE004  $%  y=SPRINTF([20%02d%s%02d%s%02d],x1,@001d,x2,@03ad,x3);
  $%  007:boot版本信息:        $%    $%  ANS003.BYTE007  $%  y=SPRINTF([%02d%02d%02d],x1,x2,x3);
  $%  008:发布日期:            $%    $%  ANS003.BYTE010  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);

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
  $  REQ014:783 03 22 00 0F 00 00 00 00       $  ANS014:78B 03 22 00 0F 00 00 00 00
  $  REQ015:783 03 22 00 10 00 00 00 00       $  ANS015:78B 03 22 00 10 00 00 00 00

  $  000:方向盘转速                      $    $  °/s         $    $  ANS000.BYTE004  $  if(x1<0x80)y=((x1<<8)+x2)*1.0/10;else y=(((x1-256)<<8)+x2)*1.0/10;
  $  001:EPS(电动助力转向)相对转角       $    $  °           $    $  ANS001.BYTE004  $  if(x1<0x80)y=(x1<<8)+x2;else y=((x1-256)<<8)+x2;
  $  002:方向盘转角                      $    $  °           $    $  ANS002.BYTE004  $  if(x1<0x80)y=((x1<<8)+x2)*1.0/10;else y=(((x1-256)<<8)+x2)*1.0/10;
  $  003:方向盘力矩                      $    $  牛顿米       $    $  ANS003.BYTE004  $  if(x1<0x80)y=((x1<<8)+x2)*1.0/10;else y=(((x1-256)<<8)+x2)*1.0/10;
  $  004:电机温度                        $    $  degree C     $    $  ANS004.BYTE004  $  if(x1<0x80)y=x1*2;else y=(x1-256)*2;
  $  005:ECU温度                         $    $  degree C     $    $  ANS005.BYTE004  $  if(x1<0x80)y=x1*2;else y=(x1-256)*2;
  $  006:电机电流                        $    $  A            $    $  ANS006.BYTE004  $  if(x1<0x80)y=(x1<<8)+x2;else y=((x1-256)<<8)+x2;
  $  007:供电电压                        $    $  V            $    $  ANS007.BYTE004  $  y=((x1<<8)+x2)*0.003906;
  $  008:电机转速                        $    $  °/s         $    $  ANS008.BYTE004  $  if(x1<0x80)y=((x1<<8)+x2)*2.8125;else y=(((x1-256)<<8)+x2)*2.8125;
  $  009:车速                            $    $               $    $  ANS009.BYTE004  $  y=((x1<<8)+x2)*0.01;
  $  010:末端保护使能                    $    $               $    $  ANS010.BYTE004  $  switxh(x1)0x00: y=@0005;0x01: y=@0496;default: y=@001c;
  $  011:末端保护左端初始位置            $    $               $    $  ANS011.BYTE004  $  if(x1<0x80)y=((x1<<8)+x2)*1.0/16;else y=(((x1-256)<<8)+x2)*1.0/16;
  $  012:末端保护右端初始位置            $    $               $    $  ANS012.BYTE004  $  if(x1<0x80)y=((x1<<8)+x2)*1.0/16;else y=(((x1-256)<<8)+x2)*1.0/16;
  $  013:PDC使能状态                     $    $               $    $  ANS013.BYTE004  $  switxh(x1)0x00: y=@0005;0x01: y=@0496;default: y=@001c;
  $  014:PDC初始力矩值                   $    $  牛顿米       $    $  ANS014.BYTE004  $  if(x1<0x80)y=((x1<<24)+(x2<<16)+(x3<<8)+x4)*1.0/2097152;else y=(((x1-256)<<24)+(x2<<16)+(x3<<8)+x4)*1.0/2097152;
  $  015:CCP使能状态                     $    $               $    $  ANS015.BYTE004  $  switxh(x1)0x00: y=@0005;0x01: y=@0496;default: y=@001c;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:783 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
