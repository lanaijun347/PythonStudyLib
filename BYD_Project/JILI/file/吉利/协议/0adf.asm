
    车型ID：0adf

    模拟：协议模拟-->0adf

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A8

进入命令:

  $~  REQ000:7A0 02 10 01 00 00 00 00 00       $~  ANS000:7A8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A0 02 3E 00 00 00 00 00 00       $!  ANS000:7A8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7A0 03 19 02 09 00 00 00 00       $#  ANS000:7A8 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b4000000


  $#  01.读故障码库
  $#  REQ000:7A0 02 19 0A 00 00 00 00 00       $#  ANS000:7A8 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b4000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A0 04 14 FF FF FF 00 00 00       $$  ANS000:7A8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A0 03 22 F1 12 00 00 00 00       $%  ANS000:7A8 03 22 F1 12 00 00 00 00
  $%  REQ001:7A0 03 22 F1 80 00 00 00 00       $%  ANS001:7A8 03 22 F1 80 00 00 00 00
  $%  REQ002:7A0 03 22 F1 87 00 00 00 00       $%  ANS002:7A8 03 22 F1 87 00 00 00 00
  $%  REQ003:7A0 03 22 F1 8A 00 00 00 00       $%  ANS003:7A8 03 22 F1 8A 00 00 00 00
  $%  REQ004:7A0 03 22 F1 8B 00 00 00 00       $%  ANS004:7A8 03 22 F1 8B 00 00 00 00
  $%  REQ005:7A0 03 22 F1 8C 00 00 00 00       $%  ANS005:7A8 03 22 F1 8C 00 00 00 00
  $%  REQ006:7A0 03 22 F1 90 00 00 00 00       $%  ANS006:7A8 03 22 F1 90 00 00 00 00
  $%  REQ007:7A0 03 22 F1 93 00 00 00 00       $%  ANS007:7A8 03 22 F1 93 00 00 00 00
  $%  REQ008:7A0 03 22 F1 95 00 00 00 00       $%  ANS008:7A8 03 22 F1 95 00 00 00 00
  $%  REQ009:7A0 03 22 F1 98 00 00 00 00       $%  ANS009:7A8 03 22 F1 98 00 00 00 00
  $%  REQ010:7A0 03 22 F1 99 00 00 00 00       $%  ANS010:7A8 03 22 F1 99 00 00 00 00
  $%  REQ011:7A0 03 22 F1 9D 00 00 00 00       $%  ANS011:7A8 03 22 F1 9D 00 00 00 00
  $%  REQ012:7A0 03 22 F1 82 00 00 00 00       $%  ANS012:7A8 03 22 F1 82 00 00 00 00

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

  $)  00.数据流
  $  00.数据流
  $  REQ000:7A0 03 22 DF 00 00 00 00 00       $  ANS000:7A8 03 22 DF 00 00 00 00 00
  $  REQ001:7A0 03 22 68 01 00 00 00 00       $  ANS001:7A8 03 22 68 01 00 00 00 00
  $  REQ002:7A0 03 22 68 03 00 00 00 00       $  ANS002:7A8 03 22 68 03 00 00 00 00
  $  REQ003:7A0 03 22 68 04 00 00 00 00       $  ANS003:7A8 03 22 68 04 00 00 00 00
  $  REQ004:7A0 03 22 68 05 00 00 00 00       $  ANS004:7A8 03 22 68 05 00 00 00 00
  $  REQ005:7A0 03 22 68 06 00 00 00 00       $  ANS005:7A8 03 22 68 06 00 00 00 00
  $  REQ006:7A0 03 22 68 09 00 00 00 00       $  ANS006:7A8 03 22 68 09 00 00 00 00
  $  REQ007:7A0 03 22 68 0A 00 00 00 00       $  ANS007:7A8 03 22 68 0A 00 00 00 00
  $  REQ008:7A0 03 22 68 0B 00 00 00 00       $  ANS008:7A8 03 22 68 0B 00 00 00 00
  $  REQ009:7A0 03 22 68 0C 00 00 00 00       $  ANS009:7A8 03 22 68 0C 00 00 00 00
  $  REQ010:7A0 03 22 68 0D 00 00 00 00       $  ANS010:7A8 03 22 68 0D 00 00 00 00
  $  REQ011:7A0 03 22 68 0E 00 00 00 00       $  ANS011:7A8 03 22 68 0E 00 00 00 00
  $  REQ012:7A0 03 22 68 11 00 00 00 00       $  ANS012:7A8 03 22 68 11 00 00 00 00
  $  REQ013:7A0 03 22 68 14 00 00 00 00       $  ANS013:7A8 03 22 68 14 00 00 00 00
  $  REQ014:7A0 03 22 68 1B 00 00 00 00       $  ANS014:7A8 03 22 68 1B 00 00 00 00
  $  REQ015:7A0 03 22 68 1F 00 00 00 00       $  ANS015:7A8 03 22 68 1F 00 00 00 00
  $  REQ016:7A0 03 22 68 1C 00 00 00 00       $  ANS016:7A8 03 22 68 1C 00 00 00 00
  $  REQ017:7A0 03 22 68 21 00 00 00 00       $  ANS017:7A8 03 22 68 21 00 00 00 00
  $  REQ018:7A0 03 22 68 22 00 00 00 00       $  ANS018:7A8 03 22 68 22 00 00 00 00
  $  REQ019:7A0 03 22 68 2A 00 00 00 00       $  ANS019:7A8 03 22 68 2A 00 00 00 00
  $  REQ020:7A0 03 22 68 2E 00 00 00 00       $  ANS020:7A8 03 22 68 2E 00 00 00 00
  $  REQ021:7A0 03 22 68 2D 00 00 00 00       $  ANS021:7A8 03 22 68 2D 00 00 00 00

  $  000.ECU(电子控制器)供电电压                                                     $    $  V       $    $  ANS000.BYTE004  $  y=x1*0.1;
  $  001.国际移动用户识别码                                                          $    $  /       $    $  ANS001.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  002.移动设备国际身份证码                                                        $    $  /       $    $  ANS002.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  003.E-CALL(紧急呼叫系统)默认呼叫中心号码                                        $    $  /       $    $  ANS003.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $  004.B-Call(故障救援服务)默认呼叫中心号码                                        $    $  /       $    $  ANS004.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $  005.I-Call(信息服务)默认呼叫中心号码                                            $    $  /       $    $  ANS005.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $  006.网络注册状态                                                                $    $  /       $    $  ANS006.BYTE004  $  switxh(x)0x00:y=@052d;0x01:y=@052e;0x02:y=@052f;0x03:y=@0530;0x04:y=@0531;default:y=@0162;
  $  007.内部电池状态                                                                $    $  /       $    $  ANS007.BYTE004  $  switxh(x)0x00:y=@101e;0x01:y=@0532;0x02:y=@0533;0x03:y=@0534;default:y=@0162;
  $  008.网络运营商国别代码                                                          $    $  /       $    $  ANS008.BYTE004  $  HEX(x1,x2,x3);
  $  009.网络信号强度                                                                $    $  /       $    $  ANS009.BYTE004  $  if(0xFF==x)y=@0132;else y=x;
  $  010.网络通信制式                                                                $    $  /       $    $  ANS010.BYTE004  $  switxh(x)0x00:y=@0526;0x01:y=@0f1c;0x02:y=@0528;0x03:y=@0529;0x04:y=@052a;0x05:y=@052b;0x06:y=@052c;default:y=@0162;
  $  011.系统时间                                                                    $    $  /       $    $  ANS011.BYTE004  $  y=SPRINTF([%02x%02x-%02x-%02x %02x:%02x:%02x],X1,X2,x3,x4,x5,x6,x7);
  $  012.T-BOX(远程信息处理控制器)电话号码                                           $    $  /       $    $  ANS012.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  013.Led背光灯状态                                                               $    $  /       $    $  ANS013.BYTE004  $  if(0x00==x)y=@0cdd;else if(0x01==x)y=@0cde;else y=@0162;
  $  014.IP地址类型                                                                  $    $  /       $    $  ANS014.BYTE004  $  switxh(x) 0x00:y=@0539;0x01:y=@053a;default:y=@0009;
  $  015.IP地址                                                                      $    $  /       $    $  ANS014.BYTE004  $  switxh(((x1>>0)&1))0x00:y=SPRINTF([%d.%d.%d.%d],X2,x3,x4,x5);0x01:y=SPRINTF([%x%x:%x%x:%x%x:%x%x:%x%x:%x%x:%x%x:%x%x],x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $  016.访问端口                                                                    $    $  /       $    $  ANS014.BYTE021  $  y=x1*256+x2;
  $  017.开始读取故障信息延时时间(车辆电源IG-ON持续XX秒数后开始故障读取的时间)       $    $  s       $    $  ANS015.BYTE004  $  y=x;
  $  018.Wifi密码设置                                                                $    $  /       $    $  ANS016.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $  019.等待网络唤醒时间(远程控制前需要唤醒整车网络等待超时的时间)                  $    $  ms      $    $  ANS017.BYTE004  $  y=x*10;
  $  020.远程控制超时时间                                                            $    $  s       $    $  ANS018.BYTE004  $  y=x;
  $  021.驾驶行为信息定时上传间隔时间                                                $    $  min     $    $  ANS019.BYTE004  $  y=x;
  $  022.睡眠时间标定                                                                $    $  s       $    $  ANS020.BYTE004  $  y=x1*256+x2;
  $  023.ESK写入状态                                                                 $    $  /       $    $  ANS021.BYTE004  $  switxh(x)0x00:y=@0536;0x01:y=@0f0e;default:y=@0162;

  $)  01.GNSS定位参数
  $  01.GNSS定位参数
  $  REQ000:7A0 03 22 68 13 00 00 00 00       $  ANS000:7A8 03 22 68 13 00 00 00 00

  $  000.GNSS定位参数1       $    $  /        $    $  ANS000.BYTE004  $  y=SPRINTF([%02x%02x-%02x-%02x %02x:%02x:%02x],X1,X2,x3,x4,x5,x6,x7);
  $  001.GNSS定位参数2       $    $  HDOP     $    $  ANS000.BYTE011  $  y=x*0.1;
  $  002.GNSS定位参数3       $    $  km/h     $    $  ANS000.BYTE012  $  y=x;
  $  003.GNSS定位参数4       $    $  deg      $    $  ANS000.BYTE013  $  y=x*2;
  $  004.GNSS定位参数5       $    $  /        $    $  ANS000.BYTE014  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
