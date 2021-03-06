
    车型ID：581e

    模拟：协议模拟-->581e

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~770

进入命令:

  $~  REQ000:760 02 10 03 FF FF FF FF FF       $~  ANS000:770 02 10 03 FF FF FF FF FF
  $~  REQ001:760 02 27 03 FF FF FF FF FF       $~  ANS001:770 02 27 03 FF FF FF FF FF
  $~  REQ002:760 04 27 04 1E B0 FF FF FF       $~  ANS002:770 04 27 04 1E B0 FF FF FF

空闲命令:

  $!  REQ000:760 02 3E 00 FF FF FF FF FF       $!  ANS000:770 02 3E 00 FF FF FF FF FF

退出命令:

  $@  REQ000:760 02 10 01 FF FF FF FF FF       $@  ANS000:770 02 10 01 FF FF FF FF FF


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:760 03 19 02 09 FF FF FF FF       $#  ANS000:770 03 19 02 09 FF FF FF FF

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/61000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:760 04 14 FF FF FF FF FF FF       $$  ANS000:770 04 14 FF FF FF FF FF FF

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:760 03 22 F1 91 FF FF FF FF       $%  ANS000:770 03 22 F1 91 FF FF FF FF
  $%  REQ001:760 03 22 F1 88 FF FF FF FF       $%  ANS001:770 03 22 F1 88 FF FF FF FF
  $%  REQ002:760 03 22 F1 8A FF FF FF FF       $%  ANS002:770 03 22 F1 8A FF FF FF FF
  $%  REQ003:760 03 22 F1 87 FF FF FF FF       $%  ANS003:770 03 22 F1 87 FF FF FF FF
  $%  REQ004:760 03 22 F1 8B FF FF FF FF       $%  ANS004:770 03 22 F1 8B FF FF FF FF
  $%  REQ005:760 03 22 F1 9D FF FF FF FF       $%  ANS005:770 03 22 F1 9D FF FF FF FF
  $%  REQ006:760 03 22 F1 8C FF FF FF FF       $%  ANS006:770 03 22 F1 8C FF FF FF FF
  $%  REQ007:760 03 22 C5 13 FF FF FF FF       $%  ANS007:770 03 22 C5 13 FF FF FF FF

  $%  000:硬件版本号:            $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  001:软件版本号:            $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:硬件版本号:            $%    $%  ANS000.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5);
  $%  003:软件版本号:            $%    $%  ANS001.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:系统供应商代码:        $%    $%  ANS002.BYTE004  $%  y=ASCII(x1,x2,x3);
  $%  005:整车零部件号:          $%    $%  ANS003.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  006:获取生产日期:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  007:ECU装配日期:           $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02x%02x/%02x/%02x],x1,x2,x3,x4);
  $%  008:ECU序列号:             $%    $%  ANS006.BYTE004  $%  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  009:读取配置码:            $%    $%  ANS007.BYTE004  $%  y=HEX(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

;  $  REQ000:760       $  ANS000:770

;  $  000.制动开关状态/常闭       $    $       $    $  ANS000.BYTE004  $  switxh(x&0x40) 0x40:y=@0338;default: y=@0154;
;  $  001.制动开关状态/常开       $    $       $    $  ANS000.BYTE004  $  switxh(x&0x80) 0x80:y=@0338;default: y=@0154;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:760 30 00 01 FF FF FF FF FF  $FC 

;******************************************************************************************************************************************************
