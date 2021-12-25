
    车型ID：0aa4

    模拟：协议模拟-->0aa4

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7C9

进入命令:

  $~  REQ000:7C1 02 10 01 00 00 00 00 00       $~  ANS000:7C9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7C1 02 3E 00 00 00 00 00 00       $!  ANS000:7C9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7C1 03 19 02 09 00 00 00 00       $#  ANS000:7C9 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/e4000000


  $#  01.读故障码库
  $#  REQ000:7C1 02 19 0A 00 00 00 00 00       $#  ANS000:7C9 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/e4000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7C1 04 14 FF FF FF 00 00 00       $$  ANS000:7C9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7C1 03 22 F1 12 00 00 00 00       $%  ANS000:7C9 03 22 F1 12 00 00 00 00
  $%  REQ001:7C1 03 22 F1 87 00 00 00 00       $%  ANS001:7C9 03 22 F1 87 00 00 00 00
  $%  REQ002:7C1 03 22 F1 8A 00 00 00 00       $%  ANS002:7C9 03 22 F1 8A 00 00 00 00
  $%  REQ003:7C1 03 22 F1 8C 00 00 00 00       $%  ANS003:7C9 03 22 F1 8C 00 00 00 00
  $%  REQ004:7C1 03 22 F1 90 00 00 00 00       $%  ANS004:7C9 03 22 F1 90 00 00 00 00
  $%  REQ005:7C1 03 22 F1 92 00 00 00 00       $%  ANS005:7C9 03 22 F1 92 00 00 00 00
  $%  REQ006:7C1 03 22 F1 93 00 00 00 00       $%  ANS006:7C9 03 22 F1 93 00 00 00 00
  $%  REQ007:7C1 03 22 F1 94 00 00 00 00       $%  ANS007:7C9 03 22 F1 94 00 00 00 00
  $%  REQ008:7C1 03 22 F1 95 00 00 00 00       $%  ANS008:7C9 03 22 F1 95 00 00 00 00
  $%  REQ009:7C1 03 22 F1 9D 00 00 00 00       $%  ANS009:7C9 03 22 F1 9D 00 00 00 00
  $%  REQ010:7C1 03 22 F1 8B 00 00 00 00       $%  ANS010:7C9 03 22 F1 8B 00 00 00 00
  $%  REQ011:7C1 03 22 60 09 00 00 00 00       $%  ANS011:7C9 03 22 60 09 00 00 00 00
  $%  REQ012:7C1 03 22 60 07 00 00 00 00       $%  ANS012:7C9 03 22 60 07 00 00 00 00
  $%  REQ013:7C1 03 22 60 17 00 00 00 00       $%  ANS013:7C9 03 22 60 17 00 00 00 00
  $%  REQ014:7C1 03 22 68 11 00 00 00 00       $%  ANS014:7C9 03 22 68 11 00 00 00 00

  $%  000:车辆名称:                              $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:供应商零部件号:                        $%    $%  ANS001.BYTE004  $%  0 ASCII
  $%  002:系统供应商识别码:                      $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:ECU(电子控制器)序列号:                 $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28);
  $%  004:车辆识别码:                            $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  005:ECU(电子控制器)硬件号:                 $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:ECU(电子控制器)硬件版本号:             $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:ECU(电子控制器)软件号:                 $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:             $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:               $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:ECU(电子控制器)生产日期:               $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:主机PDSN号:                            $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:SIM卡ICCID 码：                        $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $%  013:SIM卡IMSI码：                          $%    $%  ANS013.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  014:TBOX(远程信息处理控制器)手机号：       $%    $%  ANS014.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7C1 03 22 60 09 00 00 00 00       $  ANS000:7C9 03 22 60 09 00 00 00 00
  $  REQ001:7C1 03 22 67 00 00 00 00 00       $  ANS001:7C9 03 22 67 00 00 00 00 00
  $  REQ002:7C1 03 22 67 01 00 00 00 00       $  ANS002:7C9 03 22 67 01 00 00 00 00
  $  REQ003:7C1 03 22 67 02 00 00 00 00       $  ANS003:7C9 03 22 67 02 00 00 00 00
  $  REQ004:7C1 03 22 67 04 00 00 00 00       $  ANS004:7C9 03 22 67 04 00 00 00 00
  $  REQ005:7C1 03 22 67 05 00 00 00 00       $  ANS005:7C9 03 22 67 05 00 00 00 00
  $  REQ006:7C1 03 22 60 10 00 00 00 00       $  ANS006:7C9 03 22 60 10 00 00 00 00
  $  REQ007:7C1 03 22 60 11 00 00 00 00       $  ANS007:7C9 03 22 60 11 00 00 00 00
  $  REQ008:7C1 03 22 60 12 00 00 00 00       $  ANS008:7C9 03 22 60 12 00 00 00 00
  $  REQ009:7C1 03 22 60 07 00 00 00 00       $  ANS009:7C9 03 22 60 07 00 00 00 00
  $  REQ010:7C1 03 22 60 17 00 00 00 00       $  ANS010:7C9 03 22 60 17 00 00 00 00
  $  REQ011:7C1 03 22 68 03 00 00 00 00       $  ANS011:7C9 03 22 68 03 00 00 00 00
  $  REQ012:7C1 03 22 68 04 00 00 00 00       $  ANS012:7C9 03 22 68 04 00 00 00 00
  $  REQ013:7C1 03 22 68 05 00 00 00 00       $  ANS013:7C9 03 22 68 05 00 00 00 00
  $  REQ014:7C1 03 22 68 06 00 00 00 00       $  ANS014:7C9 03 22 68 06 00 00 00 00
  $  REQ015:7C1 03 22 68 11 00 00 00 00       $  ANS015:7C9 03 22 68 11 00 00 00 00
  $  REQ016:7C1 03 22 68 15 00 00 00 00       $  ANS016:7C9 03 22 68 15 00 00 00 00
  $  REQ017:7C1 03 22 68 16 00 00 00 00       $  ANS017:7C9 03 22 68 16 00 00 00 00
  $  REQ018:7C1 03 22 68 17 00 00 00 00       $  ANS018:7C9 03 22 68 17 00 00 00 00
  $  REQ019:7C1 03 22 68 18 00 00 00 00       $  ANS019:7C9 03 22 68 18 00 00 00 00
  $  REQ020:7C1 03 22 68 19 00 00 00 00       $  ANS020:7C9 03 22 68 19 00 00 00 00
  $  REQ021:7C1 03 22 68 1A 00 00 00 00       $  ANS021:7C9 03 22 68 1A 00 00 00 00
  $  REQ022:7C1 03 22 68 1B 00 00 00 00       $  ANS022:7C9 03 22 68 1B 00 00 00 00
  $  REQ023:7C1 03 22 60 14 00 00 00 00       $  ANS023:7C9 03 22 60 14 00 00 00 00
  $  REQ024:7C1 03 22 61 00 00 00 00 00       $  ANS024:7C9 03 22 61 00 00 00 00 00
  $  REQ025:7C1 03 22 61 06 00 00 00 00       $  ANS025:7C9 03 22 61 06 00 00 00 00

  $  000.主机XDSN号                                 $    $  /       $    $  ANS000.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  001.当前广播的模式                             $    $  /       $    $  ANS001.BYTE004  $  if(x==0x01) y=@0136;else if(x==0x02) y=@0137;else if(x==0x00) y=@0000;else y=@0009;
  $  002.当前广播的频率                             $    $  Mhz     $    $  ANS002.BYTE004  $  y=(((x1<<16)+(x2<<8)+(x3<<0))/1000.0);
  $  003.当前音量                                   $    $  /       $    $  ANS003.BYTE004  $  y=x;
  $  004.蓝牙MAC地址                                $    $  /       $    $  ANS004.BYTE004  $  y=SPRINTF([%02x:%02x:%02x:%02x:%02x:%02x],X1,X2,X3,X4,X5,X6);
  $  005.当前选择设备中的歌曲数目                   $    $  /       $    $  ANS005.BYTE004  $  y=x1*256+x2;
  $  006.车辆电池电压                               $    $  V       $    $  ANS006.BYTE004  $  y=x*0.1;
  $  007.总里程数                                   $    $  km      $    $  ANS007.BYTE004  $  y=x1*0X10000+x2*0X100+X3;
  $  008.点火状态                                   $    $  /       $    $  ANS008.BYTE004  $  if(x==0x01) y=@015c;else if(x==0x02) y=@015d;else if(x==0x00) y=@0000;else if(x==0x03) y=@015e;else if(x==0x04) y=@015f;else if(x==0x05) y=@015e;else y=@0009;
  $  009.集成电路卡识别码                           $    $  /       $    $  ANS009.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $  010.国际移动用户识别码                         $    $  /       $    $  ANS010.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  011.移动设备国际身份证码                       $    $  /       $    $  ANS011.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  012.E-CALL(紧急呼叫系统)默认呼叫中心号码       $    $  /       $    $  ANS012.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $  013.B-Call(故障救援服务)默认呼叫中心号码       $    $  /       $    $  ANS013.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $  014.I-Call(信息服务)默认呼叫中心号码           $    $  /       $    $  ANS014.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $  015.T-BOX(远程信息处理控制器)电话号码          $    $  /       $    $  ANS015.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  016.公网APN专线登陆地址                        $    $  /       $    $  ANS016.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64);
  $  017.公网APN专线登陆账户名                      $    $  /       $    $  ANS017.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  018.公网APN专线登陆账户密码                    $    $  /       $    $  ANS018.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  019.私网APN专线登陆地址                        $    $  /       $    $  ANS019.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64);
  $  020.私网APN专线登陆账户名                      $    $  /       $    $  ANS020.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  021.私网APN专线登陆账户密码                    $    $  /       $    $  ANS021.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  022.TSP访问地址                                $    $  /       $    $  ANS022.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64);
  $  023.SC秘钥状态                                 $    $  /       $    $  ANS023.BYTE004  $  if(x==0x00) y=@0717; else if(x==0x01) y=@0718; else y=@0220;
  $  024.远程控制禁止状态                           $    $  /       $    $  ANS024.BYTE004  $  if(x==0x00) y=@09ca; else if(x==0xff) y=@09cb; else y=@0220;
  $  025.SK码学习状态                               $    $  /       $    $  ANS025.BYTE004  $  if(x==0x00) y=@0715; else if(x==0x01) y=@0716; else y=@0220;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7C1 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7C1 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
