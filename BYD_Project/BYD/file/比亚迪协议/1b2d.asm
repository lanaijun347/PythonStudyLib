
    车型ID：1b2d

    模拟：协议模拟-->1b2d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:792 02 10 01 00 00 00 00 00       $~  ANS000:79A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:792 02 3E 80 00 00 00 00 00       $!  ANS000:79A 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:792 03 19 02 09 00 00 00 00       $#  ANS000:79A 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:792 04 14 FF FF FF 00 00 00       $$  ANS000:79A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:792 03 22 F1 89 00 00 00 00       $%  ANS000:79A 03 22 F1 89 00 00 00 00
  $%  REQ001:792 03 22 F0 FE 00 00 00 00       $%  ANS001:79A 03 22 F0 FE 00 00 00 00
  $%  REQ002:792 03 22 F1 80 00 00 00 00       $%  ANS002:79A 03 22 F1 80 00 00 00 00
  $%  REQ003:792 03 22 F1 99 00 00 00 00       $%  ANS003:79A 03 22 F1 99 00 00 00 00

  $%  000:软件版本:                $%    $%  ANS000.BYTE004  $%  y=SPRINTF([20%02d.%02d.%02d],x1,x2,x3);
  $%  001:硬件版本:                $%    $%  ANS001.BYTE004  $%  y=SPRINTF([20%02d.%02d.%02d],x1,x2,x3);
  $%  002:Bootloader版本号:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([20%02d.%02d.%02d],x1,x2,x3);
  $%  003:编程日期:                $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:792 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
