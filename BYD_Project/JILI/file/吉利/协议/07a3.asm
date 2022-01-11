
    车型ID：07a3

    模拟：协议模拟-->07a3

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~7C9

进入命令:

  $~  REQ000:7C1 02 10 01 00 00 00 00 00       $~  ANS000:7C9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7C1 02 3E 00 00 00 00 00 00       $!  ANS000:7C9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:7C1 03 19 02 09 00 00 00 00       $#  ANS000:7C9 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+(x3<<0);

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/5b000000


  $#  01.读故障码库
  $#  REQ000:7C1 02 19 0A 00 00 00 00 00       $#  ANS000:7C9 02 19 0A 00 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+(x3<<0);

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/5b000000


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

  $$  REQ000:7C1 04 14 FF FF FF 00 00 00       $$  ANS000:7C9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7C1 03 22 F1 12 00 00 00 00       $%  ANS000:7C9 03 22 F1 12 00 00 00 00
  $%  REQ001:7C1 03 22 F1 87 00 00 00 00       $%  ANS001:7C9 03 22 F1 87 00 00 00 00
  $%  REQ002:7C1 03 22 F1 89 00 00 00 00       $%  ANS002:7C9 03 22 F1 89 00 00 00 00
  $%  REQ003:7C1 03 22 F1 8A 00 00 00 00       $%  ANS003:7C9 03 22 F1 8A 00 00 00 00
  $%  REQ004:7C1 03 22 F1 8B 00 00 00 00       $%  ANS004:7C9 03 22 F1 8B 00 00 00 00
  $%  REQ005:7C1 03 22 F1 8C 00 00 00 00       $%  ANS005:7C9 03 22 F1 8C 00 00 00 00
  $%  REQ006:7C1 03 22 F1 90 00 00 00 00       $%  ANS006:7C9 03 22 F1 90 00 00 00 00
  $%  REQ007:7C1 03 22 F1 93 00 00 00 00       $%  ANS007:7C9 03 22 F1 93 00 00 00 00
  $%  REQ008:7C1 03 22 F1 95 00 00 00 00       $%  ANS008:7C9 03 22 F1 95 00 00 00 00
  $%  REQ009:7C1 03 22 F1 9D 00 00 00 00       $%  ANS009:7C9 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                      $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:               $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                    $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:       $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:         $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号(VIN码):             $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件号:         $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件号:         $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:       $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7C1 03 22 F1 10 00 00 00 00       $  ANS000:7C9 03 22 F1 10 00 00 00 00
  $  REQ001:7C1 03 22 F1 01 00 00 00 00       $  ANS001:7C9 03 22 F1 01 00 00 00 00
  $  REQ002:7C1 03 22 68 1E 00 00 00 00       $  ANS002:7C9 03 22 68 1E 00 00 00 00
  $  REQ003:7C1 03 22 67 00 00 00 00 00       $  ANS003:7C9 03 22 67 00 00 00 00 00
  $  REQ004:7C1 03 22 67 01 00 00 00 00       $  ANS004:7C9 03 22 67 01 00 00 00 00
  $  REQ005:7C1 03 22 67 02 00 00 00 00       $  ANS005:7C9 03 22 67 02 00 00 00 00
  $  REQ006:7C1 03 22 67 04 00 00 00 00       $  ANS006:7C9 03 22 67 04 00 00 00 00
  $  REQ007:7C1 03 22 67 05 00 00 00 00       $  ANS007:7C9 03 22 67 05 00 00 00 00
  $  REQ008:7C1 03 22 67 07 00 00 00 00       $  ANS008:7C9 03 22 67 07 00 00 00 00
  $  REQ009:7C1 03 22 67 08 00 00 00 00       $  ANS009:7C9 03 22 67 08 00 00 00 00
  $  REQ010:7C1 03 22 67 09 00 00 00 00       $  ANS010:7C9 03 22 67 09 00 00 00 00
  $  REQ011:7C1 03 22 67 0A 00 00 00 00       $  ANS011:7C9 03 22 67 0A 00 00 00 00
  $  REQ012:7C1 03 22 67 0B 00 00 00 00       $  ANS012:7C9 03 22 67 0B 00 00 00 00
  $  REQ013:7C1 03 22 67 0C 00 00 00 00       $  ANS013:7C9 03 22 67 0C 00 00 00 00
  $  REQ014:7C1 03 22 67 0D 00 00 00 00       $  ANS014:7C9 03 22 67 0D 00 00 00 00
  $  REQ015:7C1 03 22 67 0E 00 00 00 00       $  ANS015:7C9 03 22 67 0E 00 00 00 00

  $  000.网络拓扑配置                       $    $  /        $    $  ANS000.BYTE004  $  HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $  001.功能配置字数据                     $    $  /        $    $  ANS001.BYTE004  $  HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $  002.PKI密码写入状态                    $    $  /        $    $  ANS002.BYTE004  $  if(x==0) y=@0241; else if(x==1) y=@0242; else y=@023f;
  $  003.源模式                             $    $  Step     $    $  ANS003.BYTE004  $  if(x<=7) y=string(0x07,0x92,0x00,(0x01+x)); else y=@023e; else y=@023f;
  $  004.收音机频率                         $    $  KHz      $    $  ANS004.BYTE004  $  y=(x1<<16)+(x2<<8)+x3;
  $  005.媒体音量                           $    $  Step     $    $  ANS005.BYTE004  $  y=x;
  $  006.蓝牙MAC码                          $    $  /        $    $  ANS006.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $  007.当前选中音频源的音频播放总数       $    $  /        $    $  ANS007.BYTE004  $  y=(x1<<8)+x2;
  $  008.LCD背光亮度值                      $    $  ％       $    $  ANS008.BYTE004  $  y=x;
  $  009.收音机信号强度                     $    $  db       $    $  ANS009.BYTE004  $  y=x;
  $  010.上网状态                           $    $  /        $    $  ANS010.BYTE004  $  if(x==0) y=@01c3; else if(x==1) y=@0240; else y=@0008;
  $  011.低音部梯级                         $    $  Step     $    $  ANS011.BYTE004  $  y=x-9;
  $  012.中音部梯级                         $    $  Step     $    $  ANS012.BYTE004  $  y=x-9;
  $  013.高音部梯级                         $    $  Step     $    $  ANS013.BYTE004  $  y=x-9;
  $  014.平衡器梯级                         $    $  Step     $    $  ANS014.BYTE004  $  y=x-9;
  $  015.衰减阶梯                           $    $  Step     $    $  ANS015.BYTE004  $  y=x-9;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7C1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
