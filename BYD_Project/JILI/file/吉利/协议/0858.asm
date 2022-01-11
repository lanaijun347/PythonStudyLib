
    车型ID：0858

    模拟：协议模拟-->0858

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7AD

进入命令:

  $~  REQ000:7A5 02 10 01 00 00 00 00 00       $~  ANS000:7AD 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A5 02 3E 00 00 00 00 00 00       $!  ANS000:7AD 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7A5 03 19 02 09 00 00 00 00       $#  ANS000:7AD 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/99000000


  $#  01.读故障码库
  $#  REQ000:7A5 02 19 0A 00 00 00 00 00       $#  ANS000:7AD 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/99000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="0"/>
   </FUNCTION>
  <FUNCTION type="0" num="1">
     <param type="string" value="0"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7A5 04 14 FF FF FF 00 00 00       $$  ANS000:7AD 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A5 03 22 F1 12 00 00 00 00       $%  ANS000:7AD 03 22 F1 12 00 00 00 00
  $%  REQ001:7A5 03 22 F1 80 00 00 00 00       $%  ANS001:7AD 03 22 F1 80 00 00 00 00
  $%  REQ002:7A5 03 22 F1 87 00 00 00 00       $%  ANS002:7AD 03 22 F1 87 00 00 00 00
  $%  REQ003:7A5 03 22 F1 8A 00 00 00 00       $%  ANS003:7AD 03 22 F1 8A 00 00 00 00
  $%  REQ004:7A5 03 22 F1 8B 00 00 00 00       $%  ANS004:7AD 03 22 F1 8B 00 00 00 00
  $%  REQ005:7A5 03 22 F1 8C 00 00 00 00       $%  ANS005:7AD 03 22 F1 8C 00 00 00 00
  $%  REQ006:7A5 03 22 F1 90 00 00 00 00       $%  ANS006:7AD 03 22 F1 90 00 00 00 00
  $%  REQ007:7A5 03 22 F1 93 00 00 00 00       $%  ANS007:7AD 03 22 F1 93 00 00 00 00
  $%  REQ008:7A5 03 22 F1 95 00 00 00 00       $%  ANS008:7AD 03 22 F1 95 00 00 00 00
  $%  REQ009:7A5 03 22 F1 98 00 00 00 00       $%  ANS009:7AD 03 22 F1 98 00 00 00 00
  $%  REQ010:7A5 03 22 F1 99 00 00 00 00       $%  ANS010:7AD 03 22 F1 99 00 00 00 00
  $%  REQ011:7A5 03 22 F1 9D 00 00 00 00       $%  ANS011:7AD 03 22 F1 9D 00 00 00 00
  $%  REQ012:7A5 03 22 F1 82 00 00 00 00       $%  ANS012:7AD 03 22 F1 82 00 00 00 00

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
  $  REQ000:7A5 03 22 DF 00 00 00 00 00       $  ANS000:7AD 03 22 DF 00 00 00 00 00
  $  REQ001:7A5 03 22 DF 01 00 00 00 00       $  ANS001:7AD 03 22 DF 01 00 00 00 00
  $  REQ002:7A5 03 22 A5 E0 00 00 00 00       $  ANS002:7AD 03 22 A5 E0 00 00 00 00
  $  REQ003:7A5 03 22 A5 00 00 00 00 00       $  ANS003:7AD 03 22 A5 00 00 00 00 00
  $  REQ004:7A5 03 22 A5 03 00 00 00 00       $  ANS004:7AD 03 22 A5 03 00 00 00 00

  $  000.ECU(电子控制器)电源电压               $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.车速                                  $    $  km/h     $    $  ANS001.BYTE004  $  y=INT((x1*256+x2)*0.05625);
  $  002.档位信息                              $    $  /        $    $  ANS002.BYTE004  $  switxh(x) 0x00:y=@0b00;0x01:y=@011e;0x02:y=@013b;0x03:y=@061b;0x04:y=@0dd2;
  $  003.按钮状态PDC(倒车雷达控制系统)         $    $  /        $    $  ANS003.BYTE004  $  switxh(x) 0:y=@01b2;1:y=@01b1;2:y=@0dd3;default:y=@0209;
  $  004.按钮状态SVA                           $    $  /        $    $  ANS003.BYTE005  $  switxh(x) 0:y=@01b2;1:y=@01b1;2:y=@0dd3;default:y=@0209;
  $  005.按钮状态APA(自动泊车辅助)             $    $  /        $    $  ANS003.BYTE006  $  switxh(x) 0:y=@01b2;1:y=@01b1;2:y=@0dd3;default:y=@0209;
  $  006.APA(自动泊车辅助)停车位信息长度       $    $  cm       $    $  ANS004.BYTE004  $  y=x1*256+x2;
  $  007.APA(自动泊车辅助)停车位信息深度       $    $  cm       $    $  ANS004.BYTE006  $  y=x1*256+x2;

  $)  01.PAS(泊车辅助系统)回波距离
  $  01.PAS(泊车辅助系统)回波距离
  $  REQ000:7A5 03 22 A5 01 00 00 00 00       $  ANS000:7AD 03 22 A5 01 00 00 00 00

  $  000.左前侧边传感器直接回波         $    $  cm     $    $  ANS000.BYTE004  $  y=x1*0x100+x2;
  $  001.左前角传感器直接回波           $    $  cm     $    $  ANS000.BYTE006  $  y=x1*0x100+x2;
  $  002.左前中间传感器直接回波         $    $  cm     $    $  ANS000.BYTE008  $  y=x1*0x100+x2;
  $  003.右前中间传感器直接回波         $    $  cm     $    $  ANS000.BYTE010  $  y=x1*0x100+x2;
  $  004.右前角传感器直接回波           $    $  cm     $    $  ANS000.BYTE012  $  y=x1*0x100+x2;
  $  005.右前侧边传感器直接回波         $    $  cm     $    $  ANS000.BYTE014  $  y=x1*0x100+x2;
  $  006.左后侧边传感器直接回波         $    $  cm     $    $  ANS000.BYTE016  $  y=x1*0x100+x2;
  $  007.左后角传感器直接回波           $    $  cm     $    $  ANS000.BYTE018  $  y=x1*0x100+x2;
  $  008.左后中间传感器直接回波         $    $  cm     $    $  ANS000.BYTE020  $  y=x1*0x100+x2;
  $  009.右后角中间感器直接回波         $    $  cm     $    $  ANS000.BYTE022  $  y=x1*0x100+x2;
  $  010.右后角传感器直接回波           $    $  cm     $    $  ANS000.BYTE024  $  y=x1*0x100+x2;
  $  011.右后侧边传感器直接回波         $    $  cm     $    $  ANS000.BYTE026  $  y=x1*0x100+x2;
  $  012.左前角传感器间接回波           $    $  cm     $    $  ANS000.BYTE028  $  y=x1*0x100+x2;
  $  013.左前中间传感器间接回波         $    $  cm     $    $  ANS000.BYTE030  $  y=x1*0x100+x2;
  $  014.右前中间传感器间接回波         $    $  cm     $    $  ANS000.BYTE032  $  y=x1*0x100+x2;
  $  015.右前角传感器间接回波           $    $  cm     $    $  ANS000.BYTE034  $  y=x1*0x100+x2;
  $  016.左后角传感器间接回波           $    $  cm     $    $  ANS000.BYTE036  $  y=x1*0x100+x2;
  $  017.左后中间传感器间接回波         $    $  cm     $    $  ANS000.BYTE038  $  y=x1*0x100+x2;
  $  018.右后角中间传感器间接回波       $    $  cm     $    $  ANS000.BYTE040  $  y=x1*0x100+x2;
  $  019.右后角传感器间接回波           $    $  cm     $    $  ANS000.BYTE042  $  y=x1*0x100+x2;

  $)  02.PAS(泊车辅助系统)传感器余振时间
  $  02.PAS(泊车辅助系统)传感器余振时间
  $  REQ000:7A5 03 22 A5 02 00 00 00 00       $  ANS000:7AD 03 22 A5 02 00 00 00 00

  $  000.左前侧边传感器余震时间         $    $  us     $    $  ANS000.BYTE004  $  y=x1*0x100+x2;
  $  001.左前角传感器余震时间           $    $  us     $    $  ANS000.BYTE006  $  y=x1*0x100+x2;
  $  002.左前中间传感器余震时间         $    $  us     $    $  ANS000.BYTE008  $  y=x1*0x100+x2;
  $  003.右前中间传感器余震时间         $    $  us     $    $  ANS000.BYTE010  $  y=x1*0x100+x2;
  $  004.右前角传感器余震时间           $    $  us     $    $  ANS000.BYTE012  $  y=x1*0x100+x2;
  $  005.右前侧边传感器余震时间         $    $  us     $    $  ANS000.BYTE014  $  y=x1*0x100+x2;
  $  006.左后侧边传感器余震时间         $    $  us     $    $  ANS000.BYTE016  $  y=x1*0x100+x2;
  $  007.左后角传感器余震时间           $    $  us     $    $  ANS000.BYTE018  $  y=x1*0x100+x2;
  $  008.左后中间传感器余震时间         $    $  us     $    $  ANS000.BYTE020  $  y=x1*0x100+x2;
  $  009.右后角中间传感器余震时间       $    $  us     $    $  ANS000.BYTE022  $  y=x1*0x100+x2;
  $  010.右后角传感器余震时间           $    $  us     $    $  ANS000.BYTE024  $  y=x1*0x100+x2;
  $  011.右后侧边传感器余震时间         $    $  us     $    $  ANS000.BYTE026  $  y=x1*0x100+x2;

  $)  03.泊车辅助系统状态(系统状态及Disable原因)
  $  03.泊车辅助系统状态(系统状态及Disable原因)
  $  REQ000:7A5 03 22 A5 04 00 00 00 00       $  ANS000:7AD 03 22 A5 04 00 00 00 00

  $  000.驻车距离控制状态                   $    $  /     $    $  ANS000.BYTE004  $  switxh(x) 0x00:y=@0190; 0x01:y=@0191; 0x02:y=@10e6; 0x03:y=@00be;
  $  001.驻车距离控制禁用原因-缓冲器1       $    $  /     $    $  ANS000.BYTE005  $  switxh(x) 0x00:y=@10d3; 0x01:y=@10e7; 0x02:y=@10e8; 0x03:y=@10e9; 0x04:y=@05af; 0x05:y=@10ea; 0x06:y=@10eb; 0x07:y=@10ec; 0x08:y=@10ed; 0x09:y=@10ee; 0x0a:y=@10ef; 0x0b:y=@10f0; 0x0c:y=@10f1; default:y=@0220;
  $  002.驻车距离控制禁用原因-缓冲器2       $    $  /     $    $  ANS000.BYTE006  $  switxh(x) 0x00:y=@10d3; 0x01:y=@10e7; 0x02:y=@10e8; 0x03:y=@10e9; 0x04:y=@05af; 0x05:y=@10ea; 0x06:y=@10eb; 0x07:y=@10ec; 0x08:y=@10ed; 0x09:y=@10ee; 0x0a:y=@10ef; 0x0b:y=@10f0; 0x0c:y=@10f1; default:y=@0220;
  $  003.驻车距离控制禁用原因-缓冲器3       $    $  /     $    $  ANS000.BYTE007  $  switxh(x) 0x00:y=@10d3; 0x01:y=@10e7; 0x02:y=@10e8; 0x03:y=@10e9; 0x04:y=@05af; 0x05:y=@10ea; 0x06:y=@10eb; 0x07:y=@10ec; 0x08:y=@10ed; 0x09:y=@10ee; 0x0a:y=@10ef; 0x0b:y=@10f0; 0x0c:y=@10f1; default:y=@0220;
  $  004.驻车距离控制禁用原因-缓冲器4       $    $  /     $    $  ANS000.BYTE008  $  switxh(x) 0x00:y=@10d3; 0x01:y=@10e7; 0x02:y=@10e8; 0x03:y=@10e9; 0x04:y=@05af; 0x05:y=@10ea; 0x06:y=@10eb; 0x07:y=@10ec; 0x08:y=@10ed; 0x09:y=@10ee; 0x0a:y=@10ef; 0x0b:y=@10f0; 0x0c:y=@10f1; default:y=@0220;
  $  005.驻车距离控制禁用原因-缓冲器5       $    $  /     $    $  ANS000.BYTE009  $  switxh(x) 0x00:y=@10d3; 0x01:y=@10e7; 0x02:y=@10e8; 0x03:y=@10e9; 0x04:y=@05af; 0x05:y=@10ea; 0x06:y=@10eb; 0x07:y=@10ec; 0x08:y=@10ed; 0x09:y=@10ee; 0x0a:y=@10ef; 0x0b:y=@10f0; 0x0c:y=@10f1; default:y=@0220;
  $  006.驻车距离控制禁用原因-缓冲器6       $    $  /     $    $  ANS000.BYTE010  $  switxh(x) 0x00:y=@10d3; 0x01:y=@10e7; 0x02:y=@10e8; 0x03:y=@10e9; 0x04:y=@05af; 0x05:y=@10ea; 0x06:y=@10eb; 0x07:y=@10ec; 0x08:y=@10ed; 0x09:y=@10ee; 0x0a:y=@10ef; 0x0b:y=@10f0; 0x0c:y=@10f1; default:y=@0220;

  $)  04.自动泊车辅助系统状态(系统状态及Disable原因)
  $  04.自动泊车辅助系统状态(系统状态及Disable原因)
  $  REQ000:7A5 03 22 A5 05 00 00 00 00       $  ANS000:7AD 03 22 A5 05 00 00 00 00

  $  000.泊车辅助系统状态                            $    $  /     $    $  ANS000.BYTE004  $  switxh(x) 0x00:y=@10db; 0x01:y=@10dc; 0x02:y=@10dd; 0x03:y=@10de; 0x04:y=@10df;
  $  001.泊车辅助系统失效原因1（最近一次失效）       $    $  /     $    $  ANS000.BYTE005  $  switxh(x) 0x00:y=@10e0; 0x01:y=@10e1; 0x02:y=@10e2; 0x03:y=@05af; 0x04:y=@10e3; 0x05:y=@10e4; 0x06:y=@0863; 0x07:y=@10e5; default: y=@10da;
  $  002.泊车辅助系统失效原因2                       $    $  /     $    $  ANS000.BYTE006  $  switxh(x) 0x00:y=@10e0; 0x01:y=@10e1; 0x02:y=@10e2; 0x03:y=@05af; 0x04:y=@10e3; 0x05:y=@10e4; 0x06:y=@0863; 0x07:y=@10e5; default: y=@10da;
  $  003.泊车辅助系统失效原因3                       $    $  /     $    $  ANS000.BYTE007  $  switxh(x) 0x00:y=@10e0; 0x01:y=@10e1; 0x02:y=@10e2; 0x03:y=@05af; 0x04:y=@10e3; 0x05:y=@10e4; 0x06:y=@0863; 0x07:y=@10e5; default: y=@10da;
  $  004.泊车辅助系统失效原因4                       $    $  /     $    $  ANS000.BYTE008  $  switxh(x) 0x00:y=@10e0; 0x01:y=@10e1; 0x02:y=@10e2; 0x03:y=@05af; 0x04:y=@10e3; 0x05:y=@10e4; 0x06:y=@0863; 0x07:y=@10e5; default: y=@10da;
  $  005.泊车辅助系统失效原因5                       $    $  /     $    $  ANS000.BYTE009  $  switxh(x) 0x00:y=@10e0; 0x01:y=@10e1; 0x02:y=@10e2; 0x03:y=@05af; 0x04:y=@10e3; 0x05:y=@10e4; 0x06:y=@0863; 0x07:y=@10e5; default: y=@10da;
  $  006.泊车辅助系统失效原因6                       $    $  /     $    $  ANS000.BYTE010  $  switxh(x) 0x00:y=@10e0; 0x01:y=@10e1; 0x02:y=@10e2; 0x03:y=@05af; 0x04:y=@10e3; 0x05:y=@10e4; 0x06:y=@0863; 0x07:y=@10e5; default: y=@10da;

  $)  05.侧盲区检测系统状态(系统状态及Disable原因)
  $  05.侧盲区检测系统状态(系统状态及Disable原因)
  $  REQ000:7A5 03 22 A5 06 00 00 00 00       $  ANS000:7AD 03 22 A5 06 00 00 00 00

  $  000.侧盲区检测系统状态                            $    $  /     $    $  ANS000.BYTE004  $  switxh(x) 0x00:y=@10cf; 0x01:y=@10d0; 0x02:y=@10d1; 0x03:y=@10d2;
  $  001.侧盲区检测系统失效原因1（最近一次失效）       $    $  /     $    $  ANS000.BYTE005  $  switxh(x) 0x00:y=@10d3; 0x01:y=@0863; 0x02:y=@10d4; 0x03:y=@10d5; 0x04:y=@10d6; 0x05:y=@10d7; 0x06:y=@10d8; 0x07:y=@10d9; 0x08:y=@05af;default:y=@10da;
  $  002.侧盲区检测系统失效原因2                       $    $  /     $    $  ANS000.BYTE006  $  switxh(x) 0x00:y=@10d3; 0x01:y=@0863; 0x02:y=@10d4; 0x03:y=@10d5; 0x04:y=@10d6; 0x05:y=@10d7; 0x06:y=@10d8; 0x07:y=@10d9; 0x08:y=@05af;default:y=@10da;
  $  003.侧盲区检测系统失效原因3                       $    $  /     $    $  ANS000.BYTE007  $  switxh(x) 0x00:y=@10d3; 0x01:y=@0863; 0x02:y=@10d4; 0x03:y=@10d5; 0x04:y=@10d6; 0x05:y=@10d7; 0x06:y=@10d8; 0x07:y=@10d9; 0x08:y=@05af;default:y=@10da;
  $  004.侧盲区检测系统失效原因4                       $    $  /     $    $  ANS000.BYTE008  $  switxh(x) 0x00:y=@10d3; 0x01:y=@0863; 0x02:y=@10d4; 0x03:y=@10d5; 0x04:y=@10d6; 0x05:y=@10d7; 0x06:y=@10d8; 0x07:y=@10d9; 0x08:y=@05af;default:y=@10da;
  $  005.侧盲区检测系统失效原因5                       $    $  /     $    $  ANS000.BYTE009  $  switxh(x) 0x00:y=@10d3; 0x01:y=@0863; 0x02:y=@10d4; 0x03:y=@10d5; 0x04:y=@10d6; 0x05:y=@10d7; 0x06:y=@10d8; 0x07:y=@10d9; 0x08:y=@05af;default:y=@10da;
  $  006.侧盲区检测系统失效原因6                       $    $  /     $    $  ANS000.BYTE010  $  switxh(x) 0x00:y=@10d3; 0x01:y=@0863; 0x02:y=@10d4; 0x03:y=@10d5; 0x04:y=@10d6; 0x05:y=@10d7; 0x06:y=@10d8; 0x07:y=@10d9; 0x08:y=@05af;default:y=@10da;

  $)  06.自动泊车辅助系统中断原因
  $  06.自动泊车辅助系统中断原因
  $  REQ000:7A5 03 22 A5 07 00 00 00 00       $  ANS000:7AD 03 22 A5 07 00 00 00 00

  $  000.退出原因1（最近一次）       $    $  /     $    $  ANS000.BYTE004  $  switxh(x) 0x00:y=@10f2; 0x01:y=@10f3; 0x02:y=@10f4; 0x03:y=@10f5; 0x04:y=@10f6; 0x05:y=@10f7; 0x06:y=@10f8; 0x07:y=@10f9; 0x08:y=@10fa; 0x09:y=@10fb; 0x0a:y=@10fc; 0x0b:y=@10fd; 0x0c:y=@10fe; 0x0d:y=@10ff; 0x0e:y=@1100; 0x0f:y=@1101; 0x10:y=@1102; default:y=@0220;
  $  001.退出原因2                   $    $  /     $    $  ANS000.BYTE005  $  switxh(x) 0x00:y=@10f2; 0x01:y=@10f3; 0x02:y=@10f4; 0x03:y=@10f5; 0x04:y=@10f6; 0x05:y=@10f7; 0x06:y=@10f8; 0x07:y=@10f9; 0x08:y=@10fa; 0x09:y=@10fb; 0x0a:y=@10fc; 0x0b:y=@10fd; 0x0c:y=@10fe; 0x0d:y=@10ff; 0x0e:y=@1100; 0x0f:y=@1101; 0x10:y=@1102; default:y=@0220;
  $  002.退出原因3                   $    $  /     $    $  ANS000.BYTE006  $  switxh(x) 0x00:y=@10f2; 0x01:y=@10f3; 0x02:y=@10f4; 0x03:y=@10f5; 0x04:y=@10f6; 0x05:y=@10f7; 0x06:y=@10f8; 0x07:y=@10f9; 0x08:y=@10fa; 0x09:y=@10fb; 0x0a:y=@10fc; 0x0b:y=@10fd; 0x0c:y=@10fe; 0x0d:y=@10ff; 0x0e:y=@1100; 0x0f:y=@1101; 0x10:y=@1102; default:y=@0220;
  $  003.退出原因4                   $    $  /     $    $  ANS000.BYTE007  $  switxh(x) 0x00:y=@10f2; 0x01:y=@10f3; 0x02:y=@10f4; 0x03:y=@10f5; 0x04:y=@10f6; 0x05:y=@10f7; 0x06:y=@10f8; 0x07:y=@10f9; 0x08:y=@10fa; 0x09:y=@10fb; 0x0a:y=@10fc; 0x0b:y=@10fd; 0x0c:y=@10fe; 0x0d:y=@10ff; 0x0e:y=@1100; 0x0f:y=@1101; 0x10:y=@1102; default:y=@0220;
  $  004.退出原因5                   $    $  /     $    $  ANS000.BYTE008  $  switxh(x) 0x00:y=@10f2; 0x01:y=@10f3; 0x02:y=@10f4; 0x03:y=@10f5; 0x04:y=@10f6; 0x05:y=@10f7; 0x06:y=@10f8; 0x07:y=@10f9; 0x08:y=@10fa; 0x09:y=@10fb; 0x0a:y=@10fc; 0x0b:y=@10fd; 0x0c:y=@10fe; 0x0d:y=@10ff; 0x0e:y=@1100; 0x0f:y=@1101; 0x10:y=@1102; default:y=@0220;
  $  005.退出原因6                   $    $  /     $    $  ANS000.BYTE009  $  switxh(x) 0x00:y=@10f2; 0x01:y=@10f3; 0x02:y=@10f4; 0x03:y=@10f5; 0x04:y=@10f6; 0x05:y=@10f7; 0x06:y=@10f8; 0x07:y=@10f9; 0x08:y=@10fa; 0x09:y=@10fb; 0x0a:y=@10fc; 0x0b:y=@10fd; 0x0c:y=@10fe; 0x0d:y=@10ff; 0x0e:y=@1100; 0x0f:y=@1101; 0x10:y=@1102; default:y=@0220;
  $  006.退出原因7                   $    $  /     $    $  ANS000.BYTE010  $  switxh(x) 0x00:y=@10f2; 0x01:y=@10f3; 0x02:y=@10f4; 0x03:y=@10f5; 0x04:y=@10f6; 0x05:y=@10f7; 0x06:y=@10f8; 0x07:y=@10f9; 0x08:y=@10fa; 0x09:y=@10fb; 0x0a:y=@10fc; 0x0b:y=@10fd; 0x0c:y=@10fe; 0x0d:y=@10ff; 0x0e:y=@1100; 0x0f:y=@1101; 0x10:y=@1102; default:y=@0220;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A5 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7A5 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
