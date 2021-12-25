
    车型ID：09b9

    模拟：协议模拟-->09b9

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~799

进入命令:

  $~  REQ000:791 02 10 01 00 00 00 00 00       $~  ANS000:799 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:791 02 3E 00 00 00 00 00 00       $!  ANS000:799 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:791 03 19 02 09 00 00 00 00       $#  ANS000:799 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/95000000


  $#  01.读故障码库
  $#  REQ000:791 02 19 0A 00 00 00 00 00       $#  ANS000:799 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/95000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:791 04 14 FF FF FF 00 00 00       $$  ANS000:799 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:791 03 22 F1 12 00 00 00 00       $%  ANS000:799 03 22 F1 12 00 00 00 00
  $%  REQ001:791 03 22 F1 80 00 00 00 00       $%  ANS001:799 03 22 F1 80 00 00 00 00
  $%  REQ002:791 03 22 F1 87 00 00 00 00       $%  ANS002:799 03 22 F1 87 00 00 00 00
  $%  REQ003:791 03 22 F1 8A 00 00 00 00       $%  ANS003:799 03 22 F1 8A 00 00 00 00
  $%  REQ004:791 03 22 F1 8B 00 00 00 00       $%  ANS004:799 03 22 F1 8B 00 00 00 00
  $%  REQ005:791 03 22 F1 8C 00 00 00 00       $%  ANS005:799 03 22 F1 8C 00 00 00 00
  $%  REQ006:791 03 22 F1 90 00 00 00 00       $%  ANS006:799 03 22 F1 90 00 00 00 00
  $%  REQ007:791 03 22 F1 93 00 00 00 00       $%  ANS007:799 03 22 F1 93 00 00 00 00
  $%  REQ008:791 03 22 F1 95 00 00 00 00       $%  ANS008:799 03 22 F1 95 00 00 00 00
  $%  REQ009:791 03 22 F1 98 00 00 00 00       $%  ANS009:799 03 22 F1 98 00 00 00 00
  $%  REQ010:791 03 22 F1 99 00 00 00 00       $%  ANS010:799 03 22 F1 99 00 00 00 00
  $%  REQ011:791 03 22 F1 9D 00 00 00 00       $%  ANS011:799 03 22 F1 9D 00 00 00 00
  $%  REQ012:791 03 22 F1 82 00 00 00 00       $%  ANS012:799 03 22 F1 82 00 00 00 00

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
  $  REQ000:791 03 22 DF 00 00 00 00 00       $  ANS000:799 03 22 DF 00 00 00 00 00
  $  REQ001:791 03 22 DF 01 00 00 00 00       $  ANS001:799 03 22 DF 01 00 00 00 00
  $  REQ002:791 03 22 34 02 00 00 00 00       $  ANS002:799 03 22 34 02 00 00 00 00
  $  REQ003:791 03 22 34 39 00 00 00 00       $  ANS003:799 03 22 34 39 00 00 00 00
  $  REQ004:791 03 22 34 3D 00 00 00 00       $  ANS004:799 03 22 34 3D 00 00 00 00
  $  REQ005:791 03 22 34 3E 00 00 00 00       $  ANS005:799 03 22 34 3E 00 00 00 00
  $  REQ006:791 03 22 34 3F 00 00 00 00       $  ANS006:799 03 22 34 3F 00 00 00 00

  $  000.ECU(电子控制器)电源电压       $    $  V        $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.车速                          $    $  km/h     $    $  ANS001.BYTE004  $  y=INT((x1*0x100+x2)*0.05625);
  $  002.控制器温度                    $    $  degC     $    $  ANS002.BYTE004  $  y=x-50;
  $  003.当前校准状态                  $    $  /        $    $  ANS003.BYTE004  $  if(x==0x00) y=@0b0c; else if(x==0x01) y=@0b05; else if(x==0x02) y=@0b0d;
  $  004.非易失存储器                  $    $  /        $    $  ANS004.BYTE004  $  strcat:if(((x>>0)&1)) y=@1108;if(((x>>1)&1)) y=@1109;
  $  005.内部硬件错误                  $    $  /        $    $  ANS005.BYTE004  $  strcat:if(((x>>0)&1)) y=@110a;if(((x>>1)&1)) y=@110b;if(((x>>2)&1)) y=@110c;
  $  006.传感器控制状态                $    $  /        $    $  ANS006.BYTE004  $  strcat:if(((x>>0)&1)) y=@0318;if(((x>>1)&1)) y=@0b0c;if(((x>>2)&1)) y=@0b04;if(((x>>3)&1)) y=@0b05;if(((x>>4)&1)) y=@1107;if(((x>>5)&1)) y=@0014;

  $)  01.校准计数器
  $  01.校准计数器
  $  REQ000:791 03 22 34 3A 00 00 00 00       $  ANS000:799 03 22 34 3A 00 00 00 00

  $  000.下线校准启动（从NVM(非易失性存储器)清除到现在）       $    $  /     $    $  ANS000.BYTE004  $  y=x;
  $  001.下线校准成功（从NVM(非易失性存储器)清除到现在）       $    $  /     $    $  ANS000.BYTE005  $  y=x;
  $  002.服务校准启动（从NVM(非易失性存储器)清除到现在）       $    $  /     $    $  ANS000.BYTE006  $  y=x;
  $  003.服务校准成功（从NVM(非易失性存储器)清除到现在）       $    $  /     $    $  ANS000.BYTE007  $  y=x;

  $)  02.传感器校准
  $  02.传感器校准
  $  REQ000:791 03 22 34 3B 00 00 00 00       $  ANS000:799 03 22 34 3B 00 00 00 00

  $  000.当前仰角值(正常值范围±4)         $    $  deg     $    $  ANS000.BYTE006  $  FLOAT(x1,x2,x3,x4);
  $  001.当前方位角值(正常值范围±6)       $    $  deg     $    $  ANS000.BYTE010  $  FLOAT(x1,x2,x3,x4);
  $  002.下线仰角值(正常值范围±4)         $    $  deg     $    $  ANS000.BYTE014  $  FLOAT(x1,x2,x3,x4);
  $  003.下线方位角(正常值范围±6)         $    $  deg     $    $  ANS000.BYTE018  $  FLOAT(x1,x2,x3,x4);
  $  004.服务仰角值(正常值范围±4)         $    $  deg     $    $  ANS000.BYTE022  $  FLOAT(x1,x2,x3,x4);
  $  005.服务方位角值(正常值范围±6)       $    $  deg     $    $  ANS000.BYTE026  $  FLOAT(x1,x2,x3,x4);

  $)  03.服务校准失败
  $  03.服务校准失败
  $  REQ000:791 03 22 34 3C 00 00 00 00       $  ANS000:799 03 22 34 3C 00 00 00 00

  $  000.距右边太远错误       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@001c; else y=@07dc;
  $  001.距左边太远错误       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>5)&1)) y=@001c; else y=@07dc;
  $  002.太高错误             $    $  /     $    $  ANS000.BYTE004  $  if(((x>>6)&1)) y=@001c; else y=@07dc;
  $  003.太低错误             $    $  /     $    $  ANS000.BYTE004  $  if(((x>>7)&1)) y=@001c; else y=@07dc;

  $)  04.YRS(组合传感器)无效数据状态
  $  04.YRS(组合传感器)无效数据状态
  $  REQ000:791 03 22 34 40 00 00 00 00       $  ANS000:799 03 22 34 40 00 00 00 00

  $  000.YRS(偏航率传感器) 1       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@1117; else y=@1118;
  $  001.YRS(偏航率传感器) 2       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@1117; else y=@1118;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:791 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:791 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
