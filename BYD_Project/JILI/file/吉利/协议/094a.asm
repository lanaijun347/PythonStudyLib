
    车型ID：094a

    模拟：协议模拟-->094a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~73F

进入命令:

  $~  REQ000:737 02 10 01 00 00 00 00 00       $~  ANS000:73F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:737 02 3E 00 00 00 00 00 00       $!  ANS000:73F 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:737 03 19 02 09 00 00 00 00       $#  ANS000:73F 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ff000000


  $#  01.读故障码库
  $#  REQ000:737 02 19 0A 00 00 00 00 00       $#  ANS000:73F 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ff000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:737 04 14 FF FF FF 00 00 00       $$  ANS000:73F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:737 03 22 F1 12 00 00 00 00       $%  ANS000:73F 03 22 F1 12 00 00 00 00
  $%  REQ001:737 03 22 F1 80 00 00 00 00       $%  ANS001:73F 03 22 F1 80 00 00 00 00
  $%  REQ002:737 03 22 F1 87 00 00 00 00       $%  ANS002:73F 03 22 F1 87 00 00 00 00
  $%  REQ003:737 03 22 F1 8A 00 00 00 00       $%  ANS003:73F 03 22 F1 8A 00 00 00 00
  $%  REQ004:737 03 22 F1 8B 00 00 00 00       $%  ANS004:73F 03 22 F1 8B 00 00 00 00
  $%  REQ005:737 03 22 F1 8C 00 00 00 00       $%  ANS005:73F 03 22 F1 8C 00 00 00 00
  $%  REQ006:737 03 22 F1 90 00 00 00 00       $%  ANS006:73F 03 22 F1 90 00 00 00 00
  $%  REQ007:737 03 22 F1 93 00 00 00 00       $%  ANS007:73F 03 22 F1 93 00 00 00 00
  $%  REQ008:737 03 22 F1 95 00 00 00 00       $%  ANS008:73F 03 22 F1 95 00 00 00 00
  $%  REQ009:737 03 22 F1 98 00 00 00 00       $%  ANS009:73F 03 22 F1 98 00 00 00 00
  $%  REQ010:737 03 22 F1 99 00 00 00 00       $%  ANS010:73F 03 22 F1 99 00 00 00 00
  $%  REQ011:737 03 22 F1 9D 00 00 00 00       $%  ANS011:73F 03 22 F1 9D 00 00 00 00
  $%  REQ012:737 03 22 F1 82 00 00 00 00       $%  ANS012:73F 03 22 F1 82 00 00 00 00

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

  $  REQ000:737 03 22 33 01 00 00 00 00       $  ANS000:73F 03 22 33 01 00 00 00 00
  $  REQ001:737 03 22 33 02 00 00 00 00       $  ANS001:73F 03 22 33 02 00 00 00 00
  $  REQ002:737 03 22 33 03 00 00 00 00       $  ANS002:73F 03 22 33 03 00 00 00 00
  $  REQ003:737 03 22 33 05 00 00 00 00       $  ANS003:73F 03 22 33 05 00 00 00 00
  $  REQ004:737 03 22 33 06 00 00 00 00       $  ANS004:73F 03 22 33 06 00 00 00 00

  $  000.左前胎压传感器ID                         $    $  /        $    $  ANS000.BYTE004  $  HEX(x1,x2,x3,x4);
  $  001.右前胎压传感器ID                         $    $  /        $    $  ANS000.BYTE008  $  HEX(x1,x2,x3,x4);
  $  002.右后胎压传感器ID                         $    $  /        $    $  ANS000.BYTE012  $  HEX(x1,x2,x3,x4);
  $  003.左后胎压传感器ID                         $    $  /        $    $  ANS000.BYTE016  $  HEX(x1,x2,x3,x4);
  $  004.左前胎压值                               $    $  kPa      $    $  ANS001.BYTE004  $  y=x1*1.373;
  $  005.右前胎压值                               $    $  kPa      $    $  ANS001.BYTE005  $  y=x1*1.373;
  $  006.右后胎压值                               $    $  kPa      $    $  ANS001.BYTE006  $  y=x1*1.373;
  $  007.左后胎压值                               $    $  kPa      $    $  ANS001.BYTE007  $  y=x1*1.373;
  $  008.左前轮温度值                             $    $  degC     $    $  ANS002.BYTE004  $  y=x-50;
  $  009.右前轮温度值                             $    $  degC     $    $  ANS002.BYTE005  $  y=x-50;
  $  010.右后轮温度值                             $    $  degC     $    $  ANS002.BYTE006  $  y=x-50;
  $  011.左后轮温度值                             $    $  degC     $    $  ANS002.BYTE007  $  y=x-50;
  $  012.最近一次TPMS(胎压监视系统)报警源         $    $  /        $    $  ANS003.BYTE004  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  013.倒数第二次TPMS(胎压监视系统)报警源       $    $  /        $    $  ANS003.BYTE005  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  014.倒数第三次TPMS(胎压监视系统)报警源       $    $  /        $    $  ANS003.BYTE006  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  015.倒数第四次TPMS(胎压监视系统)报警源       $    $  /        $    $  ANS003.BYTE007  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  016.倒数第五次TPMS(胎压监视系统)报警源       $    $  /        $    $  ANS003.BYTE008  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  017.倒数第六次TPMS(胎压监视系统)报警源       $    $  /        $    $  ANS003.BYTE009  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  018.倒数第七次TPMS(胎压监视系统)报警源       $    $  /        $    $  ANS003.BYTE010  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  019.倒数第八次TPMS(胎压监视系统)报警源       $    $  /        $    $  ANS003.BYTE011  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  020.倒数第九次TPMS(胎压监视系统)报警源       $    $  /        $    $  ANS003.BYTE012  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  021.倒数第十次TPMS(胎压监视系统)报警源       $    $  /        $    $  ANS003.BYTE013  $  strcat: if( (((x>>4)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d6e;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d6f;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d70;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d71;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d72;if( (((x>>4)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d73;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d74;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d75;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d76;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d77;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d78;if( (((x>>5)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d79;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d7a;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d7b;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d7c;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d7d;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d7e;if( (((x>>6)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d7f;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x01) ) y=@0d80;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x02) ) y=@0d81;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x03) ) y=@0d82;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x04) ) y=@0d83;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x05) ) y=@0d84;if( (((x>>7)&1)) && ( (x & 0x0F) == 0x06) ) y=@0d85;
  $  022.低压报警记录-左前TMPS环境温度            $    $  degC     $    $  ANS004.BYTE010  $  if(x>=60 && x<=160) y=x-50;else y=@0008;
  $  023.低压报警记录-右前TMPS环境温度            $    $  degC     $    $  ANS004.BYTE017  $  if(x>=60 && x<=160) y=x-50;else y=@0008;
  $  024.低压报警记录-右后TMPS环境温度            $    $  degC     $    $  ANS004.BYTE024  $  if(x>=60 && x<=160) y=x-50;else y=@0008;
  $  025.低压报警记录-左后TMPS环境温度            $    $  degC     $    $  ANS004.BYTE031  $  if(x>=60 && x<=160) y=x-50;else y=@0008;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:737 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:737 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
