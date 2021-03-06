
    车型ID：08ec

    模拟：协议模拟-->08ec

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~78B

进入命令:

  $~  REQ000:783 02 10 01 00 00 00 00 00       $~  ANS000:78B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:783 02 3E 00 00 00 00 00 00       $!  ANS000:78B 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:783 03 19 02 09 00 00 00 00       $#  ANS000:78B 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/aa000000


  $#  01.读故障码库
  $#  REQ000:783 02 19 0A 00 00 00 00 00       $#  ANS000:78B 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/aa000000


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

  $$  REQ000:783 04 14 FF FF FF 00 00 00       $$  ANS000:78B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:783 03 22 F1 12 00 00 00 00       $%  ANS000:78B 03 22 F1 12 00 00 00 00
  $%  REQ001:783 03 22 F1 80 00 00 00 00       $%  ANS001:78B 03 22 F1 80 00 00 00 00
  $%  REQ002:783 03 22 F1 87 00 00 00 00       $%  ANS002:78B 03 22 F1 87 00 00 00 00
  $%  REQ003:783 03 22 F1 8A 00 00 00 00       $%  ANS003:78B 03 22 F1 8A 00 00 00 00
  $%  REQ004:783 03 22 F1 8B 00 00 00 00       $%  ANS004:78B 03 22 F1 8B 00 00 00 00
  $%  REQ005:783 03 22 F1 8C 00 00 00 00       $%  ANS005:78B 03 22 F1 8C 00 00 00 00
  $%  REQ006:783 03 22 F1 90 00 00 00 00       $%  ANS006:78B 03 22 F1 90 00 00 00 00
  $%  REQ007:783 03 22 F1 93 00 00 00 00       $%  ANS007:78B 03 22 F1 93 00 00 00 00
  $%  REQ008:783 03 22 F1 95 00 00 00 00       $%  ANS008:78B 03 22 F1 95 00 00 00 00
  $%  REQ009:783 03 22 F1 98 00 00 00 00       $%  ANS009:78B 03 22 F1 98 00 00 00 00
  $%  REQ010:783 03 22 F1 99 00 00 00 00       $%  ANS010:78B 03 22 F1 99 00 00 00 00
  $%  REQ011:783 03 22 F1 9D 00 00 00 00       $%  ANS011:78B 03 22 F1 9D 00 00 00 00
  $%  REQ012:783 03 22 F1 82 00 00 00 00       $%  ANS012:78B 03 22 F1 82 00 00 00 00

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

  $  REQ000:783 03 22 66 00 00 00 00 00       $  ANS000:78B 03 22 66 00 00 00 00 00
  $  REQ001:783 03 22 66 01 00 00 00 00       $  ANS001:78B 03 22 66 01 00 00 00 00
  $  REQ002:783 03 22 66 03 00 00 00 00       $  ANS002:78B 03 22 66 03 00 00 00 00
  $  REQ003:783 03 22 66 09 00 00 00 00       $  ANS003:78B 03 22 66 09 00 00 00 00
  $  REQ004:783 03 22 66 0A 00 00 00 00       $  ANS004:78B 03 22 66 0A 00 00 00 00
  $  REQ005:783 03 22 66 0E 00 00 00 00       $  ANS005:78B 03 22 66 0E 00 00 00 00
  $  REQ006:783 03 22 66 0F 00 00 00 00       $  ANS006:78B 03 22 66 0F 00 00 00 00
  $  REQ007:783 03 22 66 10 00 00 00 00       $  ANS007:78B 03 22 66 10 00 00 00 00
  $  REQ008:783 03 22 66 11 00 00 00 00       $  ANS008:78B 03 22 66 11 00 00 00 00
  $  REQ009:783 03 22 66 02 00 00 00 00       $  ANS009:78B 03 22 66 02 00 00 00 00
  $  REQ010:783 03 22 66 0B 00 00 00 00       $  ANS010:78B 03 22 66 0B 00 00 00 00
  $  REQ011:783 03 22 6B 04 00 00 00 00       $  ANS011:78B 03 22 6B 04 00 00 00 00
  $  REQ012:783 03 22 6B 05 00 00 00 00       $  ANS012:78B 03 22 6B 05 00 00 00 00
  $  REQ013:783 03 22 6B 0C 00 00 00 00       $  ANS013:78B 03 22 6B 0C 00 00 00 00
  $  REQ014:783 03 22 6B 0D 00 00 00 00       $  ANS014:78B 03 22 6B 0D 00 00 00 00
  $  REQ015:783 03 22 6B 16 00 00 00 00       $  ANS015:78B 03 22 6B 16 00 00 00 00
  $  REQ016:783 03 22 6B 17 00 00 00 00       $  ANS016:78B 03 22 6B 17 00 00 00 00

  $  000.座椅前后调节开关状态                            $    $  /      $    $  ANS000.BYTE004  $  switxh(x)0x00:y=@0204;0x01:y=@0227;0x02:y=@0228;0x03:y=@0143;0xff:y=@0132; else y=@0220;
  $  001.座椅高度调节开关状态                            $    $  /      $    $  ANS001.BYTE004  $  switxh(x)0x00:y=@0204;0x01:y=@0227;0x02:y=@0228;0x03:y=@0143;0xff:y=@0132; else y=@0220;
  $  002.座椅靠背调节开关状态                            $    $  /      $    $  ANS002.BYTE004  $  switxh(x)0x00:y=@0204;0x01:y=@0227;0x02:y=@0228;0x03:y=@0143;0xff:y=@0132; else y=@0220;
  $  003.座椅前后标定状态                                $    $  /      $    $  ANS003.BYTE004  $  if(((x>>0)&1))y=@0223;else y=@00e5;
  $  004.座椅前后标定历史                                $    $  /      $    $  ANS003.BYTE004  $  if(((x>>1)&1))y=@021d;else y=@021c;
  $  005.靠背标定状态                                    $    $  /      $    $  ANS004.BYTE004  $  if(((x>>0)&1))y=@0223;else y=@00e5;
  $  006.靠背标定历史                                    $    $  /      $    $  ANS004.BYTE004  $  if(((x>>1)&1))y=@021d;else y=@021c;
  $  007.座椅高度标定状态                                $    $  /      $    $  ANS005.BYTE004  $  if(((x>>0)&1))y=@0223;else y=@00e5;
  $  008.座椅高度标定历史                                $    $  /      $    $  ANS005.BYTE004  $  if(((x>>1)&1))y=@021d;else y=@021c;
  $  009.座椅记忆开关状态                                $    $  /      $    $  ANS006.BYTE004  $  switxh(x)0x00:y=@0204;0x01:y=@021e;0x02:y=@021f;0x03:y=@0143;0xFF:y=@0132;
  $  010.座椅记忆设定开关状态                            $    $  /      $    $  ANS007.BYTE004  $  switxh(x)0x00:y=@0000;0x01:y=@0001;
  $  011.点火开关状态                                    $    $  /      $    $  ANS008.BYTE004  $  switxh(x)0x00:y=@0000;0x01:y=@0001;
  $  012.座椅前部高度调节开关状态                        $    $  /      $    $  ANS009.BYTE004  $  switxh(x)0x00:y=@0204;0x01:y=@0227;0x02:y=@0228;0x03:y=@0143;0xff:y=@0132; else y=@0220;
  $  013.座椅前部高度标定状态                            $    $  /      $    $  ANS010.BYTE004  $  if(((x>>0)&1))y=@0223;else y=@00e5;
  $  014.座椅前部高度标定历史                            $    $  /      $    $  ANS010.BYTE004  $  if(((x>>1)&1))y=@021d;else y=@021c;
  $  015.司机座椅加热控制频率                            $    $  Hz     $    $  ANS011.BYTE005  $  y=x*1;
  $  016.司机座椅加热控制占空比                          $    $  %      $    $  ANS011.BYTE004  $  y=x*1;
  $  017.副驾座椅加热控制频率                            $    $  Hz     $    $  ANS012.BYTE005  $  y=x*1;
  $  018.副驾座椅加热控制占空比                          $    $  %      $    $  ANS012.BYTE004  $  y=x*1;
  $  019.司机座椅加热负温度系数热敏电阻器反馈数据        $    $  /      $    $  ANS013.BYTE004  $  y=x1*0x100+x2;
  $  020.副驾座椅加热负温度系数热敏电阻器反馈数据        $    $  /      $    $  ANS014.BYTE004  $  y=x1*0x100+x2;
  $  021.主驾座椅加热状态                                $    $  /      $    $  ANS015.BYTE004  $  switxh(x)0x0:@0d40;0x1:@0f59;0x2:y=@0f5a;0x7:y=@0f5b; else y=@0220;
  $  022.副驾座椅加热状态                                $    $  /      $    $  ANS016.BYTE004  $  switxh(x)0x0:@0d40;0x1:@0f59;0x2:y=@0f5a;0x7:y=@0f5b; else y=@0220;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:783 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
