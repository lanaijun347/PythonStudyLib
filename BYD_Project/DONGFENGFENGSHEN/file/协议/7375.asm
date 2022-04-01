
    车型ID：7375

    模拟：协议模拟-->7375

;******************************************************************************************************************************************************

    通讯线: $~11$~12$~500k$~709

进入命令:

  $~  REQ000:701 02 10 01 00 00 00 00 00       $~  ANS000:709 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:701 02 3E 00 00 00 00 00 00       $!  ANS000:709 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:701 03 19 02 09 00 00 00 00       $#  ANS000:709 03 19 02 09 00 00 00 00

		控制公式：
			if(x1==0x53&&x2==0x16&&x3==0x48)y=0;else y=0x35000000+(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ffffffff


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:701 04 14 FF FF FF 00 00 00       $$  ANS000:709 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:701 03 22 F1 87 00 00 00 00       $%  ANS000:709 03 22 F1 87 00 00 00 00
  $%  REQ001:701 03 22 F1 97 00 00 00 00       $%  ANS001:709 03 22 F1 97 00 00 00 00
  $%  REQ002:701 03 22 F1 8A 00 00 00 00       $%  ANS002:709 03 22 F1 8A 00 00 00 00
  $%  REQ003:701 03 22 F1 89 00 00 00 00       $%  ANS003:709 03 22 F1 89 00 00 00 00
  $%  REQ004:701 03 22 F1 79 00 00 00 00       $%  ANS004:709 03 22 F1 79 00 00 00 00
  $%  REQ005:701 03 22 F1 99 00 00 00 00       $%  ANS005:709 03 22 F1 99 00 00 00 00
  $%  REQ006:701 03 22 F1 7F 00 00 00 00       $%  ANS006:709 03 22 F1 7F 00 00 00 00
  $%  REQ007:701 03 22 F1 9C 00 00 00 00       $%  ANS007:709 03 22 F1 9C 00 00 00 00
  $%  REQ008:701 03 22 F1 7E 00 00 00 00       $%  ANS008:709 03 22 F1 7E 00 00 00 00
  $%  REQ009:701 03 22 F1 8C 00 00 00 00       $%  ANS009:709 03 22 F1 8C 00 00 00 00
  $%  REQ010:701 03 22 F1 93 00 00 00 00       $%  ANS010:709 03 22 F1 93 00 00 00 00
  $%  REQ011:701 03 22 F1 94 00 00 00 00       $%  ANS011:709 03 22 F1 94 00 00 00 00
  $%  REQ012:701 03 22 F1 86 00 00 00 00       $%  ANS012:709 03 22 F1 86 00 00 00 00
  $%  REQ013:701 03 22 F1 A1 00 00 00 00       $%  ANS013:709 03 22 F1 A1 00 00 00 00

  $%  000:零件号:                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  001:系统名称:                   $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商代码:                 $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:软件版本(OEM):              $%    $%  ANS003.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  004:硬件版本(OEM):              $%    $%  ANS004.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  005:软件发布日期:               $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  006:软件校验码:                 $%    $%  ANS006.BYTE004  $%  HEX(x1,x2);
  $%  007:标定软件版本:               $%    $%  ANS007.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  008:标定软件校验码:             $%    $%  ANS008.BYTE004  $%  HEX(x1,x2);
  $%  009:ECU序列号:                  $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26);
  $%  010:系统供应商硬件版本号:       $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2);
  $%  011:系统供应商软件版本号:       $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  012:诊断模式:                   $%    $%  ANS012.BYTE004  $%  if(x==0x01)y=@04fd;else if(x==0x02)y=@04fe;else if(x==0x03)y=@04ff;else y=@0027;
  $%  013:维修店编码:                 $%    $%  ANS013.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  014:维修时间:                   $%    $%  ANS013.BYTE009  $%  HEX(x1,x2,x3,x4);
  $%  015:维修时的总里程:             $%    $%  ANS013.BYTE013  $%  y=(x1<<16)+(x2<<8)+x3;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:701 03 22 F0 10 00 00 00 00       $  ANS000:709 03 22 F0 10 00 00 00 00
  $  REQ001:701 03 22 F0 11 00 00 00 00       $  ANS001:709 03 22 F0 11 00 00 00 00
  $  REQ002:701 03 22 F0 12 00 00 00 00       $  ANS002:709 03 22 F0 12 00 00 00 00

  $  000.传感器功能        $    $       $    $  ANS000.BYTE004  $  if(x==0x00)y=@0552;else if(x==0x01)y=@0553;else if(x==0x02)y=@0554;else y=@00b0;
  $  001.MTS通信配置       $    $       $    $  ANS001.BYTE004  $  if(x==0x00)y=@054f;else if(x==0x01)y=@0550;else if(x==0x02)y=@0551;else y=@0027;
  $  002.XCP通信配置       $    $       $    $  ANS002.BYTE004  $  if(x==0x00)y=@054d;else if(x==0x01)y=@054e;else y=@0027;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:701 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:701 30 00 14 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
