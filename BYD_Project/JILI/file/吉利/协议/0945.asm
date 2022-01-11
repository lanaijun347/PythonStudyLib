
    车型ID：0945

    模拟：协议模拟-->0945

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~79D,7F8

进入命令:

  $~  REQ000:795 02 10 01 00 00 00 00 00       $~  ANS000:79D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:795 02 3E 00 00 00 00 00 00       $!  ANS000:79D 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:795 03 19 02 09 00 00 00 00       $#  ANS000:79D 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/9a000000


  $#  01.读故障码库
  $#  REQ000:795 02 19 0A 00 00 00 00 00       $#  ANS000:79D 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/9a000000


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

  $$  REQ000:795 04 14 FF FF FF 00 00 00       $$  ANS000:79D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:795 03 22 F1 12 00 00 00 00       $%  ANS000:79D 03 22 F1 12 00 00 00 00
  $%  REQ001:795 03 22 F1 87 00 00 00 00       $%  ANS001:79D 03 22 F1 87 00 00 00 00
  $%  REQ002:795 03 22 F1 8A 00 00 00 00       $%  ANS002:79D 03 22 F1 8A 00 00 00 00
  $%  REQ003:795 03 22 F1 8B 00 00 00 00       $%  ANS003:79D 03 22 F1 8B 00 00 00 00
  $%  REQ004:795 03 22 F1 8C 00 00 00 00       $%  ANS004:79D 03 22 F1 8C 00 00 00 00
  $%  REQ005:795 03 22 F1 90 00 00 00 00       $%  ANS005:79D 03 22 F1 90 00 00 00 00
  $%  REQ006:795 03 22 F1 93 00 00 00 00       $%  ANS006:79D 03 22 F1 93 00 00 00 00
  $%  REQ007:795 03 22 F1 95 00 00 00 00       $%  ANS007:79D 03 22 F1 95 00 00 00 00
  $%  REQ008:795 03 22 F1 98 00 00 00 00       $%  ANS008:79D 03 22 F1 98 00 00 00 00
  $%  REQ009:795 03 22 F1 99 00 00 00 00       $%  ANS009:79D 03 22 F1 99 00 00 00 00
  $%  REQ010:795 03 22 F1 9D 00 00 00 00       $%  ANS010:79D 03 22 F1 9D 00 00 00 00
  $%  REQ011:795 03 22 F1 97 00 00 00 00       $%  ANS011:79D 03 22 F1 97 00 00 00 00
  $%  REQ012:795 03 22 F1 82 00 00 00 00       $%  ANS012:79D 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                  $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:供应商代码:                                $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:ECU(电子控制器)生产日期:                   $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:ECU(电子控制器)序列号:                     $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  005:车辆识别号（VIN码）:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:ECU(电子控制器)硬件版本号:                 $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:ECU(电子控制器)软件版本号:                 $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:诊断仪序列号:                              $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)刷写日期:                   $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:ECU(电子控制器)安装日期:                   $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:ECU(电子控制器)系统名称或发动机类型:       $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  012:标定软件版本号:                            $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:795 03 22 DF 00 00 00 00 00       $  ANS000:79D 03 22 DF 00 00 00 00 00
  $  REQ001:795 03 22 DF 01 00 00 00 00       $  ANS001:79D 03 22 DF 01 00 00 00 00
  $  REQ002:795 03 22 65 01 00 00 00 00       $  ANS002:79D 03 22 65 01 00 00 00 00
  $  REQ003:795 03 22 65 02 00 00 00 00       $  ANS003:79D 03 22 65 02 00 00 00 00
  $  REQ004:795 03 22 65 05 00 00 00 00       $  ANS004:79D 03 22 65 05 00 00 00 00
  $  REQ005:795 03 22 65 08 00 00 00 00       $  ANS005:79D 03 22 65 08 00 00 00 00
  $  REQ006:795 03 22 65 0F 00 00 00 00       $  ANS006:79D 03 22 65 0F 00 00 00 00
  $  REQ007:795 03 22 65 1B 00 00 00 00       $  ANS007:79D 03 22 65 1B 00 00 00 00
  $  REQ008:795 03 22 65 1C 00 00 00 00       $  ANS008:79D 03 22 65 1C 00 00 00 00
  $  REQ009:795 03 22 65 1E 00 00 00 00       $  ANS009:79D 03 22 65 1E 00 00 00 00
  $  REQ010:795 03 22 65 1F 00 00 00 00       $  ANS010:79D 03 22 65 1F 00 00 00 00
  $  REQ011:795 03 22 65 20 00 00 00 00       $  ANS011:79D 03 22 65 20 00 00 00 00
  $  REQ012:795 03 22 65 21 00 00 00 00       $  ANS012:79D 03 22 65 21 00 00 00 00
  $  REQ013:795 03 22 65 22 00 00 00 00       $  ANS013:79D 03 22 65 22 00 00 00 00

  $  000.ECU(电子控制器)电源电压                      $    $  V        $    $  ANS000.BYTE004  $  y=x1*0.1;
  $  001.车辆速度                                     $    $  km/h     $    $  ANS001.BYTE004  $  if((x1*0x100+x2)<0x1fff)y=(x1*0x100+x2)*0.05625;else y=@0132;
  $  002.PEPS(无钥匙进入一键式启动单元)学习状态       $    $  /        $    $  ANS002.BYTE004  $  if(x1==0x00)y=@0130;else if(x1==0x01)y=@0ddd;else if(x1==0x02)y=@0318;else if(x1==0x03)y=@0131;else y=@0209;
  $  003.已学习钥匙数量                               $    $  /        $    $  ANS003.BYTE004  $  y=x;
  $  004.ACC输出状态                                  $    $  /        $    $  ANS004.BYTE004  $  if(((x1>>0)&1))y=@001c;else y=@001d;
  $  005.IGN(点火)1输出状态                           $    $  /        $    $  ANS004.BYTE004  $  if(((x1>>1)&1))y=@001c;else y=@001d;
  $  006.IGN(点火)2输出状态                           $    $  /        $    $  ANS004.BYTE004  $  if(((x1>>2)&1))y=@001c;else y=@001d;
  $  007.起动机输出状态                               $    $  /        $    $  ANS004.BYTE004  $  if(((x1>>3)&1))y=@001c;else y=@001d;
  $  008.SSB绿灯输出状态                              $    $  /        $    $  ANS004.BYTE005  $  if(((x1>>0)&1))y=@001c;else y=@001d;
  $  009.SSB橙灯输出状态                              $    $  /        $    $  ANS004.BYTE005  $  if(((x1>>1)&1))y=@001c;else y=@001d;
  $  010.无线充电禁止线输出状态                       $    $  /        $    $  ANS005.BYTE004  $  if(((x>>0)&1))y=@001c;else y=@001d;
  $  011.最大远程发动机运行时间                       $    $  min      $    $  ANS006.BYTE004  $  y=x;
  $  012.最大远程启动时间                             $    $  s        $    $  ANS006.BYTE005  $  y=x;
  $  013.最大远程关窗确认时间                         $    $  s        $    $  ANS006.BYTE006  $  y=x;
  $  014.最大远程闭解锁时间                           $    $  s        $    $  ANS006.BYTE007  $  y=x;
  $  015.最大远程开窗确认时间                         $    $  s        $    $  ANS006.BYTE008  $  y=x;
  $  016.蓝牙钥匙序列号                               $    $  /        $    $  ANS007.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $  017.蓝牙钥匙软件版本号                           $    $  /        $    $  ANS008.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $  018.当前钥匙数量                                 $    $  /        $    $  ANS009.BYTE004  $  y=x;
  $  019.读取脚踢模块零件号信息                       $    $  /        $    $  ANS010.BYTE004  $  HEX(x1,x2,x3,x4,x5);
  $  020.读取脚踢模块硬件版本号                       $    $  /        $    $  ANS011.BYTE004  $  HEX(x1,x2);
  $  021.读取脚踢模块软件版本号                       $    $  /        $    $  ANS012.BYTE004  $  HEX(x1,x2);
  $  022.读取脚踢模块供应商码                         $    $  /        $    $  ANS013.BYTE004  $  HEX(x1,x2,x3);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:795 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
