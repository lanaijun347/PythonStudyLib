
    车型ID：0006

    模拟：协议模拟-->0006

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~73C

进入命令:

  $~  REQ000:734 02 10 01 00 00 00 00 00       $~  ANS000:73C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:734 02 3E 00 00 00 00 00 00       $!  ANS000:73C 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:734 03 19 02 01 00 00 00 00       $#  ANS000:73C 03 19 02 01 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/05000000


  $#  01.读历史故障码
  $#  REQ000:734 03 19 02 08 00 00 00 00       $#  ANS000:73C 03 19 02 08 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/05000000


  $#  02.读冻结帧
  $#  REQ000:734 03 19 02 09 00 00 00 00       $#  ANS000:73C 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/05000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:734 04 14 FF FF FF 00 00 00       $$  ANS000:73C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:734 03 22 F0 89 00 00 00 00       $%  ANS000:73C 03 22 F0 89 00 00 00 00
  $%  REQ001:734 03 22 F0 91 00 00 00 00       $%  ANS001:73C 03 22 F0 91 00 00 00 00
  $%  REQ002:734 03 22 F1 87 00 00 00 00       $%  ANS002:73C 03 22 F1 87 00 00 00 00
  $%  REQ003:734 03 22 F1 8A 00 00 00 00       $%  ANS003:73C 03 22 F1 8A 00 00 00 00
  $%  REQ004:734 03 22 F1 90 00 00 00 00       $%  ANS004:73C 03 22 F1 90 00 00 00 00
  $%  REQ005:734 03 22 F1 93 00 00 00 00       $%  ANS005:73C 03 22 F1 93 00 00 00 00
  $%  REQ006:734 03 22 F1 95 00 00 00 00       $%  ANS006:73C 03 22 F1 95 00 00 00 00
  $%  REQ007:734 03 22 F1 97 00 00 00 00       $%  ANS007:73C 03 22 F1 97 00 00 00 00
  $%  REQ008:734 03 22 F1 F0 00 00 00 00       $%  ANS008:73C 03 22 F1 F0 00 00 00 00
  $%  REQ009:734 03 22 F1 F1 00 00 00 00       $%  ANS009:73C 03 22 F1 F1 00 00 00 00
  $%  REQ010:734 03 22 F1 F2 00 00 00 00       $%  ANS010:73C 03 22 F1 F2 00 00 00 00
  $%  REQ011:734 03 22 F1 F3 00 00 00 00       $%  ANS011:73C 03 22 F1 F3 00 00 00 00

  $%  000:新能源硬件版本:                 $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  001:新能源软件版本:                 $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  002:零件号:                         $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  003:供应商代码:                     $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  004:VIN码:                          $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  005:ECU硬件版本号:                  $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:ECU软件版本号:                  $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $%  007:系统名称:                       $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:本机号:                         $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13);
  $%  009:SIM(用户身份识别卡)串号:        $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $%  010:无线通信IP地址:                 $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20);
  $%  011:无线通信端口:                   $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:734 03 22 F1 F4 00 00 00 00       $  ANS000:73C 03 22 F1 F4 00 00 00 00

  $  000.公网测试                          $    $          $    $  ANS000.BYTE004  $  if(((x1>>0)&1)) y=@0039;else y=@003a;
  $  001.专网测试                          $    $          $    $  ANS000.BYTE004  $  if(((x1>>1)&1)) y=@0039;else y=@003a;
  $  002.定位测试结果                      $    $          $    $  ANS000.BYTE004  $  if(((x1>>2)&1)) y=@0039;else y=@003a;
  $  003.EMMC状态                          $    $          $    $  ANS000.BYTE004  $  if(((x1>>3)&1)) y=@0037;else y=@0038;
  $  004.CAN2 通信测试结果                 $    $          $    $  ANS000.BYTE005  $  if(((x1>>0)&1)) y=@0039;else y=@003a;
  $  005.CAN1 通信测试结果                 $    $          $    $  ANS000.BYTE005  $  if(((x1>>1)&1)) y=@0039;else y=@003a;
  $  006.SIM(用户身份识别卡)卡状态         $    $          $    $  ANS000.BYTE005  $  if(((x1>>2)&1)) y=@0037;else y=@0038;
  $  007.GPS(全球定位系统)天线短路         $    $          $    $  ANS000.BYTE005  $  if(((x1>>3)&1)) y=@0037;else y=@0038;
  $  008.GPS(全球定位系统)天线开路         $    $          $    $  ANS000.BYTE005  $  if(((x1>>4)&1)) y=@0037;else y=@0038;
  $  009.备用电池故障                      $    $          $    $  ANS000.BYTE005  $  if(((x1>>5)&1)) y=@0037;else y=@0038;
  $  010.Gsensor(重力传感器)故障           $    $          $    $  ANS000.BYTE005  $  if(((x1>>6)&1)) y=@0037;else y=@0038;
  $  011.主电状态                          $    $          $    $  ANS000.BYTE005  $  if(((x1>>7)&1)) y=@0037;else y=@0038;
  $  012.GPS(全球定位系统)可用卫星数       $    $  个      $    $  ANS000.BYTE006  $  y = SPRINTF([%d], x1);
  $  013.无线信号强度                      $    $  dBm     $    $  ANS000.BYTE007  $  y = SPRINTF([%d], x1);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:734 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
