
    车型ID：0aa5

    模拟：协议模拟-->0aa5

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7EC

进入命令:

  $~  REQ000:7E4 02 10 01 00 00 00 00 00       $~  ANS000:7EC 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E4 02 3E 00 00 00 00 00 00       $!  ANS000:7EC 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E4 03 19 02 09 00 00 00 00       $#  ANS000:7EC 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/f5000000


  $#  01.读故障码库
  $#  REQ000:7E4 02 19 0A 00 00 00 00 00       $#  ANS000:7EC 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/f5000000


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

  $$  REQ000:7E4 04 14 FF FF FF 00 00 00       $$  ANS000:7EC 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E4 03 22 F1 12 00 00 00 00       $%  ANS000:7EC 03 22 F1 12 00 00 00 00
  $%  REQ001:7E4 03 22 F1 80 00 00 00 00       $%  ANS001:7EC 03 22 F1 80 00 00 00 00
  $%  REQ002:7E4 03 22 F1 87 00 00 00 00       $%  ANS002:7EC 03 22 F1 87 00 00 00 00
  $%  REQ003:7E4 03 22 F1 8A 00 00 00 00       $%  ANS003:7EC 03 22 F1 8A 00 00 00 00
  $%  REQ004:7E4 03 22 F1 8C 00 00 00 00       $%  ANS004:7EC 03 22 F1 8C 00 00 00 00
  $%  REQ005:7E4 03 22 F1 90 00 00 00 00       $%  ANS005:7EC 03 22 F1 90 00 00 00 00
  $%  REQ006:7E4 03 22 F1 92 00 00 00 00       $%  ANS006:7EC 03 22 F1 92 00 00 00 00
  $%  REQ007:7E4 03 22 F1 93 00 00 00 00       $%  ANS007:7EC 03 22 F1 93 00 00 00 00
  $%  REQ008:7E4 03 22 F1 94 00 00 00 00       $%  ANS008:7EC 03 22 F1 94 00 00 00 00
  $%  REQ009:7E4 03 22 F1 95 00 00 00 00       $%  ANS009:7EC 03 22 F1 95 00 00 00 00
  $%  REQ010:7E4 03 22 F1 97 00 00 00 00       $%  ANS010:7EC 03 22 F1 97 00 00 00 00
  $%  REQ011:7E4 03 22 F1 98 00 00 00 00       $%  ANS011:7EC 03 22 F1 98 00 00 00 00
  $%  REQ012:7E4 03 22 F1 99 00 00 00 00       $%  ANS012:7EC 03 22 F1 99 00 00 00 00
  $%  REQ013:7E4 03 22 F1 9D 00 00 00 00       $%  ANS013:7EC 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:驱动层软件版本:                              $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:零件号:                                      $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:ECU(电子控制器)序列号:                       $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $%  005:车辆识别号(VIN码):                           $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:ECU(电子控制器)硬件号:                       $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件号:                       $%    $%  ANS008.BYTE004  $%  HEX(x1,x2,x3);
  $%  009:ECU(电子控制器)软件版本号:                   $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)系统名称或发动机类型:         $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  011:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  012:ECU(电子控制器)刷写日期:                     $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  013:ECU(电子控制器)安装日期:                     $%    $%  ANS013.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E4 03 22 02 00 00 00 00 00       $  ANS000:7EC 03 22 02 00 00 00 00 00
  $  REQ001:7E4 03 22 02 01 00 00 00 00       $  ANS001:7EC 03 22 02 01 00 00 00 00
  $  REQ002:7E4 03 22 DF 01 00 00 00 00       $  ANS002:7EC 03 22 DF 01 00 00 00 00
  $  REQ003:7E4 03 22 DF 00 00 00 00 00       $  ANS003:7EC 03 22 DF 00 00 00 00 00
  $  REQ004:7E4 03 22 30 00 00 00 00 00       $  ANS004:7EC 03 22 30 00 00 00 00 00
  $  REQ005:7E4 03 22 30 01 00 00 00 00       $  ANS005:7EC 03 22 30 01 00 00 00 00
  $  REQ006:7E4 03 22 30 04 00 00 00 00       $  ANS006:7EC 03 22 30 04 00 00 00 00
  $  REQ007:7E4 03 22 30 05 00 00 00 00       $  ANS007:7EC 03 22 30 05 00 00 00 00
  $  REQ008:7E4 03 22 30 06 00 00 00 00       $  ANS008:7EC 03 22 30 06 00 00 00 00
  $  REQ009:7E4 03 22 30 07 00 00 00 00       $  ANS009:7EC 03 22 30 07 00 00 00 00
  $  REQ010:7E4 03 22 30 08 00 00 00 00       $  ANS010:7EC 03 22 30 08 00 00 00 00
  $  REQ011:7E4 03 22 30 09 00 00 00 00       $  ANS011:7EC 03 22 30 09 00 00 00 00
  $  REQ012:7E4 03 22 30 0A 00 00 00 00       $  ANS012:7EC 03 22 30 0A 00 00 00 00
  $  REQ013:7E4 03 22 30 02 00 00 00 00       $  ANS013:7EC 03 22 30 02 00 00 00 00
  $  REQ014:7E4 03 22 30 03 00 00 00 00       $  ANS014:7EC 03 22 30 03 00 00 00 00

  $  000.ECU(电子控制器)成功刷写次数       $    $  /         $    $  ANS000.BYTE004  $  HEX(x);
  $  001.ECU(电子控制器)尝试刷写次数       $    $  /         $    $  ANS001.BYTE004  $  HEX(x);
  $  002.车速                              $    $  km/h      $    $  ANS002.BYTE004  $  y=INT((x1*0x100+x2)*0.05625);
  $  003.ECU(电子控制器)供电电压           $    $  V         $    $  ANS003.BYTE004  $  y=x*0.1;
  $  004.加注状态                          $    $  /         $    $  ANS004.BYTE004  $  if(x==0x00) y=@0015;else if(x==0x01) y=@0016;else if(x==0x02) y=@0017;else if(x==0xff) y=@0014;else y=@0009;
  $  005.下线检测状态                      $    $  /         $    $  ANS005.BYTE004  $  if(x==0x00) y=@0011;else if(x==0x01) y=@0012;else if(x==0x02) y=@0013;else if(x==0xff) y=@0014;else y=@0009;
  $  006.刹车灯开关                        $    $  /         $    $  ANS006.BYTE004  $  if(x==0x00) y=@0000;else y=@0001;
  $  007.主缸压力                          $    $  bar       $    $  ANS007.BYTE004  $  if(x1>0x80) y=((x1*0x100+x2)-65536)*0.0153; else y=((x1*0x100+x2)*0.0153);
  $  008.转向角                            $    $  deg       $    $  ANS008.BYTE004  $  if(x1>0x80) y=((x1*0x100+x2)-65536)*0.1; else y=((x1*0x100+x2)*0.1);
  $  009.横摆角速度                        $    $  rad/s     $    $  ANS009.BYTE004  $  if(x1>0x80) y=((x1*0x100+x2)-65536)*0.00213; else y=((x1*0x100+x2)*0.00213);
  $  010.横向加速度                        $    $  m/s^2     $    $  ANS010.BYTE004  $  if(x1>0x80) y=((x1*0x100+x2)-65536)*0.02712; else y=((x1*0x100+x2)*0.02712);
  $  011.纵向加速度                        $    $  m/s^2     $    $  ANS011.BYTE004  $  if(x1>0x80) y=((x1*0x100+x2)-65536)*0.02712; else y=((x1*0x100+x2)*0.02712);
  $  012.电子驻车状态                      $    $  /         $    $  ANS012.BYTE004  $  if(x==0x00) y=@0018;else if(x==0x01) y=@0019;else if(x==0x02) y=@001a;else y=@001b;
  $  013.左前轮速                          $    $  km/h      $    $  ANS013.BYTE004  $  y=(x1*0x100+x2)*0.05625;
  $  014.右前轮速                          $    $  km/h      $    $  ANS013.BYTE004  $  y=(x3*0x100+x4)*0.05625;
  $  015.左后轮速                          $    $  km/h      $    $  ANS013.BYTE004  $  y=(x5*0x100+x6)*0.05625;
  $  016.右后轮速                          $    $  km/h      $    $  ANS013.BYTE004  $  y=(x7*0x100+x8)*0.05625;
  $  017.阀继电器状态                      $    $  /         $    $  ANS014.BYTE004  $  if(x1==0x00) y=@0000;else y=@0001;
  $  018.泵马达状态                        $    $  /         $    $  ANS014.BYTE004  $  if(x2==0x00) y=@0000;else y=@0001;
  $  019.左前进气阀状态                    $    $  /         $    $  ANS014.BYTE004  $  if(((x3>>0)&1)) y=@0001;else y=@0000;
  $  020.左前排气阀状态                    $    $  /         $    $  ANS014.BYTE004  $  if(((x3>>1)&1)) y=@0001;else y=@0000;
  $  021.右前进气阀状态                    $    $  /         $    $  ANS014.BYTE004  $  if(((x3>>2)&1)) y=@0001;else y=@0000;
  $  022.右前排气阀状态                    $    $  /         $    $  ANS014.BYTE004  $  if(((x3>>3)&1)) y=@0001;else y=@0000;
  $  023.左后进气阀状态                    $    $  /         $    $  ANS014.BYTE004  $  if(((x3>>4)&1)) y=@0001;else y=@0000;
  $  024.左后排气阀状态                    $    $  /         $    $  ANS014.BYTE004  $  if(((x3>>5)&1)) y=@0001;else y=@0000;
  $  025.右后进气阀状态                    $    $  /         $    $  ANS014.BYTE004  $  if(((x3>>6)&1)) y=@0001;else y=@0000;
  $  026.右后排气阀状态                    $    $  /         $    $  ANS014.BYTE004  $  if(((x3>>7)&1)) y=@0001;else y=@0000;
  $  027.回路控制阀1状态(仅ESP)            $    $  /         $    $  ANS014.BYTE004  $  if(((x4>>0)&1)) y=@0001;else y=@0000;
  $  028.回路控制阀2状态(仅ESP)            $    $  /         $    $  ANS014.BYTE004  $  if(((x4>>1)&1)) y=@0001;else y=@0000;
  $  029.高压开关阀1状态(仅ESP)            $    $  /         $    $  ANS014.BYTE004  $  if(((x4>>2)&1)) y=@0001;else y=@0000;
  $  030.高压开关阀2状态(仅ESP)            $    $  /         $    $  ANS014.BYTE004  $  if(((x4>>3)&1)) y=@0001;else y=@0000;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E4 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
