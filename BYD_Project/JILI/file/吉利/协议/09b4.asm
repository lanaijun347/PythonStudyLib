
    车型ID：09b4

    模拟：协议模拟-->09b4

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
  $%  REQ002:795 03 22 F1 89 00 00 00 00       $%  ANS002:79D 03 22 F1 89 00 00 00 00
  $%  REQ003:795 03 22 F1 8A 00 00 00 00       $%  ANS003:79D 03 22 F1 8A 00 00 00 00
  $%  REQ004:795 03 22 F1 8B 00 00 00 00       $%  ANS004:79D 03 22 F1 8B 00 00 00 00
  $%  REQ005:795 03 22 F1 8C 00 00 00 00       $%  ANS005:79D 03 22 F1 8C 00 00 00 00
  $%  REQ006:795 03 22 F1 90 00 00 00 00       $%  ANS006:79D 03 22 F1 90 00 00 00 00
  $%  REQ007:795 03 22 F1 93 00 00 00 00       $%  ANS007:79D 03 22 F1 93 00 00 00 00
  $%  REQ008:795 03 22 F1 95 00 00 00 00       $%  ANS008:79D 03 22 F1 95 00 00 00 00
  $%  REQ009:795 03 22 F1 98 00 00 00 00       $%  ANS009:79D 03 22 F1 98 00 00 00 00
  $%  REQ010:795 03 22 F1 99 00 00 00 00       $%  ANS010:79D 03 22 F1 99 00 00 00 00
  $%  REQ011:795 03 22 F1 9D 00 00 00 00       $%  ANS011:79D 03 22 F1 9D 00 00 00 00
  $%  REQ012:795 03 22 02 00 00 00 00 00       $%  ANS012:79D 03 22 02 00 00 00 00 00
  $%  REQ013:795 03 22 02 01 00 00 00 00       $%  ANS013:79D 03 22 02 01 00 00 00 00
  $%  REQ014:795 03 22 F1 97 00 00 00 00       $%  ANS014:79D 03 22 F1 97 00 00 00 00
  $%  REQ015:795 03 22 F1 82 00 00 00 00       $%  ANS015:79D 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                  $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                           $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                                $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                   $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                     $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                       $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                 $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                 $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:诊断仪序列号:                              $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)刷写日期:                   $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:ECU(电子控制器)安装日期:                   $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:ECU(电子控制器)成功刷写次数:               $%    $%  ANS012.BYTE004  $%  y=x;
  $%  013:ECU(电子控制器)成功刷写次数:               $%    $%  ANS013.BYTE004  $%  y=x;
  $%  014:ECU(电子控制器)系统名称或发动机类型:       $%    $%  ANS014.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  015:标定软件版本号:                            $%    $%  ANS015.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:795 03 22 DF 00 00 00 00 00       $  ANS000:79D 03 22 DF 00 00 00 00 00
  $  REQ001:795 03 22 65 00 00 00 00 00       $  ANS001:79D 03 22 65 00 00 00 00 00
  $  REQ002:795 03 22 65 01 00 00 00 00       $  ANS002:79D 03 22 65 01 00 00 00 00
  $  REQ003:795 03 22 65 02 00 00 00 00       $  ANS003:79D 03 22 65 02 00 00 00 00
  $  REQ004:795 03 22 65 03 00 00 00 00       $  ANS004:79D 03 22 65 03 00 00 00 00
  $  REQ005:795 03 22 65 04 00 00 00 00       $  ANS005:79D 03 22 65 04 00 00 00 00
  $  REQ006:795 03 22 65 05 00 00 00 00       $  ANS006:79D 03 22 65 05 00 00 00 00
  $  REQ007:795 03 22 65 08 00 00 00 00       $  ANS007:79D 03 22 65 08 00 00 00 00
  $  REQ008:795 03 22 65 0B 00 00 00 00       $  ANS008:79D 03 22 65 0B 00 00 00 00
  $  REQ009:795 03 22 65 0D 00 00 00 00       $  ANS009:79D 03 22 65 0D 00 00 00 00
  $  REQ010:795 03 22 65 0E 00 00 00 00       $  ANS010:79D 03 22 65 0E 00 00 00 00
  $  REQ011:795 03 22 65 0F 00 00 00 00       $  ANS011:79D 03 22 65 0F 00 00 00 00

  $  000.ECU(电子控制器)电源电压                          $    $  V       $    $  ANS000.BYTE004  $  y=x1*0.1;
  $  001.一键启动开关1                                    $    $  /       $    $  ANS001.BYTE004  $  if(((x1>>0)&1))y=@001c;else y=@001d;
  $  002.乘员侧上锁信号                                   $    $  /       $    $  ANS001.BYTE004  $  if(((x1>>1)&1))y=@001c;else y=@001d;
  $  003.后备箱盖开关                                     $    $  /       $    $  ANS001.BYTE004  $  if(((x1>>3)&1))y=@001c;else y=@001d;
  $  004.驾驶员侧上锁信号                                 $    $  /       $    $  ANS001.BYTE004  $  if(((x1>>4)&1))y=@001c;else y=@001d;
  $  005.一键启动开关2                                    $    $  /       $    $  ANS001.BYTE004  $  if(((x1>>5)&1))y=@001c;else y=@001d;
  $  006.乘员侧解锁信号                                   $    $  /       $    $  ANS001.BYTE004  $  if(((x1>>6)&1))y=@001c;else y=@001d;
  $  007.刹车信号                                         $    $  /       $    $  ANS001.BYTE004  $  if(((x1>>7)&1))y=@001c;else y=@001d;
  $  008.驾驶员侧解锁信号                                 $    $  /       $    $  ANS001.BYTE005  $  if(((x1>>0)&1))y=@001c;else y=@001d;
  $  009.PEPS(无钥匙进入一键式启动单元)学习状态           $    $  /       $    $  ANS002.BYTE004  $  if(x1==0x00)y=@0130;else if(x1==0x01)y=@0ddd;else if(x1==0x02)y=@0318;else if(x1==0x03)y=@0131;else y=@0209;
  $  010.已学习钥匙数量                                   $    $  /       $    $  ANS003.BYTE004  $  y=x;
  $  011.秘钥写入状态                                     $    $  /       $    $  ANS004.BYTE004  $  if(((x>>0)&1))y=@01dd;else if(0x00==x)y=SPRINTF([%s%s],@0dfa,@0dfb);else if(0x02==x)y=SPRINTF([%s%s],@0dfa,@0dfc);else if(0x04==x)y=SPRINTF([%s%s],@0dfa,@0dfd);else if(0x06==x)y=SPRINTF([%s%s],@0dfa,@0dfe);else if(0x08==x)y=SPRINTF([%s%s],@0dfa,@0dff);
  $  012.ACC继电器反馈电压                                $    $  V       $    $  ANS005.BYTE004  $  y=x*0.1;
  $  013.IGN(点火)1继电器反馈电压                         $    $  V       $    $  ANS005.BYTE005  $  y=x*0.1;
  $  014.IGN(点火)2继电器反馈电压                         $    $  V       $    $  ANS005.BYTE006  $  y=x*0.1;
  $  015.绿灯输出占空比                                   $    $  %       $    $  ANS005.BYTE007  $  y=x;
  $  016.橙灯输出占空比                                   $    $  %       $    $  ANS005.BYTE008  $  y=x;
  $  017.蜂鸣器控制                                       $    $  %       $    $  ANS005.BYTE009  $  y=x;
  $  018.逻辑输出状态                                     $    $  /       $    $  ANS006.BYTE004  $  if(((x1>>0)&1))y=@001c;else y=@001d;
  $  019.IGN(点火)1输出状态                               $    $  /       $    $  ANS006.BYTE004  $  if(((x1>>1)&1))y=@001c;else y=@001d;
  $  020.IGN(点火)2输出状态                               $    $  /       $    $  ANS006.BYTE004  $  if(((x1>>2)&1))y=@001c;else y=@001d;
  $  021.起动机输出状态                                   $    $  /       $    $  ANS006.BYTE004  $  if(((x1>>3)&1))y=@001c;else y=@001d;
  $  022.无线充电禁止线输出状态                           $    $  /       $    $  ANS007.BYTE004  $  if(((x>>0)&1))y=@001c;else y=@001d;
  $  023.迎宾灯点亮时间                                   $    $  s       $    $  ANS008.BYTE004  $  y=x;
  $  024.钥匙在离开上锁区域的最长检测时间                 $    $  min     $    $  ANS008.BYTE005  $  y=x;
  $  025.钥匙在迎宾灯以及靠近解锁区域的最长检测时间       $    $  min     $    $  ANS008.BYTE006  $  y=x;
  $  026.后备箱自动开启的提示延时时间                     $    $  s       $    $  ANS008.BYTE007  $  y=x;
  $  027.后备箱自动开启提示持续时间                       $    $  ms      $    $  ANS008.BYTE008  $  y=x*200;
  $  028.迎宾灯延时熄灭时间                               $    $  s       $    $  ANS008.BYTE009  $  y=x;
  $  029.离开上锁钥匙丢失检测时间                         $    $  s       $    $  ANS008.BYTE010  $  y=x;
  $  030.钥匙在后备箱自动开启区域的最长检测时间           $    $  min     $    $  ANS008.BYTE011  $  y=x;
  $  031.闭锁后，无钥匙解锁禁止时间参数                   $    $  /       $    $  ANS009.BYTE004  $  y=x;
  $  032.解锁后，无钥匙闭锁禁止时间参数                   $    $  /       $    $  ANS009.BYTE005  $  y=x;
  $  033.车辆输入配置                                     $    $  /       $    $  ANS010.BYTE004  $  if(x1==0x00)y=@0e00;else if(x1==0x01)y=@0e01;else if(x1==0x02)y=@0e02;else y=@0209;
  $  034.最大远程发动机运行时间                           $    $  min     $    $  ANS011.BYTE004  $  y=x;
  $  035.最大远程启动时间                                 $    $  s       $    $  ANS011.BYTE005  $  y=x;
  $  036.最大远程关窗确认时间                             $    $  s       $    $  ANS011.BYTE006  $  y=x;
  $  037.最大远程闭解锁时间                               $    $  s       $    $  ANS011.BYTE007  $  y=x;
  $  038.最大远程开窗确认时间                             $    $  s       $    $  ANS011.BYTE008  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:795 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
