
    车型ID：734a

    模拟：协议模拟-->734a

;******************************************************************************************************************************************************

    通讯线: $~03$~08$~500k$~71E

进入命令:

  $~  REQ000:716 02 10 01 00 00 00 00 00       $~  ANS000:71E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:716 02 3E 00 00 00 00 00 00       $!  ANS000:71E 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:716 03 19 02 09 00 00 00 00       $#  ANS000:71E 03 19 02 09 00 00 00 00

		控制公式：
			if((x1==0x9f&&x2==0x0d&&x3==0x00)||(x1==0x9f&&x2==0x0e&&x3==0x00))y=0;else y=0x33000000+(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ffffffff


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:716 04 14 FF FF FF 00 00 00       $$  ANS000:71E 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:716 03 22 F1 89 00 00 00 00       $%  ANS000:71E 03 22 F1 89 00 00 00 00
  $%  REQ001:716 03 22 F1 79 00 00 00 00       $%  ANS001:71E 03 22 F1 79 00 00 00 00
  $%  REQ002:716 03 22 F1 99 00 00 00 00       $%  ANS002:71E 03 22 F1 99 00 00 00 00
  $%  REQ003:716 03 22 F1 8A 00 00 00 00       $%  ANS003:71E 03 22 F1 8A 00 00 00 00
  $%  REQ004:716 03 22 F1 87 00 00 00 00       $%  ANS004:71E 03 22 F1 87 00 00 00 00
  $%  REQ005:716 03 22 F1 97 00 00 00 00       $%  ANS005:71E 03 22 F1 97 00 00 00 00
  $%  REQ006:716 03 22 F1 7F 00 00 00 00       $%  ANS006:71E 03 22 F1 7F 00 00 00 00
  $%  REQ007:716 03 22 F1 8C 00 00 00 00       $%  ANS007:71E 03 22 F1 8C 00 00 00 00
  $%  REQ008:716 03 22 F1 A1 00 00 00 00       $%  ANS008:71E 03 22 F1 A1 00 00 00 00
  $%  REQ009:716 03 22 F1 86 00 00 00 00       $%  ANS009:71E 03 22 F1 86 00 00 00 00

  $%  000:软件版本(OEM):        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4)&0x0F,(x1&0x0F),x2);
  $%  001:硬件版本(OEM):        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4)&0x0F,(x1&0x0F),x2);
  $%  002:软件发布日期:         $%    $%  ANS002.BYTE004  $%  if((x1==0xff&&x2==0xff&&x3==0xff&&x4==0xff)||(x1==0&&x2==0&&x3==0&&x4==0))y=@0425;else y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  003:供应商代码:           $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:零件号:               $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  005:系统名称:             $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3);
  $%  006:软件校验码:           $%    $%  ANS006.BYTE004  $%  HEX(x1,x2);
  $%  007:ECU生产序列号:        $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  008:维修店编码:           $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  009:维修日期:             $%    $%  ANS008.BYTE009  $%  if((x1==0xff&&x2==0xff&&x3==0xff&&x4==0xff)||(x1==0&&x2==0&&x3==0&&x4==0))y=@0425;else y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:维修时的里程:         $%    $%  ANS008.BYTE013  $%  y=x1*65536+x2*256+x3;
  $%  011:激活的诊断会话:       $%    $%  ANS009.BYTE004  $%  if(x==0x01)y=@04fd;else if(x==0x02)y=@04fe;else if(x==0x03)y=@04ff;else y=@0027;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:716 03 22 17 00 00 00 00 00       $  ANS000:71E 03 22 17 00 00 00 00 00
  $  REQ001:716 03 22 17 01 00 00 00 00       $  ANS001:71E 03 22 17 01 00 00 00 00
  $  REQ002:716 03 22 17 02 00 00 00 00       $  ANS002:71E 03 22 17 02 00 00 00 00
  $  REQ003:716 03 22 17 03 00 00 00 00       $  ANS003:71E 03 22 17 03 00 00 00 00
  $  REQ004:716 03 22 17 04 00 00 00 00       $  ANS004:71E 03 22 17 04 00 00 00 00
  $  REQ005:716 03 22 17 05 00 00 00 00       $  ANS005:71E 03 22 17 05 00 00 00 00
  $  REQ006:716 03 22 17 06 00 00 00 00       $  ANS006:71E 03 22 17 06 00 00 00 00
  $  REQ007:716 03 22 17 07 00 00 00 00       $  ANS007:71E 03 22 17 07 00 00 00 00

  $  000.电机电源路电压                     $    $  V     $    $  ANS000.BYTE004  $  y=((((x*256+x2)/1024)*5)/10)*57;
  $  001.数字电源路电压                     $    $  V     $    $  ANS001.BYTE004  $  y=((((x*256+x2)/1024)*5)/10)*57;
  $  002.防夹条1电压                        $    $  V     $    $  ANS002.BYTE004  $  y=(x1*256+x2)*5/1024;
  $  003.防夹条2电压                        $    $  V     $    $  ANS003.BYTE004  $  y=(x1*256+x2)*5/1024;
  $  004.后背门位置HALL(霍尔)脉冲个数       $    $        $    $  ANS004.BYTE004  $  y=x1*256+x2;
  $  005.中控台开关                         $    $        $    $  ANS005.BYTE004  $  if(((x>>0)&1))y=@015d;else y=@006c;
  $  006.内部关闭开关                       $    $        $    $  ANS005.BYTE004  $  if(((x>>1)&1))y=@015d;else y=@006c;
  $  007.全锁位置                           $    $        $    $  ANS005.BYTE004  $  if(((x>>2)&1))y=@056e;else y=@056f;
  $  008.半锁位置                           $    $        $    $  ANS005.BYTE004  $  if(((x>>3)&1))y=@056c;else y=@056d;
  $  009.闭锁器状态                         $    $        $    $  ANS005.BYTE004  $  if(((x>>4)&1))y=@056b;else y=@0510;
  $  010.继电器1状态                        $    $        $    $  ANS006.BYTE004  $  if(((x>>0)&1))y=@015d;else y=@006c;
  $  011.继电器2状态                        $    $        $    $  ANS006.BYTE004  $  if(((x>>1)&1))y=@015d;else y=@006c;
  $  012.继电器5状态                        $    $        $    $  ANS006.BYTE004  $  if(((x>>4)&1))y=@015d;else y=@006c;
  $  013.继电器6状态                        $    $        $    $  ANS006.BYTE004  $  if(((x>>5)&1))y=@015d;else y=@006c;
  $  014.继电器7状态                        $    $        $    $  ANS006.BYTE004  $  if(((x>>6)&1))y=@015d;else y=@006c;
  $  015.双向闭锁器                         $    $        $    $  ANS007.BYTE004  $  if(((x>>0)&1))y=@009c;else y=@009b;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:716 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
