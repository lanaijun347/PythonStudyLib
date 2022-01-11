
    车型ID：082c

    模拟：协议模拟-->082c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7AF

进入命令:

  $~  REQ000:7A7 02 10 01 00 00 00 00 00       $~  ANS000:7AF 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A7 02 3E 00 00 00 00 00 00       $!  ANS000:7AF 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7A7 03 19 02 09 00 00 00 00       $#  ANS000:7AF 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b0000000


  $#  01.读故障码库
  $#  REQ000:7A7 02 19 0A 00 00 00 00 00       $#  ANS000:7AF 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b0000000


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

  $$  REQ000:7A7 04 14 FF FF FF 00 00 00       $$  ANS000:7AF 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A7 03 22 F1 12 00 00 00 00       $%  ANS000:7AF 03 22 F1 12 00 00 00 00
  $%  REQ001:7A7 03 22 F1 87 00 00 00 00       $%  ANS001:7AF 03 22 F1 87 00 00 00 00
  $%  REQ002:7A7 03 22 F1 89 00 00 00 00       $%  ANS002:7AF 03 22 F1 89 00 00 00 00
  $%  REQ003:7A7 03 22 F1 8A 00 00 00 00       $%  ANS003:7AF 03 22 F1 8A 00 00 00 00
  $%  REQ004:7A7 03 22 F1 8B 00 00 00 00       $%  ANS004:7AF 03 22 F1 8B 00 00 00 00
  $%  REQ005:7A7 03 22 F1 8C 00 00 00 00       $%  ANS005:7AF 03 22 F1 8C 00 00 00 00
  $%  REQ006:7A7 03 22 F1 90 00 00 00 00       $%  ANS006:7AF 03 22 F1 90 00 00 00 00
  $%  REQ007:7A7 03 22 F1 93 00 00 00 00       $%  ANS007:7AF 03 22 F1 93 00 00 00 00
  $%  REQ008:7A7 03 22 F1 95 00 00 00 00       $%  ANS008:7AF 03 22 F1 95 00 00 00 00
  $%  REQ009:7A7 03 22 F1 9D 00 00 00 00       $%  ANS009:7AF 03 22 F1 9D 00 00 00 00
  $%  REQ010:7A7 03 22 F1 97 00 00 00 00       $%  ANS010:7AF 03 22 F1 97 00 00 00 00
  $%  REQ011:7A7 03 22 F1 98 00 00 00 00       $%  ANS011:7AF 03 22 F1 98 00 00 00 00
  $%  REQ012:7A7 03 22 F1 99 00 00 00 00       $%  ANS012:7AF 03 22 F1 99 00 00 00 00
  $%  REQ013:7A7 03 22 F1 82 00 00 00 00       $%  ANS013:7AF 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:                     $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:ECU(电子控制器)系统名称或发动机类型:         $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  011:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:ECU(电子控制器)刷写日期:                     $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  013:标定软件版本号:                              $%    $%  ANS013.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A7 03 22 DF 00 00 00 00 00       $  ANS000:7AF 03 22 DF 00 00 00 00 00
  $  REQ001:7A7 03 22 6A 00 00 00 00 00       $  ANS001:7AF 03 22 6A 00 00 00 00 00
  $  REQ002:7A7 03 22 6A 01 00 00 00 00       $  ANS002:7AF 03 22 6A 01 00 00 00 00
  $  REQ003:7A7 03 22 02 00 00 00 00 00       $  ANS003:7AF 03 22 02 00 00 00 00 00
  $  REQ004:7A7 03 22 02 01 00 00 00 00       $  ANS004:7AF 03 22 02 01 00 00 00 00

  $  000.ECU(电子控制器)供电电压                    $    $  V     $    $  ANS000.BYTE004  $  y=x1*0.1;
  $  001.通道镜像动力CAN信号已经路由到诊断CAN       $    $  /     $    $  ANS001.BYTE004  $  if(((x>>0)&1))y=@001c;else y=@001d;
  $  002.通道镜像混动CAN信号已经路由到诊断CAN       $    $  /     $    $  ANS001.BYTE004  $  if(((x>>1)&1))y=@001c;else y=@001d;
  $  003.通道镜像车身CAN信号已经路由到诊断CAN       $    $  /     $    $  ANS001.BYTE004  $  if(((x>>2)&1))y=@001c;else y=@001d;
  $  004.通道镜像底盘CAN信号已经路由到诊断CAN       $    $  /     $    $  ANS001.BYTE004  $  if(((x>>3)&1))y=@001c;else y=@001d;
  $  005.IG 状态                                    $    $  /     $    $  ANS002.BYTE004  $  if(x==0x00)y=@04d9;else if(x==0x01)y=@0f0d;else y=@0162;
  $  006.ECU(电子控制器)成功刷写次数                $    $  /     $    $  ANS003.BYTE004  $  y=x;
  $  007.ECU(电子控制器)尝试刷写次数                $    $  /     $    $  ANS004.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A7 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
