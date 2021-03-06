
    车型ID：2b31

    模拟：协议模拟-->2b31

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A2

进入命令:

  $~  REQ000:722 02 10 01 00 00 00 00 00       $~  ANS000:7A2 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:722 02 3E 00 00 00 00 00 00       $!  ANS000:7A2 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:722 03 19 02 09 00 00 00 00       $#  ANS000:7A2 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+(x3<<0); 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/79000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:722 04 14 FF FF FF 00 00 00       $$  ANS000:7A2 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:722 03 22 F1 84 00 00 00 00       $%  ANS000:7A2 03 22 F1 84 00 00 00 00
  $%  REQ001:722 03 22 F1 87 00 00 00 00       $%  ANS001:7A2 03 22 F1 87 00 00 00 00
  $%  REQ002:722 03 22 F1 8A 00 00 00 00       $%  ANS002:7A2 03 22 F1 8A 00 00 00 00
  $%  REQ003:722 03 22 F1 93 00 00 00 00       $%  ANS003:7A2 03 22 F1 93 00 00 00 00
  $%  REQ004:722 03 22 F1 95 00 00 00 00       $%  ANS004:7A2 03 22 F1 95 00 00 00 00
  $%  REQ005:722 03 22 F1 90 00 00 00 00       $%  ANS005:7A2 03 22 F1 90 00 00 00 00
  $%  REQ006:722 03 22 F1 97 00 00 00 00       $%  ANS006:7A2 03 22 F1 97 00 00 00 00
  $%  REQ007:722 03 22 F1 8B 00 00 00 00       $%  ANS007:7A2 03 22 F1 8B 00 00 00 00
  $%  REQ008:722 03 22 0A F8 00 00 00 00       $%  ANS008:7A2 03 22 0A F8 00 00 00 00

  $%  000:1.应用软件指纹数据识别符：        $%    $%  ANS000.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  001:2.车辆制造商零件号：              $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:3.系统供应商识别符：              $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:4.ECU硬件版本：                   $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  004:5.系统供应商ECU软件版本号：       $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  005:6.VIN(车辆识别码)：               $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:7.系统名称或发动机类型：          $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  007:8.生产日期：                      $%    $%  ANS007.BYTE004  $%  y=SPRINTF([year-%d day-%dth],2000+x1,x2*0x100+x3);
  $%  008:9.剩余保养时间：                  $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%d days],x1*0x100+x2);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:722 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
