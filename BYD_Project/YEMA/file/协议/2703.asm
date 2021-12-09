
    车型ID：2703

    模拟：协议模拟-->2703

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A9

进入命令:

  $~  REQ000:729 02 10 01 00 00 00 00 00       $~  ANS000:7A9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:729 02 3E 00 00 00 00 00 00       $!  ANS000:7A9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:729 03 19 02 01 00 00 00 00       $#  ANS000:7A9 03 19 02 01 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/38000000


  $#  01.读历史故障码
  $#  REQ000:729 03 19 02 08 00 00 00 00       $#  ANS000:7A9 03 19 02 08 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/38000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:729 04 14 FF FF FF 00 00 00       $$  ANS000:7A9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:729 03 22 F1 87 00 00 00 00       $%  ANS000:7A9 03 22 F1 87 00 00 00 00
  $%  REQ001:729 03 22 F1 8A 00 00 00 00       $%  ANS001:7A9 03 22 F1 8A 00 00 00 00
  $%  REQ002:729 03 22 F1 8C 00 00 00 00       $%  ANS002:7A9 03 22 F1 8C 00 00 00 00
  $%  REQ003:729 03 22 F1 90 00 00 00 00       $%  ANS003:7A9 03 22 F1 90 00 00 00 00
  $%  REQ004:729 03 22 F1 93 00 00 00 00       $%  ANS004:7A9 03 22 F1 93 00 00 00 00
  $%  REQ005:729 03 22 F1 95 00 00 00 00       $%  ANS005:7A9 03 22 F1 95 00 00 00 00
  $%  REQ006:729 03 22 F1 97 00 00 00 00       $%  ANS006:7A9 03 22 F1 97 00 00 00 00
  $%  REQ007:729 03 22 F1 86 00 00 00 00       $%  ANS007:7A9 03 22 F1 86 00 00 00 00
  $%  REQ008:729 03 22 F1 8B 00 00 00 00       $%  ANS008:7A9 03 22 F1 8B 00 00 00 00

  $%  000:OEM(原厂设备制造商)编号:        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:供应商名称:                     $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:ECU流水编号:                    $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30);
  $%  003:车辆识别号(VIN):                $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:硬件版本号:                     $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  005:软件版本号:                     $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  006:ECU名称:                        $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:诊断活动会话:                   $%    $%  ANS007.BYTE004  $%  HEX(x1);
  $%  008:ECU制造日期:                    $%    $%  ANS008.BYTE004  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:729 03 22 DF 00 00 00 00 00       $  ANS000:7A9 03 22 DF 00 00 00 00 00
  $  REQ001:729 03 22 12 01 00 00 00 00       $  ANS001:7A9 03 22 12 01 00 00 00 00
  $  REQ002:729 03 22 12 02 00 00 00 00       $  ANS002:7A9 03 22 12 02 00 00 00 00
  $  REQ003:729 03 22 12 03 00 00 00 00       $  ANS003:7A9 03 22 12 03 00 00 00 00
  $  REQ004:729 03 22 12 04 00 00 00 00       $  ANS004:7A9 03 22 12 04 00 00 00 00
  $  REQ005:729 03 22 12 05 00 00 00 00       $  ANS005:7A9 03 22 12 05 00 00 00 00
  $  REQ006:729 03 22 12 06 00 00 00 00       $  ANS006:7A9 03 22 12 06 00 00 00 00
  $  REQ007:729 03 22 12 0B 00 00 00 00       $  ANS007:7A9 03 22 12 0B 00 00 00 00
  $  REQ008:729 03 22 12 0C 00 00 00 00       $  ANS008:7A9 03 22 12 0C 00 00 00 00

  $  000.ECU供电电压                            $    $  V     $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.TBOX(远程信息处理控制器)电话号码       $    $        $    $  ANS001.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  002.移动设备国际身份码                     $    $        $    $  ANS002.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  003.ICCID(集成电路卡识别码)                $    $        $    $  ANS003.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $  004.预设密钥                               $    $        $    $  ANS004.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  005.ESK写入                                $    $        $    $  ANS005.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6);
  $  006.ESK删除                                $    $        $    $  ANS006.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6);
  $  007.国家平台IP地址                         $    $        $    $  ANS007.BYTE004  $  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $  008.地方平台IP地址                         $    $        $    $  ANS008.BYTE004  $  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $  009.企业平台IP地址                         $    $        $    $  ANS008.BYTE004  $  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:729 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
