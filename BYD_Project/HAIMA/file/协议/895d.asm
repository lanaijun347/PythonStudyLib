
    车型ID：895d

    模拟：协议模拟-->895d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:744 02 10 03 00 00 00 00 00       $~  ANS000:74C 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:744 02 3E 00 00 00 00 00 00       $!  ANS000:74C 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:744 03 19 02 01 00 00 00 00       $#  ANS000:74C 03 19 02 01 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/8a000000_2BYTE


  $#  01.读历史故障码
  $#  REQ000:744 03 19 02 08 00 00 00 00       $#  ANS000:74C 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/8a000000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:744 04 14 FF FF FF 00 00 00       $$  ANS000:74C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:744 03 22 F1 87 00 00 00 00       $%  ANS000:74C 03 22 F1 87 00 00 00 00
  $%  REQ001:744 03 22 F1 8A 00 00 00 00       $%  ANS001:74C 03 22 F1 8A 00 00 00 00
  $%  REQ002:744 03 22 F1 8B 00 00 00 00       $%  ANS002:74C 03 22 F1 8B 00 00 00 00
  $%  REQ003:744 03 22 F1 8C 00 00 00 00       $%  ANS003:74C 03 22 F1 8C 00 00 00 00
  $%  REQ004:744 03 22 F1 90 00 00 00 00       $%  ANS004:74C 03 22 F1 90 00 00 00 00
  $%  REQ005:744 03 22 F1 93 00 00 00 00       $%  ANS005:74C 03 22 F1 93 00 00 00 00
  $%  REQ006:744 03 22 F1 95 00 00 00 00       $%  ANS006:74C 03 22 F1 95 00 00 00 00
  $%  REQ007:744 03 22 F1 99 00 00 00 00       $%  ANS007:74C 03 22 F1 99 00 00 00 00
  $%  REQ008:744 03 22 F1 9D 00 00 00 00       $%  ANS008:74C 03 22 F1 9D 00 00 00 00

  $%  000:整车厂定义的零件编号:                     $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11);
  $%  001:供应商标志信息:                           $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9);
  $%  002:供应商生产线ECU生产日期(年/月/日):        $%    $%  ANS002.BYTE004  $%  HEX(X1,X2,X3,X4);
  $%  003:ECU序列号:                                $%    $%  ANS003.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  004:车辆识别码:                               $%    $%  ANS004.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  005:供应商ECU硬件版本号:                      $%    $%  ANS005.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11);
  $%  006:供应商ECU软件版本号:                      $%    $%  ANS006.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:编程日期(年/月/日):                       $%    $%  ANS007.BYTE004  $%  HEX(X1,X2,X3,X4);
  $%  008:ECU装车日期(年/月/日):                    $%    $%  ANS008.BYTE004  $%  HEX(X1,X2,X3,X4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:744 03 22 80 00 00 00 00 00       $  ANS000:74C 03 22 80 00 00 00 00 00
  $  REQ001:744 03 22 80 22 00 00 00 00       $  ANS001:74C 03 22 80 22 00 00 00 00
  $  REQ002:744 03 22 80 25 00 00 00 00       $  ANS002:74C 03 22 80 25 00 00 00 00
  $  REQ003:744 03 22 80 28 00 00 00 00       $  ANS003:74C 03 22 80 28 00 00 00 00
  $  REQ004:744 03 22 80 30 00 00 00 00       $  ANS004:74C 03 22 80 30 00 00 00 00
  $  REQ005:744 03 22 80 5E 00 00 00 00       $  ANS005:74C 03 22 80 5E 00 00 00 00
  $  REQ006:744 03 22 81 6E 00 00 00 00       $  ANS006:74C 03 22 81 6E 00 00 00 00
  $  REQ007:744 03 22 81 81 00 00 00 00       $  ANS007:74C 03 22 81 81 00 00 00 00
  $  REQ008:744 03 22 81 83 00 00 00 00       $  ANS008:74C 03 22 81 83 00 00 00 00

  $  000.电瓶电压                              $    $  V            $    $  ANS000.BYTE004  $  y=x1*0.1;
  $  001.车速表                                $    $  Km/h         $    $  ANS001.BYTE004  $  y=(x1*256+x2);
  $  002.转速表                                $    $  rpm          $    $  ANS002.BYTE004  $  y=(x1*256+x2);
  $  003.水温表                                $    $  degree C     $    $  ANS003.BYTE004  $  y=x1-40;
  $  004.功率表                                $    $               $    $  ANS004.BYTE004  $  y=x1-30;
  $  005.防抱死刹车系统(ABS)故障指示           $    $               $    $  ANS005.BYTE004  $  if((x&0x01)==0x01)y=@003a;else if((x&0x01)==0x00)y=@0021;else y=@0003;
  $  006.安全气囊故障指示信号                  $    $               $    $  ANS005.BYTE004  $  if((x&0x02)==0x02)y=@003a;else if((x&0x02)==0x00)y=@0021;else y=@0003;
  $  007.主驾驶安全带指示信号                  $    $               $    $  ANS005.BYTE004  $  if((x&0x04)==0x04)y=@003a;else if((x&0x04)==0x00)y=@0021;else y=@0003;
  $  008.副驾驶安全带指示信号                  $    $               $    $  ANS005.BYTE004  $  if((x&0x08)==0x08)y=@003a;else if((x&0x08)==0x00)y=@0021;else y=@0003;
  $  009.远光灯                                $    $               $    $  ANS005.BYTE004  $  if((x&0x10)==0x10)y=@003a;else if((x&0x10)==0x00)y=@0021;else y=@0003;
  $  010.位置灯指示灯                          $    $               $    $  ANS005.BYTE004  $  if((x&0x20)==0x20)y=@003a;else if((x&0x20)==0x00)y=@0021;else y=@0003;
  $  011.制动系统故障报警                      $    $               $    $  ANS005.BYTE004  $  if((x&0x40)==0x40)y=@003a;else if((x&0x40)==0x00)y=@0021;else y=@0003;
  $  012.电动助力转向系统(EPS)故障指示灯       $    $               $    $  ANS005.BYTE004  $  if((x&0x80)==0x80)y=@003a;else if((x&0x80)==0x00)y=@0021;else y=@0003;
  $  013.左转向指示信号                        $    $               $    $  ANS005.BYTE005  $  if((x&0x01)==0x01)y=@003a;else if((x&0x01)==0x00)y=@0021;else y=@0003;
  $  014.右转向指示信号                        $    $               $    $  ANS005.BYTE005  $  if((x&0x02)==0x02)y=@003a;else if((x&0x02)==0x00)y=@0021;else y=@0003;
  $  015.前雾灯指示信号                        $    $               $    $  ANS005.BYTE005  $  if((x&0x04)==0x04)y=@003a;else if((x&0x04)==0x00)y=@0021;else y=@0003;
  $  016.后雾灯指示信号                        $    $               $    $  ANS005.BYTE005  $  if((x&0x08)==0x08)y=@003a;else if((x&0x08)==0x00)y=@0021;else y=@0003;
  $  017.水温报警指示信号                      $    $               $    $  ANS005.BYTE005  $  if((x&0x10)==0x10)y=@003a;else if((x&0x10)==0x00)y=@0021;else y=@0003;
  $  018.充电指示                              $    $               $    $  ANS005.BYTE005  $  if((x&0x20)==0x20)y=@003a;else if((x&0x20)==0x00)y=@0021;else y=@0003;
  $  019.电机及控制器过热                      $    $               $    $  ANS005.BYTE005  $  if((x&0x40)==0x40)y=@003a;else if((x&0x40)==0x00)y=@0021;else y=@0003;
  $  020.系统故障                              $    $               $    $  ANS005.BYTE005  $  if((x&0x80)==0x80)y=@003a;else if((x&0x80)==0x00)y=@0021;else y=@0003;
  $  021.绝缘电阻报警                          $    $               $    $  ANS005.BYTE006  $  if((x&0x01)==0x01)y=@003a;else if((x&0x01)==0x00)y=@0021;else y=@0003;
  $  022.动力电池切断                          $    $               $    $  ANS005.BYTE006  $  if((x&0x02)==0x02)y=@003a;else if((x&0x02)==0x00)y=@0021;else y=@0003;
  $  023.DCDC故障指示信号                      $    $               $    $  ANS005.BYTE006  $  if((x&0x04)==0x04)y=@003a;else if((x&0x04)==0x00)y=@0021;else y=@0003;
  $  024.充电线连接指示                        $    $               $    $  ANS005.BYTE006  $  if((x&0x08)==0x08)y=@003a;else if((x&0x08)==0x00)y=@0021;else y=@0003;
  $  025.电池剩余容量低                        $    $               $    $  ANS005.BYTE006  $  if((x&0x10)==0x10)y=@003a;else if((x&0x10)==0x00)y=@0021;else y=@0003;
  $  026.档位信息指示灯                        $    $               $    $  ANS005.BYTE006  $  if((x&0xe0)==0x20)y=@0087;else if((x&0xe0)==0x40)y=@02b2;else if((x&0xe0)==0x60)y=@02b3;else if((x&0xe0)==0x80)y=@0086;else y=@0003;
  $  027.P档控制器故障报警                     $    $               $    $  ANS005.BYTE007  $  if((x&0x01)==0x01)y=@003a;else if((x&0x01)==0x00)y=@0021;else y=@0003;
  $  028.限功率灯                              $    $               $    $  ANS005.BYTE007  $  if((x&0x02)==0x02)y=@003a;else if((x&0x02)==0x00)y=@0021;else y=@0003;
  $  029.前机舱开关状态                        $    $               $    $  ANS005.BYTE007  $  if((x&0x04)==0x04)y=@003a;else if((x&0x04)==0x00)y=@0021;else y=@0003;
  $  030.左前门状态                            $    $               $    $  ANS005.BYTE007  $  if((x&0x08)==0x08)y=@003a;else if((x&0x08)==0x00)y=@0021;else y=@0003;
  $  031.右前门状态                            $    $               $    $  ANS005.BYTE007  $  if((x&0x10)==0x10)y=@003a;else if((x&0x10)==0x00)y=@0021;else y=@0003;
  $  032.左后门状态                            $    $               $    $  ANS005.BYTE007  $  if((x&0x20)==0x20)y=@003a;else if((x&0x20)==0x00)y=@0021;else y=@0003;
  $  033.右后门状态                            $    $               $    $  ANS005.BYTE007  $  if((x&0x40)==0x40)y=@003a;else if((x&0x40)==0x00)y=@0021;else y=@0003;
  $  034.行李箱状态                            $    $               $    $  ANS005.BYTE007  $  if((x&0x80)==0x80)y=@003a;else if((x&0x80)==0x00)y=@0021;else y=@0003;
  $  035.READY指示灯                           $    $               $    $  ANS006.BYTE004  $  if((x&0x01)==0x01)y=@003a;else if((x&0x01)==0x00)y=@0021;else y=@0003;
  $  036.背光等级                              $    $  级           $    $  ANS007.BYTE004  $  y=x1;
  $  037.当前设计界面                          $    $               $    $  ANS008.BYTE004  $  if((x&0xff)==0x01)y=@02b4;else if((x&0xff)==0x02)y=@02b5;else if((x&0xff)==0x03)y=@02b6;else if((x&0xff)==0x04)y=@02b7;else if((x&0xff)==0x05)y=@02b8;else if((x&0xff)==0x06)y=@02b9;else y=@0003;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:744 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
