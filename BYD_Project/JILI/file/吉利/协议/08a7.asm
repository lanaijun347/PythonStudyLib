
    车型ID：08a7

    模拟：协议模拟-->08a7

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
  $%  REQ001:7A5 03 22 F1 82 00 00 00 00       $%  ANS001:7AD 03 22 F1 82 00 00 00 00
  $%  REQ002:7A5 03 22 F1 87 00 00 00 00       $%  ANS002:7AD 03 22 F1 87 00 00 00 00
  $%  REQ003:7A5 03 22 F1 89 00 00 00 00       $%  ANS003:7AD 03 22 F1 89 00 00 00 00
  $%  REQ004:7A5 03 22 F1 8A 00 00 00 00       $%  ANS004:7AD 03 22 F1 8A 00 00 00 00
  $%  REQ005:7A5 03 22 F1 8B 00 00 00 00       $%  ANS005:7AD 03 22 F1 8B 00 00 00 00
  $%  REQ006:7A5 03 22 F1 8C 00 00 00 00       $%  ANS006:7AD 03 22 F1 8C 00 00 00 00
  $%  REQ007:7A5 03 22 F1 90 00 00 00 00       $%  ANS007:7AD 03 22 F1 90 00 00 00 00
  $%  REQ008:7A5 03 22 F1 93 00 00 00 00       $%  ANS008:7AD 03 22 F1 93 00 00 00 00
  $%  REQ009:7A5 03 22 F1 95 00 00 00 00       $%  ANS009:7AD 03 22 F1 95 00 00 00 00
  $%  REQ010:7A5 03 22 F1 98 00 00 00 00       $%  ANS010:7AD 03 22 F1 98 00 00 00 00
  $%  REQ011:7A5 03 22 F1 99 00 00 00 00       $%  ANS011:7AD 03 22 F1 99 00 00 00 00
  $%  REQ012:7A5 03 22 F1 9D 00 00 00 00       $%  ANS012:7AD 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:标定软件版本号:                              $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:零件号:                                      $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:Geely软件版本号:                             $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  004:供应商代码:                                  $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  005:ECU(电子控制器)生产日期:                     $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  006:ECU(电子控制器)序列号:                       $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  007:车辆识别号（VIN码）:                         $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  008:ECU(电子控制器)硬件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)软件版本号:                   $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:ECU(电子控制器)刷写日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:ECU(电子控制器)安装日期:                     $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  013:标定软件版本号:                              $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流
  $  00.数据流
  $  REQ000:7A5 03 22 A5 00 00 00 00 00       $  ANS000:7AD 03 22 A5 00 00 00 00 00
  $  REQ001:7A5 03 22 A5 03 00 00 00 00       $  ANS001:7AD 03 22 A5 03 00 00 00 00

  $  000.按钮状态PDC(倒车雷达控制系统)         $    $  /      $    $  ANS000.BYTE004  $  switxh(x) 0:y=@01b2;1:y=@01b1;2:y=@0dd3;default:y=@0209;
  $  001.按钮状态SVA                           $    $  /      $    $  ANS000.BYTE005  $  switxh(x) 0:y=@01b2;1:y=@01b1;2:y=@0dd3;default:y=@0209;
  $  002.按钮状态APA(自动泊车辅助)             $    $  /      $    $  ANS000.BYTE006  $  switxh(x) 0:y=@01b2;1:y=@01b1;2:y=@0dd3;default:y=@0209;
  $  003.APA(自动泊车辅助)停车位信息长度       $    $  cm     $    $  ANS001.BYTE004  $  y=x1*256+x2;
  $  004.APA(自动泊车辅助)停车位信息深度       $    $  cm     $    $  ANS001.BYTE006  $  y=x1*256+x2;

  $)  01.回波距离
  $  01.回波距离
  $  REQ000:7A5 03 22 A5 01 00 00 00 00       $  ANS000:7AD 03 22 A5 01 00 00 00 00

  $  000.PAS(泊车辅助系统) USS1 直接回波距离           $    $  cm     $    $  ANS000.BYTE004  $  y=x1*256+x2;
  $  001.PAS(泊车辅助系统) USS2 直接回波距离           $    $  cm     $    $  ANS000.BYTE006  $  y=x1*256+x2;
  $  002.PAS(泊车辅助系统) USS3 直接回波距离           $    $  cm     $    $  ANS000.BYTE008  $  y=x1*256+x2;
  $  003.PAS(泊车辅助系统) USS4 直接回波距离           $    $  cm     $    $  ANS000.BYTE010  $  y=x1*256+x2;
  $  004.PAS(泊车辅助系统) USS5 直接回波距离           $    $  cm     $    $  ANS000.BYTE012  $  y=x1*256+x2;
  $  005.PAS(泊车辅助系统) USS6 直接回波距离           $    $  cm     $    $  ANS000.BYTE014  $  y=x1*256+x2;
  $  006.PAS(泊车辅助系统) USS7 直接回波距离           $    $  cm     $    $  ANS000.BYTE016  $  y=x1*256+x2;
  $  007.PAS(泊车辅助系统) USS8 直接回波距离           $    $  cm     $    $  ANS000.BYTE018  $  y=x1*256+x2;
  $  008.PAS(泊车辅助系统) USS9 直接回波距离           $    $  cm     $    $  ANS000.BYTE020  $  y=x1*256+x2;
  $  009.PAS(泊车辅助系统) USS10 直接回波距离          $    $  cm     $    $  ANS000.BYTE022  $  y=x1*256+x2;
  $  010.PAS(泊车辅助系统) USS11 直接回波距离          $    $  cm     $    $  ANS000.BYTE024  $  y=x1*256+x2;
  $  011.PAS(泊车辅助系统) USS12 直接回波距离          $    $  cm     $    $  ANS000.BYTE026  $  y=x1*256+x2;
  $  012.PAS(泊车辅助系统) USS1-2 直接回波距离         $    $  cm     $    $  ANS000.BYTE028  $  y=x1*256+x2;
  $  013.PAS(泊车辅助系统) USS2-3 直接回波距离         $    $  cm     $    $  ANS000.BYTE030  $  y=x1*256+x2;
  $  014.PAS(泊车辅助系统) USS3-4 直接回波距离         $    $  cm     $    $  ANS000.BYTE032  $  y=x1*256+x2;
  $  015.PAS(泊车辅助系统) USS4-5 直接回波距离         $    $  cm     $    $  ANS000.BYTE034  $  y=x1*256+x2;
  $  016.PAS(泊车辅助系统) USS5-6 直接回波距离         $    $  cm     $    $  ANS000.BYTE036  $  y=x1*256+x2;
  $  017.PAS(泊车辅助系统) USS7-8 直接回波距离         $    $  cm     $    $  ANS000.BYTE038  $  y=x1*256+x2;
  $  018.PAS(泊车辅助系统) USS8-9 直接回波距离         $    $  cm     $    $  ANS000.BYTE040  $  y=x1*256+x2;
  $  019.PAS(泊车辅助系统) USS9-10 直接回波距离        $    $  cm     $    $  ANS000.BYTE042  $  y=x1*256+x2;
  $  020.PAS(泊车辅助系统) USS10-11 直接回波距离       $    $  cm     $    $  ANS000.BYTE044  $  y=x1*256+x2;
  $  021.PAS(泊车辅助系统) USS11-12 直接回波距离       $    $  cm     $    $  ANS000.BYTE046  $  y=x1*256+x2;

  $)  02.传感器余震时间
  $  02.传感器余震时间
  $  REQ000:7A5 03 22 A5 02 00 00 00 00       $  ANS000:7AD 03 22 A5 02 00 00 00 00

  $  000.左前侧边传感器余震时间          $    $  us     $    $  ANS000.BYTE004  $  y=x1*256+x2;
  $  001.左前角传感器余震时间            $    $  us     $    $  ANS000.BYTE006  $  y=x1*256+x2;
  $  002.左前中间传感器余震时间          $    $  us     $    $  ANS000.BYTE008  $  y=x1*256+x2;
  $  003.右前中间传感器余震时间          $    $  us     $    $  ANS000.BYTE010  $  y=x1*256+x2;
  $  004.右前角传感器余震时间            $    $  us     $    $  ANS000.BYTE012  $  y=x1*256+x2;
  $  005.右前侧边传感器余震时间          $    $  us     $    $  ANS000.BYTE014  $  y=x1*256+x2;
  $  006.左后侧边传感器余震时间          $    $  us     $    $  ANS000.BYTE016  $  y=x1*256+x2;
  $  007.左后角传感器余震时间            $    $  us     $    $  ANS000.BYTE018  $  y=x1*256+x2;
  $  008.左后中间传感器余震时间          $    $  us     $    $  ANS000.BYTE020  $  y=x1*256+x2;
  $  009.右后角中间传感器余震时间        $    $  us     $    $  ANS000.BYTE022  $  y=x1*256+x2;
  $  010.右后角传感器余震时间            $    $  us     $    $  ANS000.BYTE024  $  y=x1*256+x2;
  $  011.右后侧边传感器余震时间          $    $  us     $    $  ANS000.BYTE026  $  y=x1*256+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A5 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
