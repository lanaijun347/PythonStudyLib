
    车型ID：08b2

    模拟：协议模拟-->08b2

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
  $%  REQ001:7A0 03 22 F1 87 00 00 00 00       $%  ANS001:7A8 03 22 F1 87 00 00 00 00
  $%  REQ002:7A0 03 22 F1 89 00 00 00 00       $%  ANS002:7A8 03 22 F1 89 00 00 00 00
  $%  REQ003:7A0 03 22 F1 8A 00 00 00 00       $%  ANS003:7A8 03 22 F1 8A 00 00 00 00
  $%  REQ004:7A0 03 22 F1 8B 00 00 00 00       $%  ANS004:7A8 03 22 F1 8B 00 00 00 00
  $%  REQ005:7A0 03 22 F1 8C 00 00 00 00       $%  ANS005:7A8 03 22 F1 8C 00 00 00 00
  $%  REQ006:7A0 03 22 F1 90 00 00 00 00       $%  ANS006:7A8 03 22 F1 90 00 00 00 00
  $%  REQ007:7A0 03 22 F1 93 00 00 00 00       $%  ANS007:7A8 03 22 F1 93 00 00 00 00
  $%  REQ008:7A0 03 22 F1 95 00 00 00 00       $%  ANS008:7A8 03 22 F1 95 00 00 00 00
  $%  REQ009:7A0 03 22 F1 97 00 00 00 00       $%  ANS009:7A8 03 22 F1 97 00 00 00 00
  $%  REQ010:7A0 03 22 F1 98 00 00 00 00       $%  ANS010:7A8 03 22 F1 98 00 00 00 00
  $%  REQ011:7A0 03 22 F1 99 00 00 00 00       $%  ANS011:7A8 03 22 F1 99 00 00 00 00
  $%  REQ012:7A0 03 22 F1 9D 00 00 00 00       $%  ANS012:7A8 03 22 F1 9D 00 00 00 00
  $%  REQ013:7A0 03 22 F1 82 00 00 00 00       $%  ANS013:7A8 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)系统名称或发动机类型:         $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  010:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:ECU(电子控制器)刷写日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:ECU(电子控制器)安装日期:                     $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  013:标定软件版本号:                              $%    $%  ANS013.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流
  $  00.数据流
  $  REQ000:7A0 03 22 68 00 00 00 00 00       $  ANS000:7A8 03 22 68 00 00 00 00 00
  $  REQ001:7A0 03 22 68 01 00 00 00 00       $  ANS001:7A8 03 22 68 01 00 00 00 00
  $  REQ002:7A0 03 22 68 03 00 00 00 00       $  ANS002:7A8 03 22 68 03 00 00 00 00
  $  REQ003:7A0 03 22 68 04 00 00 00 00       $  ANS003:7A8 03 22 68 04 00 00 00 00
  $  REQ004:7A0 03 22 68 05 00 00 00 00       $  ANS004:7A8 03 22 68 05 00 00 00 00
  $  REQ005:7A0 03 22 68 09 00 00 00 00       $  ANS005:7A8 03 22 68 09 00 00 00 00
  $  REQ006:7A0 03 22 68 0A 00 00 00 00       $  ANS006:7A8 03 22 68 0A 00 00 00 00
  $  REQ007:7A0 03 22 68 0B 00 00 00 00       $  ANS007:7A8 03 22 68 0B 00 00 00 00
  $  REQ008:7A0 03 22 68 0C 00 00 00 00       $  ANS008:7A8 03 22 68 0C 00 00 00 00
  $  REQ009:7A0 03 22 68 0D 00 00 00 00       $  ANS009:7A8 03 22 68 0D 00 00 00 00
  $  REQ010:7A0 03 22 68 0E 00 00 00 00       $  ANS010:7A8 03 22 68 0E 00 00 00 00
  $  REQ011:7A0 03 22 68 0F 00 00 00 00       $  ANS011:7A8 03 22 68 0F 00 00 00 00
  $  REQ012:7A0 03 22 68 11 00 00 00 00       $  ANS012:7A8 03 22 68 11 00 00 00 00
  $  REQ013:7A0 03 22 68 12 00 00 00 00       $  ANS013:7A8 03 22 68 12 00 00 00 00
  $  REQ014:7A0 03 22 68 14 00 00 00 00       $  ANS014:7A8 03 22 68 14 00 00 00 00
  $  REQ015:7A0 03 22 68 15 00 00 00 00       $  ANS015:7A8 03 22 68 15 00 00 00 00
  $  REQ016:7A0 03 22 68 16 00 00 00 00       $  ANS016:7A8 03 22 68 16 00 00 00 00
  $  REQ017:7A0 03 22 68 17 00 00 00 00       $  ANS017:7A8 03 22 68 17 00 00 00 00
  $  REQ018:7A0 03 22 68 18 00 00 00 00       $  ANS018:7A8 03 22 68 18 00 00 00 00
  $  REQ019:7A0 03 22 68 19 00 00 00 00       $  ANS019:7A8 03 22 68 19 00 00 00 00
  $  REQ020:7A0 03 22 68 1A 00 00 00 00       $  ANS020:7A8 03 22 68 1A 00 00 00 00
  $  REQ021:7A0 03 22 68 1B 00 00 00 00       $  ANS021:7A8 03 22 68 1B 00 00 00 00
  $  REQ022:7A0 03 22 68 1F 00 00 00 00       $  ANS022:7A8 03 22 68 1F 00 00 00 00
  $  REQ023:7A0 03 22 68 20 00 00 00 00       $  ANS023:7A8 03 22 68 20 00 00 00 00
  $  REQ024:7A0 03 22 68 22 00 00 00 00       $  ANS024:7A8 03 22 68 22 00 00 00 00
  $  REQ025:7A0 03 22 68 2D 00 00 00 00       $  ANS025:7A8 03 22 68 2D 00 00 00 00
  $  REQ026:7A0 03 22 68 2E 00 00 00 00       $  ANS026:7A8 03 22 68 2E 00 00 00 00
  $  REQ027:7A0 03 22 68 31 00 00 00 00       $  ANS027:7A8 03 22 68 31 00 00 00 00
  $  REQ028:7A0 03 22 68 23 00 00 00 00       $  ANS028:7A8 03 22 68 23 00 00 00 00
  $  REQ029:7A0 03 22 68 24 00 00 00 00       $  ANS029:7A8 03 22 68 24 00 00 00 00
  $  REQ030:7A0 03 22 68 25 00 00 00 00       $  ANS030:7A8 03 22 68 25 00 00 00 00
  $  REQ031:7A0 03 22 68 29 00 00 00 00       $  ANS031:7A8 03 22 68 29 00 00 00 00

  $  000.集成电路卡识别码                                                            $    $  /         $    $  ANS000.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $  001.国际移动用户识别码                                                          $    $  /         $    $  ANS001.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  002.移动设备国际身份证码                                                        $    $  /         $    $  ANS002.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  003.E-CALL(紧急呼叫系统)默认呼叫中心号码                                        $    $  /         $    $  ANS003.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $  004.B-Call(故障救援服务)默认呼叫中心号码                                        $    $  /         $    $  ANS004.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18);
  $  005.网络注册状态                                                                $    $  /         $    $  ANS005.BYTE004  $  switxh(x)0x00:y=@052d;0x01:y=@052e;0x02:y=@052f;0x03:y=@0530;0x04:y=@0531;default:y=@0162;
  $  006.内部电池状态                                                                $    $  /         $    $  ANS006.BYTE004  $  switxh(x)0x00:y=@0532;0x01:y=@0533;0x02:y=@0534;default:y=@0162;
  $  007.网络运营商国别代码                                                          $    $  /         $    $  ANS007.BYTE004  $  HEX(x1,x2,x3);
  $  008.网络信号强度                                                                $    $  /         $    $  ANS008.BYTE004  $  if(0xFF==x)y=@0132;else y=x;
  $  009.网络通信制式                                                                $    $  /         $    $  ANS009.BYTE004  $  switxh(x)0x00:y=@0526;0x01:y=@0f1c;0x02:y=@0528;0x03:y=@0529;0x04:y=@052a;0x05:y=@052b;0x06:y=@052c;default:y=@0162;
  $  010.系统时间                                                                    $    $  /         $    $  ANS010.BYTE004  $  y=SPRINTF([%02x%02x-%02x-%02x %02x:%02x:%02x],X1,X2,x3,x4,x5,x6,x7);
  $  011.天线状态                                                                    $    $  /         $    $  ANS011.BYTE004  $  strcat:if((x&0xFC)==0x04) y=@0b64; if((x&0xFC)==0x00) y=@0b63; if((x&0x03)==0x01) y=@01c4; if((x&0x03)==0x00) y=@01c3;
  $  012.T-BOX(远程信息处理控制器)电话号码                                           $    $  /         $    $  ANS012.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  013.GNSS定位位置信息 最后定位位置-经度                                          $    $  deg/m     $    $  ANS013.BYTE004  $  y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*0.000001- 180;
  $  014.GNSS定位位置信息 最后定位位置-纬度                                          $    $  deg/m     $    $  ANS013.BYTE008  $  y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*0.000001- 90;
  $  015.Led背光灯状态                                                               $    $  /         $    $  ANS014.BYTE004  $  if(0x00==x)y=@0cdd;else if(0x01==x)y=@0cde;else y=@0162;
  $  016.公网APN专线登陆地址                                                         $    $  /         $    $  ANS015.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64);
  $  017.公网APN专线登陆账户名                                                       $    $  /         $    $  ANS016.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  018.公网APN专线登陆账户密码                                                     $    $  /         $    $  ANS017.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  019.私网APN专线登陆地址                                                         $    $  /         $    $  ANS018.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64);
  $  020.私网APN专线登陆账户名                                                       $    $  /         $    $  ANS019.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  021.私网APN专线登陆账户密码                                                     $    $  /         $    $  ANS020.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32);
  $  022.IP地址类型                                                                  $    $  /         $    $  ANS021.BYTE004  $  switxh(x) 0x00:y=@0539;0x01:y=@053a;default:y=@0009;
  $  023.IP地址                                                                      $    $  /         $    $  ANS021.BYTE004  $  switxh(((x1>>0)&1))0x00:y=SPRINTF([%d.%d.%d.%d],X2,x3,x4,x5);0x01:y=SPRINTF([%x%x:%x%x:%x%x:%x%x:%x%x:%x%x:%x%x:%x%x],x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $  024.访问端口                                                                    $    $  /         $    $  ANS021.BYTE021  $  y=x1*256+x2;
  $  025.开始读取故障信息延时时间(车辆电源IG-ON持续XX秒数后开始故障读取的时间)       $    $  s         $    $  ANS022.BYTE004  $  y=x;
  $  026.故障信息定时上传间隔时间(前一次上传XX分钟数后再次开始故障读取的时间)        $    $  min       $    $  ANS023.BYTE004  $  y=x;
  $  027.远程控制超时时间                                                            $    $  s         $    $  ANS024.BYTE004  $  y=x;
  $  028.ESK写入状态                                                                 $    $  /         $    $  ANS025.BYTE004  $  switxh(x)0x00:y=@0536;0x01:y=@0f0e;default:y=@0162;
  $  029.睡眠时间标定                                                                $    $  s         $    $  ANS026.BYTE004  $  y=x1*256+x2;
  $  030.PKI写入状态                                                                 $    $  /         $    $  ANS027.BYTE004  $  switxh(x)0x00:y=@0901;0x01:y=@09de;default:y=@0162;
  $  031.服务器反馈超时时间                                                          $    $  s         $    $  ANS028.BYTE004  $  y=x;
  $  032.TBOX(远程信息处理控制器)数据上传重试次数                                    $    $  /         $    $  ANS029.BYTE004  $  y=x;
  $  033.TBOX(远程信息处理控制器)数据上传重试间隔时间                                $    $  min       $    $  ANS030.BYTE004  $  y=x;
  $  034.空气质量信息定时上传间隔时间                                                $    $  min       $    $  ANS031.BYTE004  $  y=x;

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
