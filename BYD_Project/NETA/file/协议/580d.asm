
    车型ID：580d

    模拟：协议模拟-->580d

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~775

进入命令:

  $~  REQ000:765 02 10 03 FF FF FF FF FF       $~  ANS000:775 02 10 03 FF FF FF FF FF

空闲命令:

  $!  REQ000:765 02 3E 00 FF FF FF FF FF       $!  ANS000:775 02 3E 00 FF FF FF FF FF

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:765 03 19 02 09 FF FF FF FF       $#  ANS000:775 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<8)+x2;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/58090000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:765 04 14 FF FF FF FF FF FF       $$  ANS000:775 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:765 03 22 F1 91 FF FF FF FF       $%  ANS000:775 03 22 F1 91 FF FF FF FF
  $%  REQ001:765 03 22 F1 88 FF FF FF FF       $%  ANS001:775 03 22 F1 88 FF FF FF FF
  $%  REQ002:765 03 22 F1 80 FF FF FF FF       $%  ANS002:775 03 22 F1 80 FF FF FF FF
  $%  REQ003:765 03 22 F1 8B FF FF FF FF       $%  ANS003:775 03 22 F1 8B FF FF FF FF
  $%  REQ004:765 03 22 F1 8C FF FF FF FF       $%  ANS004:775 03 22 F1 8C FF FF FF FF
  $%  REQ005:765 03 22 F1 9D FF FF FF FF       $%  ANS005:775 03 22 F1 9D FF FF FF FF
  $%  REQ006:765 03 22 F1 8A FF FF FF FF       $%  ANS006:775 03 22 F1 8A FF FF FF FF
  $%  REQ007:765 03 22 F1 87 FF FF FF FF       $%  ANS007:775 03 22 F1 87 FF FF FF FF
  $%  REQ008:765 03 22 F1 99 FF FF FF FF       $%  ANS008:775 03 22 F1 99 FF FF FF FF
  $%  REQ009:765 03 22 F1 98 FF FF FF FF       $%  ANS009:775 03 22 F1 98 FF FF FF FF

  $%  000:硬件版本号:                   $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  001:软件版本号:                   $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:Bootloader 软件 ID:           $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  003:ECU生产日期:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  004:控制器序列号:                 $%    $%  ANS004.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:ECU装配日期:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  006:系统供应商代码:               $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  007:整车零部件号:                 $%    $%  ANS007.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11);
  $%  008:刷新日期:                     $%    $%  ANS008.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  009:维修代码/测试仪序列号:        $%    $%  ANS009.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

;  $  REQ000:765       $  ANS000:775

;  $  000.AVM控制状态           $    $       $    $  ANS000.BYTE000  $  switxh(x&0x01) 0x01:y=@0268;default: y=@0007;
;  $  001.AVM工作状态           $    $       $    $  ANS000.BYTE000  $  switxh(x&0x1c) 0x00:y=@0200;0x04:y=@0255;0x08:y=@0256;0x0c:y=@0257;0x10:y=@0258;0x14:y=@0259;0x18:y=@0260;0x1c:y=@0007;default: y=@0007;
;  $  002.AVM虚拟按键显示       $    $       $    $  ANS000.BYTE000  $  switxh(x&0x20) 0x20:y=@0261;default: y=@0262;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:765 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
