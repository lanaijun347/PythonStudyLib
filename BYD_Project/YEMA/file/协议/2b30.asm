
    车型ID：2b30

    模拟：协议模拟-->2b30

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A9

进入命令:

  $~  REQ000:729 02 10 01 00 00 00 00 00       $~  ANS000:7A9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:729 02 3E 00 00 00 00 00 00       $!  ANS000:7A9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:729 03 19 02 09 00 00 00 00       $#  ANS000:7A9 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/02000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:729 04 14 FF FF FF 00 00 00       $$  ANS000:7A9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:729 03 22 F1 86 00 00 00 00       $%  ANS000:7A9 03 22 F1 86 00 00 00 00
  $%  REQ001:729 03 22 F1 87 00 00 00 00       $%  ANS001:7A9 03 22 F1 87 00 00 00 00
  $%  REQ002:729 03 22 F1 90 00 00 00 00       $%  ANS002:7A9 03 22 F1 90 00 00 00 00
  $%  REQ003:729 03 22 F1 93 00 00 00 00       $%  ANS003:7A9 03 22 F1 93 00 00 00 00
  $%  REQ004:729 03 22 F1 95 00 00 00 00       $%  ANS004:7A9 03 22 F1 95 00 00 00 00
  $%  REQ005:729 03 22 F1 12 00 00 00 00       $%  ANS005:7A9 03 22 F1 12 00 00 00 00
  $%  REQ006:729 03 22 F1 80 00 00 00 00       $%  ANS006:7A9 03 22 F1 80 00 00 00 00
  $%  REQ007:729 03 22 F1 8A 00 00 00 00       $%  ANS007:7A9 03 22 F1 8A 00 00 00 00
  $%  REQ008:729 03 22 F1 8B 00 00 00 00       $%  ANS008:7A9 03 22 F1 8B 00 00 00 00
  $%  REQ009:729 03 22 F1 8C 00 00 00 00       $%  ANS009:7A9 03 22 F1 8C 00 00 00 00
  $%  REQ010:729 03 22 F1 97 00 00 00 00       $%  ANS010:7A9 03 22 F1 97 00 00 00 00

  $%  000:诊断活动会话:               $%    $%  ANS000.BYTE004  $%  HEX(x);
  $%  001:零件编号:                   $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:车辆VIN码:                  $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  003:供应商ECU硬件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  004:供应商ECU软件版本号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  005:车辆型号:                   $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  006:引导程序软件识别号:         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:供应商识别号:               $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:ECU制造日期:                $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  009:ECU序列号:                  $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30);
  $%  010:零件名称:                   $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:729 03 22 12 01 00 00 00 00       $  ANS000:7A9 03 22 12 01 00 00 00 00
  $  REQ001:729 03 22 12 02 00 00 00 00       $  ANS001:7A9 03 22 12 02 00 00 00 00
  $  REQ002:729 03 22 12 03 00 00 00 00       $  ANS002:7A9 03 22 12 03 00 00 00 00
  $  REQ003:729 03 22 12 04 00 00 00 00       $  ANS003:7A9 03 22 12 04 00 00 00 00
  $  REQ004:729 03 22 12 05 00 00 00 00       $  ANS004:7A9 03 22 12 05 00 00 00 00
  $  REQ005:729 03 22 12 06 00 00 00 00       $  ANS005:7A9 03 22 12 06 00 00 00 00
  $  REQ006:729 03 22 12 7C 00 00 00 00       $  ANS006:7A9 03 22 12 7C 00 00 00 00
  $  REQ007:729 03 22 12 7D 00 00 00 00       $  ANS007:7A9 03 22 12 7D 00 00 00 00
  $  REQ008:729 03 22 12 7E 00 00 00 00       $  ANS008:7A9 03 22 12 7E 00 00 00 00
  $  REQ009:729 03 22 12 7F 00 00 00 00       $  ANS009:7A9 03 22 12 7F 00 00 00 00
  $  REQ010:729 03 22 12 80 00 00 00 00       $  ANS010:7A9 03 22 12 80 00 00 00 00
  $  REQ011:729 03 22 12 81 00 00 00 00       $  ANS011:7A9 03 22 12 81 00 00 00 00
  $  REQ012:729 03 22 DF 00 00 00 00 00       $  ANS012:7A9 03 22 DF 00 00 00 00 00

  $  000.T-Box(远程信息处理控制器)电话号码                                         $    $        $    $  ANS000.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  001.移动设备国际身份证码                                                      $    $        $    $  ANS001.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  002.集成电路卡识别码(ICCID)                                                   $    $        $    $  ANS002.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $  003.预设密钥                                                                  $    $        $    $  ANS003.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  004.ESK(无钥匙进入一键式启动单元和电子转向柱锁控制单元通信密钥)写入           $    $        $    $  ANS004.BYTE004  $  HEX(x1,x2,x3,x4,x5,x6);
  $  005.ESK(无钥匙进入一键式启动单元和电子转向柱锁控制单元通信密钥)删除           $    $        $    $  ANS005.BYTE004  $  HEX(x1,x2,x3,x4,x5,x6);
  $  006.网络注册状态                                                              $    $        $    $  ANS006.BYTE004  $  HEX(x);
  $  007.内部电池状态                                                              $    $        $    $  ANS007.BYTE004  $  HEX(x);
  $  008.网络信号强度                                                              $    $        $    $  ANS008.BYTE004  $  HEX(x);
  $  009.ESK(无钥匙进入一键式启动单元和电子转向柱锁控制单元通信密钥)写入状态       $    $        $    $  ANS009.BYTE004  $  HEX(x);
  $  010.GPS(全球定位系统)定位                                                     $    $        $    $  ANS010.BYTE004  $  HEX(x);
  $  011.注册登录状态                                                              $    $        $    $  ANS011.BYTE004  $  HEX(x);
  $  012.ECU(电子控制器)供电电压                                                   $    $  V     $    $  ANS012.BYTE004  $  y=x*0.1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:729 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
