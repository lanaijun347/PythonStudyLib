
    车型ID：2b25

    模拟：协议模拟-->2b25

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~789

进入命令:

  $~  REQ000:781 02 10 01 00 00 00 00 00       $~  ANS000:789 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:781 02 3E 00 00 00 00 00 00       $!  ANS000:789 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:781 03 19 02 01 00 00 00 00       $#  ANS000:789 03 19 02 01 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/dc000000


  $#  01.读历史故障码
  $#  REQ000:781 03 19 02 08 00 00 00 00       $#  ANS000:789 03 19 02 08 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/dc000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:781 04 14 FF FF FF 00 00 00       $$  ANS000:789 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:781 03 22 F0 89 00 00 00 00       $%  ANS000:789 03 22 F0 89 00 00 00 00
  $%  REQ001:781 03 22 F1 84 00 00 00 00       $%  ANS001:789 03 22 F1 84 00 00 00 00
  $%  REQ002:781 03 22 F1 89 00 00 00 00       $%  ANS002:789 03 22 F1 89 00 00 00 00
  $%  REQ003:781 03 22 F1 87 00 00 00 00       $%  ANS003:789 03 22 F1 87 00 00 00 00
  $%  REQ004:781 03 22 F1 8A 00 00 00 00       $%  ANS004:789 03 22 F1 8A 00 00 00 00
  $%  REQ005:781 03 22 F1 8C 00 00 00 00       $%  ANS005:789 03 22 F1 8C 00 00 00 00
  $%  REQ006:781 03 22 F1 90 00 00 00 00       $%  ANS006:789 03 22 F1 90 00 00 00 00
  $%  REQ007:781 03 22 F1 A2 00 00 00 00       $%  ANS007:789 03 22 F1 A2 00 00 00 00
  $%  REQ008:781 03 22 F0 83 00 00 00 00       $%  ANS008:789 03 22 F0 83 00 00 00 00
  $%  REQ009:781 03 22 F0 84 00 00 00 00       $%  ANS009:789 03 22 F0 84 00 00 00 00
  $%  REQ010:781 03 22 F1 93 00 00 00 00       $%  ANS010:789 03 22 F1 93 00 00 00 00

  $%  000:国机智骏定义的ECU(电子控制器)硬件版本编号:          $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  001:写入编程日期:                                       $%    $%  ANS001.BYTE004  $%  Y=SPRINTF([20%02d%02d%02d %c%c%c%c],x1,x2,x3,x4,x5,x6,x7);
  $%  002:国机智骏定义的ECU(电子控制器)软件版本编号:          $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  003:ECU(电子控制器)零件号:                              $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);
  $%  004:ECU(电子控制器)供应商ID:                            $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  005:ECU(电子控制器)串码:                                $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%u %s %02d-%02d-%02d],(x1*0x1000000+x2*0x10000+x3*0x100+x4),ASCII(x5,x6,x7,x8,x9,x10),0x7D0+x11,x12,x13);
  $%  006:车辆识别码(VIN码):                                  $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:整车在国机智骏生产线生产日期:                       $%    $%  ANS007.BYTE004  $%  Y=SPRINTF([%02d%02d%02d%02d],x1,x2,x3,x4);
  $%  008:供应商定义的ECU(电子控制器)应用软件版本编号:        $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  009:供应商定义的ECU(电子控制器)底层软件版本编号:        $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  010:供应商定义的ECU(电子控制器)硬件版本编号:            $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:781 03 22 32 00 00 00 00 00       $  ANS000:789 03 22 32 00 00 00 00 00
  $  REQ001:781 03 22 32 01 00 00 00 00       $  ANS001:789 03 22 32 01 00 00 00 00
  $  REQ002:781 03 22 32 02 00 00 00 00       $  ANS002:789 03 22 32 02 00 00 00 00
  $  REQ003:781 03 22 32 03 00 00 00 00       $  ANS003:789 03 22 32 03 00 00 00 00
  $  REQ004:781 03 22 32 05 00 00 00 00       $  ANS004:789 03 22 32 05 00 00 00 00

  $  000.里程表                      $    $  km     $    $  ANS000.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  001.ODO(里程表)备份计数器       $    $         $    $  ANS001.BYTE004  $  y=x*0.1;
  $  002.保养里程                    $    $  km     $    $  ANS002.BYTE004  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  003.蓄电池电压                  $    $  V      $    $  ANS003.BYTE004  $  y=x*0.1;
  $  004.制动等级状态                $    $         $    $  ANS004.BYTE004  $  if(((x>>0)&1)==0) y=@00c9;else y=@006a;
  $  005.雷达开关状态                $    $         $    $  ANS004.BYTE004  $  if(((x>>1)&1)==0) y=@00c9;else y=@006a;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:781 30 00 0A 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
