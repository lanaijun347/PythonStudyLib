
    车型ID：0818

    模拟：协议模拟-->0818

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~738

进入命令:

  $~  REQ000:730 02 10 01 00 00 00 00 00       $~  ANS000:738 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:730 02 3E 00 00 00 00 00 00       $!  ANS000:738 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:730 03 19 02 09 00 00 00 00       $#  ANS000:738 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/a8000000


  $#  01.读故障码库
  $#  REQ000:730 02 19 0A 00 00 00 00 00       $#  ANS000:738 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/a8000000


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

  $$  REQ000:730 04 14 FF FF FF 00 00 00       $$  ANS000:738 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:730 03 22 F1 12 00 00 00 00       $%  ANS000:738 03 22 F1 12 00 00 00 00
  $%  REQ001:730 03 22 F1 87 00 00 00 00       $%  ANS001:738 03 22 F1 87 00 00 00 00
  $%  REQ002:730 03 22 F1 89 00 00 00 00       $%  ANS002:738 03 22 F1 89 00 00 00 00
  $%  REQ003:730 03 22 F1 8A 00 00 00 00       $%  ANS003:738 03 22 F1 8A 00 00 00 00
  $%  REQ004:730 03 22 F1 8B 00 00 00 00       $%  ANS004:738 03 22 F1 8B 00 00 00 00
  $%  REQ005:730 03 22 F1 8C 00 00 00 00       $%  ANS005:738 03 22 F1 8C 00 00 00 00
  $%  REQ006:730 03 22 F1 90 00 00 00 00       $%  ANS006:738 03 22 F1 90 00 00 00 00
  $%  REQ007:730 03 22 F1 93 00 00 00 00       $%  ANS007:738 03 22 F1 93 00 00 00 00
  $%  REQ008:730 03 22 F1 95 00 00 00 00       $%  ANS008:738 03 22 F1 95 00 00 00 00
  $%  REQ009:730 03 22 F1 9D 00 00 00 00       $%  ANS009:738 03 22 F1 9D 00 00 00 00
  $%  REQ010:730 03 22 F1 98 00 00 00 00       $%  ANS010:738 03 22 F1 98 00 00 00 00
  $%  REQ011:730 03 22 F1 99 00 00 00 00       $%  ANS011:738 03 22 F1 99 00 00 00 00
  $%  REQ012:730 03 22 F1 82 00 00 00 00       $%  ANS012:738 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:零件号:                                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:                     $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:ECU(电子控制器)刷写日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  013:标定软件版本号:                              $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:730 03 22 4A 01 00 00 00 00       $  ANS000:738 03 22 4A 01 00 00 00 00
  $  REQ001:730 03 22 4A 02 00 00 00 00       $  ANS001:738 03 22 4A 02 00 00 00 00
  $  REQ002:730 03 22 4A 03 00 00 00 00       $  ANS002:738 03 22 4A 03 00 00 00 00
  $  REQ003:730 03 22 4A 04 00 00 00 00       $  ANS003:738 03 22 4A 04 00 00 00 00
  $  REQ004:730 03 22 4A 05 00 00 00 00       $  ANS004:738 03 22 4A 05 00 00 00 00
  $  REQ005:730 03 22 4A 06 00 00 00 00       $  ANS005:738 03 22 4A 06 00 00 00 00
  $  REQ006:730 03 22 4A 07 00 00 00 00       $  ANS006:738 03 22 4A 07 00 00 00 00
  $  REQ007:730 03 22 4A 08 00 00 00 00       $  ANS007:738 03 22 4A 08 00 00 00 00
  $  REQ008:730 03 22 4A 09 00 00 00 00       $  ANS008:738 03 22 4A 09 00 00 00 00
  $  REQ009:730 03 22 4A 0B 00 00 00 00       $  ANS009:738 03 22 4A 0B 00 00 00 00
  $  REQ010:730 03 22 4A 00 00 00 00 00       $  ANS010:738 03 22 4A 00 00 00 00 00
  $  REQ011:730 03 22 4A 0A 00 00 00 00       $  ANS011:738 03 22 4A 0A 00 00 00 00

  $  000.继电器断开请求                       $    $  /        $    $  ANS000.BYTE004  $  if(0x00==x)y=@0f1d;else if(0x01==x)y=@0f1e;
  $  001.单体均衡命令                         $    $  /        $    $  ANS001.BYTE004  $  if(0x00==x)y=@0f1f;else if(0x01==x)y=@0f20;
  $  002.电池包总电压(电池包继电器内侧)       $    $  V        $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.001;
  $  003.48V回路电压(电池包继电器外侧)        $    $  V        $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.001;
  $  004.电池包电流                           $    $  A        $    $  ANS004.BYTE004  $  if(x1<0x80)y=(x1*256*256*256+x2*256*256+x3*256+x4)*0.001;else y=(x1*256*256*256+x2*256*256+x3*256+x4)*0.001-4294967.296;
  $  005.电池包温度传感器1温度                $    $  degC     $    $  ANS005.BYTE004  $  y=(x1*256+x2)*0.1-40;
  $  006.电池包温度传感器2温度                $    $  degC     $    $  ANS006.BYTE004  $  y=(x1*256+x2)*0.1-40;
  $  007.1号单体电压                          $    $  V        $    $  ANS007.BYTE004  $  y=(x1*256+x2)*0.001;
  $  008.2号单体电压                          $    $  V        $    $  ANS007.BYTE006  $  y=(x1*256+x2)*0.001;
  $  009.3号单体电压                          $    $  V        $    $  ANS007.BYTE008  $  y=(x1*256+x2)*0.001;
  $  010.4号单体电压                          $    $  V        $    $  ANS007.BYTE010  $  y=(x1*256+x2)*0.001;
  $  011.5号单体电压                          $    $  V        $    $  ANS007.BYTE012  $  y=(x1*256+x2)*0.001;
  $  012.6号单体电压                          $    $  V        $    $  ANS007.BYTE014  $  y=(x1*256+x2)*0.001;
  $  013.7号单体电压                          $    $  V        $    $  ANS007.BYTE016  $  y=(x1*256+x2)*0.001;
  $  014.8号单体电压                          $    $  V        $    $  ANS007.BYTE018  $  y=(x1*256+x2)*0.001;
  $  015.9号单体电压                          $    $  V        $    $  ANS007.BYTE020  $  y=(x1*256+x2)*0.001;
  $  016.10号单体电压                         $    $  V        $    $  ANS007.BYTE022  $  y=(x1*256+x2)*0.001;
  $  017.11号单体电压                         $    $  V        $    $  ANS007.BYTE024  $  y=(x1*256+x2)*0.001;
  $  018.12号单体电压                         $    $  V        $    $  ANS007.BYTE026  $  y=(x1*256+x2)*0.001;
  $  019.13号单体电压                         $    $  V        $    $  ANS007.BYTE028  $  y=(x1*256+x2)*0.001;
  $  020.14号单体电压                         $    $  V        $    $  ANS007.BYTE030  $  y=(x1*256+x2)*0.001;
  $  021.电池健康度                           $    $  %        $    $  ANS008.BYTE004  $  y=x;
  $  022.继电器状态                           $    $  /        $    $  ANS009.BYTE004  $  switxh(x)0x00:y=@0170;0x01:y=@010e;0x02:y=@00be;default:y=@0162;
  $  023.电量百分比                           $    $  %        $    $  ANS010.BYTE004  $  y=x;
  $  024.PCB板序列号                          $    $  /        $    $  ANS011.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:730 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
