
    车型ID：092d

    模拟：协议模拟-->092d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~79E

进入命令:

  $~  REQ000:796 02 10 01 00 00 00 00 00       $~  ANS000:79E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:796 02 3E 00 00 00 00 00 00       $!  ANS000:79E 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:796 03 19 02 09 00 00 00 00       $#  ANS000:79E 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/2a000000


  $#  01.读故障码库
  $#  REQ000:796 02 19 0A 00 00 00 00 00       $#  ANS000:79E 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/2a000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:796 04 14 FF FF FF 00 00 00       $$  ANS000:79E 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:796 03 22 F1 12 00 00 00 00       $%  ANS000:79E 03 22 F1 12 00 00 00 00
  $%  REQ001:796 03 22 F1 80 00 00 00 00       $%  ANS001:79E 03 22 F1 80 00 00 00 00
  $%  REQ002:796 03 22 F1 87 00 00 00 00       $%  ANS002:79E 03 22 F1 87 00 00 00 00
  $%  REQ003:796 03 22 F1 8A 00 00 00 00       $%  ANS003:79E 03 22 F1 8A 00 00 00 00
  $%  REQ004:796 03 22 F1 8B 00 00 00 00       $%  ANS004:79E 03 22 F1 8B 00 00 00 00
  $%  REQ005:796 03 22 F1 8C 00 00 00 00       $%  ANS005:79E 03 22 F1 8C 00 00 00 00
  $%  REQ006:796 03 22 F1 90 00 00 00 00       $%  ANS006:79E 03 22 F1 90 00 00 00 00
  $%  REQ007:796 03 22 F1 93 00 00 00 00       $%  ANS007:79E 03 22 F1 93 00 00 00 00
  $%  REQ008:796 03 22 F1 95 00 00 00 00       $%  ANS008:79E 03 22 F1 95 00 00 00 00
  $%  REQ009:796 03 22 F1 98 00 00 00 00       $%  ANS009:79E 03 22 F1 98 00 00 00 00
  $%  REQ010:796 03 22 F1 99 00 00 00 00       $%  ANS010:79E 03 22 F1 99 00 00 00 00
  $%  REQ011:796 03 22 F1 9D 00 00 00 00       $%  ANS011:79E 03 22 F1 9D 00 00 00 00
  $%  REQ012:796 03 22 F1 82 00 00 00 00       $%  ANS012:79E 03 22 F1 82 00 00 00 00

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

  $  REQ000:796 03 22 DF 00 00 00 00 00       $  ANS000:79E 03 22 DF 00 00 00 00 00
  $  REQ001:796 03 22 DF 01 00 00 00 00       $  ANS001:79E 03 22 DF 01 00 00 00 00
  $  REQ002:796 03 22 35 00 00 00 00 00       $  ANS002:79E 03 22 35 00 00 00 00 00
  $  REQ003:796 03 22 35 01 00 00 00 00       $  ANS003:79E 03 22 35 01 00 00 00 00
  $  REQ004:796 03 22 35 02 00 00 00 00       $  ANS004:79E 03 22 35 02 00 00 00 00
  $  REQ005:796 03 22 35 04 00 00 00 00       $  ANS005:79E 03 22 35 04 00 00 00 00
  $  REQ006:796 03 22 35 05 00 00 00 00       $  ANS006:79E 03 22 35 05 00 00 00 00
  $  REQ007:796 03 22 35 06 00 00 00 00       $  ANS007:79E 03 22 35 06 00 00 00 00
  $  REQ008:796 03 22 35 07 00 00 00 00       $  ANS008:79E 03 22 35 07 00 00 00 00
  $  REQ009:796 03 22 35 08 00 00 00 00       $  ANS009:79E 03 22 35 08 00 00 00 00
  $  REQ010:796 03 22 35 09 00 00 00 00       $  ANS010:79E 03 22 35 09 00 00 00 00
  $  REQ011:796 03 22 35 0B 00 00 00 00       $  ANS011:79E 03 22 35 0B 00 00 00 00
  $  REQ012:796 03 22 35 0C 00 00 00 00       $  ANS012:79E 03 22 35 0C 00 00 00 00
  $  REQ013:796 03 22 35 0F 00 00 00 00       $  ANS013:79E 03 22 35 0F 00 00 00 00
  $  REQ014:796 03 22 35 10 00 00 00 00       $  ANS014:79E 03 22 35 10 00 00 00 00
  $  REQ015:796 03 22 35 11 00 00 00 00       $  ANS015:79E 03 22 35 11 00 00 00 00
  $  REQ016:796 03 22 35 12 00 00 00 00       $  ANS016:79E 03 22 35 12 00 00 00 00
  $  REQ017:796 03 22 35 13 00 00 00 00       $  ANS017:79E 03 22 35 13 00 00 00 00
  $  REQ018:796 03 22 35 14 00 00 00 00       $  ANS018:79E 03 22 35 14 00 00 00 00
  $  REQ019:796 03 22 35 15 00 00 00 00       $  ANS019:79E 03 22 35 15 00 00 00 00
  $  REQ020:796 03 22 35 16 00 00 00 00       $  ANS020:79E 03 22 35 16 00 00 00 00
  $  REQ021:796 03 22 35 17 00 00 00 00       $  ANS021:79E 03 22 35 17 00 00 00 00
  $  REQ022:796 03 22 35 18 00 00 00 00       $  ANS022:79E 03 22 35 18 00 00 00 00

  $  000.系统电压                  $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.发动机转速                $    $  Nm       $    $  ANS001.BYTE004  $  y=INT((x1*0x100+x2)*0.25);
  $  002.泵电流                    $    $  A        $    $  ANS002.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  003.离合器扭矩请求            $    $  Nm       $    $  ANS003.BYTE004  $  y=INT((x1*0x100+x2)*0.25);
  $  004.泵占空比                  $    $  %        $    $  ANS004.BYTE004  $  y=x;
  $  005.发动机扭矩                $    $  Nm       $    $  ANS005.BYTE004  $  y=(x1*0x100+x2)*0.5-1000;
  $  006.左前轮速                  $    $  km/h     $    $  ANS006.BYTE004  $  y=(x1*0x100+x2)*0.05625;
  $  007.左后轮速                  $    $  km/h     $    $  ANS007.BYTE004  $  y=(x1*0x100+x2)*0.05625;
  $  008.右前轮速                  $    $  km/h     $    $  ANS008.BYTE004  $  y=(x1*0x100+x2)*0.05625;
  $  009.右后轮速                  $    $  km/h     $    $  ANS009.BYTE004  $  y=(x1*0x100+x2)*0.05625;
  $  010.转向角                    $    $  deg      $    $  ANS010.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  011.油门开度                  $    $  %        $    $  ANS011.BYTE004  $  y=x*0.4;
  $  012.档位信息                  $    $  /        $    $  ANS012.BYTE004  $  if(x==0x00) y=@017b; else if(x==0x01) y=@0c97; else if(x==0x02) y=@0c98; else if(x==0x03) y=@0c99; else if(x==0x04) y=@0c9a; else if(x==0x05) y=@0c9b; else if(x==0x06) y=@0c9c; else if(x==0x07) y=@0c9d; else if(x==0x0A) y=@017d; else if(x==0x0B) y=@017c;else y=@0220;
  $  013.左前轮速无效状态位        $    $  /        $    $  ANS013.BYTE004  $  if(x==0x00) y=@0169; else if(x==0x01) y=@0132; else y=@0220;
  $  014.右前轮速无效状态位        $    $  /        $    $  ANS014.BYTE004  $  if(x==0x00) y=@0169; else if(x==0x01) y=@0132; else y=@0220;
  $  015.左后轮速无效状态位        $    $  /        $    $  ANS015.BYTE004  $  if(x==0x00) y=@0169; else if(x==0x01) y=@0132; else y=@0220;
  $  016.右后轮速无效状态位        $    $  /        $    $  ANS016.BYTE004  $  if(x==0x00) y=@0169; else if(x==0x01) y=@0132; else y=@0220;
  $  017.ECU(电子控制器)温度       $    $  degC     $    $  ANS017.BYTE004  $  if(x>0x7f) y=x-128; else y=x;
  $  018.高温计数器                $    $  /        $    $  ANS018.BYTE004  $  y=x1*0x100+x2;
  $  019.驾驶员请求扭矩            $    $  Nm       $    $  ANS019.BYTE004  $  y=(x1*0x100+x2)*0.5-1000;
  $  020.转速无效状态位            $    $  /        $    $  ANS020.BYTE004  $  if(x==0x00) y=@0169; else if(x==0x01) y=@0132; else y=@0220;
  $  021.扭矩无效状态位            $    $  /        $    $  ANS021.BYTE004  $  if(x==0x00) y=@0169; else if(x==0x01) y=@0132; else y=@0220;
  $  022.标定数据版本号            $    $  /        $    $  ANS022.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:796 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:796 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
