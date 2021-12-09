
    车型ID：6585

    模拟：协议模拟-->6585

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:736 02 10 01 00 00 00 00 00       $~  ANS000:7B6 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:736 02 3E 00 00 00 00 00 00       $!  ANS000:7B6 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:736 03 19 02 09 00 00 00 00       $#  ANS000:7B6 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/94000000


  $#  01.读历史故障码
  $#  REQ000:736 03 19 02 08 00 00 00 00       $#  ANS000:7B6 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/94000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:736 04 14 FF FF FF 00 00 00       $$  ANS000:7B6 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:736 03 22 F1 12 00 00 00 00       $%  ANS000:7B6 03 22 F1 12 00 00 00 00
  $%  REQ001:736 03 22 F1 87 00 00 00 00       $%  ANS001:7B6 03 22 F1 87 00 00 00 00
  $%  REQ002:736 03 22 F1 89 00 00 00 00       $%  ANS002:7B6 03 22 F1 89 00 00 00 00
  $%  REQ003:736 03 22 F1 8A 00 00 00 00       $%  ANS003:7B6 03 22 F1 8A 00 00 00 00
  $%  REQ004:736 03 22 F1 93 00 00 00 00       $%  ANS004:7B6 03 22 F1 93 00 00 00 00
  $%  REQ005:736 03 22 F1 95 00 00 00 00       $%  ANS005:7B6 03 22 F1 95 00 00 00 00
  $%  REQ006:736 03 22 F1 9D 00 00 00 00       $%  ANS006:7B6 03 22 F1 9D 00 00 00 00
  $%  REQ007:736 03 22 F1 90 00 00 00 00       $%  ANS007:7B6 03 22 F1 90 00 00 00 00

  $%  000:车辆名称:                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  001:整车厂定义的零件编号:        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:力帆 ECU软件版本号:          $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3);
  $%  003:供应商标志信息:              $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:供应商硬件版本号:            $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  005:供应商软件版本号:            $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:ECU装车日期:                 $%    $%  ANS006.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  007:车辆识别码:                  $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:736 03 22 05 00 00 00 00 00       $  ANS000:7B6 03 22 05 00 00 00 00 00
  $  REQ001:736 03 22 05 01 00 00 00 00       $  ANS001:7B6 03 22 05 01 00 00 00 00
  $  REQ002:736 03 22 05 02 00 00 00 00       $  ANS002:7B6 03 22 05 02 00 00 00 00
  $  REQ003:736 03 22 05 03 00 00 00 00       $  ANS003:7B6 03 22 05 03 00 00 00 00
  $  REQ004:736 03 22 05 04 00 00 00 00       $  ANS004:7B6 03 22 05 04 00 00 00 00
  $  REQ005:736 03 22 05 05 00 00 00 00       $  ANS005:7B6 03 22 05 05 00 00 00 00
  $  REQ006:736 03 22 05 06 00 00 00 00       $  ANS006:7B6 03 22 05 06 00 00 00 00
  $  REQ007:736 03 22 05 07 00 00 00 00       $  ANS007:7B6 03 22 05 07 00 00 00 00
  $  REQ008:736 03 22 05 08 00 00 00 00       $  ANS008:7B6 03 22 05 08 00 00 00 00

  $  000.环境温度                        $    $       $    $  ANS000.BYTE004  $  y=x1*0.5-40;
  $  001.车内温度                        $    $       $    $  ANS001.BYTE004  $  y=x1*0.5-40;
  $  002.蒸发器温度                      $    $       $    $  ANS002.BYTE004  $  y=x1*0.5-40;
  $  003.鼓风机                          $    $       $    $  ANS003.BYTE004  $  y=x1;
  $  004.电池                            $    $       $    $  ANS004.BYTE004  $  y=x1*0.1;
  $  005.混合电机位置                    $    $       $    $  ANS005.BYTE004  $  if(x1==0x00) y=@0057;else if(x1==0x01) y=@0058;else if(x1==0x02) y=@0059;else y=@0018;
  $  006.模式电机位置                    $    $       $    $  ANS006.BYTE004  $  if(x1==0x00) y=@0052;else if(x1==0x01) y=@0053;else if(x1==0x02) y=@0054;else if(x1==0x03) y=@0055;else if(x1==0x04) y=@0056;else y=@0018;
  $  007.内外空气循环电机位置            $    $       $    $  ANS007.BYTE004  $  if(x1&0x01) y=@0050;else y=@0051;
  $  008.循环按钮状态                    $    $       $    $  ANS008.BYTE004  $  if((x1&0x03)==0x00) y=@006f;else if((x1&0x03)==0x01) y=@0070;else if((x1&0x03)==0x02) y=@0071;else y=@0003;
  $  009.空调(AC)按钮状态                $    $       $    $  ANS008.BYTE004  $  if((x1&0x0C)==0x00) y=@006c;else if((x1&0x0C)==0x04) y=@006d;else if((x1&0x0C)==0x08) y=@006e;else y=@0003;
  $  010.除霜按钮状态                    $    $       $    $  ANS008.BYTE004  $  if((x1&0x30)==0x00) y=@0069;else if((x1&0x30)==0x10) y=@006a;else if((x1&0x30)==0x20) y=@006b;else y=@0003;
  $  011.后部除霜按钮状态                $    $       $    $  ANS008.BYTE004  $  if((x1&0xC0)==0x00) y=@0066;else if((x1&0xC0)==0x40) y=@0067;else if((x1&0xC0)==0x80) y=@0068;else y=@0003;
  $  012.模式按钮状态                    $    $       $    $  ANS008.BYTE005  $  if((x1&0x03)==0x00) y=@0063;else if((x1&0x03)==0x01) y=@0064;else if((x1&0x03)==0x02) y=@0065;else y=@0003;
  $  013.暖风加热系统(PTC)按钮状态       $    $       $    $  ANS008.BYTE005  $  if((x1&0x0C)==0x00) y=@0060;else if((x1&0x0C)==0x04) y=@0061;else if((x1&0x0C)==0x08) y=@0062;else y=@0003;
  $  014.鼓风机速度编码                  $    $       $    $  ANS008.BYTE005  $  if((x1&0x30)==0x00) y=@005d;else if((x1&0x30)==0x10) y=@005e;else if((x1&0x30)==0x20) y=@005f;else y=@0003;
  $  015.温度设置编码                    $    $       $    $  ANS008.BYTE005  $  if((x1&0xC0)==0x00) y=@005a;else if((x1&0xC0)==0x40) y=@005b;else if((x1&0xC0)==0x80) y=@005c;else y=@0003;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:736 30 00 14 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
