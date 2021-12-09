
    车型ID：3c05

    模拟：协议模拟-->3c05

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~70A

进入命令:

  $~  REQ000:76A 02 10 01 00 00 00 00 00       $~  ANS000:70A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:76A 02 3E 00 00 00 00 00 00       $!  ANS000:70A 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:76A 03 19 02 01 00 00 00 00       $#  ANS000:70A 03 19 02 01 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/04000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:76A 04 14 FF FF FF 00 00 00       $$  ANS000:70A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:76A 03 22 F1 83 00 00 00 00       $%  ANS000:70A 03 22 F1 83 00 00 00 00
  $%  REQ001:76A 03 22 F1 86 00 00 00 00       $%  ANS001:70A 03 22 F1 86 00 00 00 00
  $%  REQ002:76A 03 22 F1 87 00 00 00 00       $%  ANS002:70A 03 22 F1 87 00 00 00 00
  $%  REQ003:76A 03 22 F1 8A 00 00 00 00       $%  ANS003:70A 03 22 F1 8A 00 00 00 00
  $%  REQ004:76A 03 22 F1 8B 00 00 00 00       $%  ANS004:70A 03 22 F1 8B 00 00 00 00
  $%  REQ005:76A 03 22 F1 8C 00 00 00 00       $%  ANS005:70A 03 22 F1 8C 00 00 00 00
  $%  REQ006:76A 03 22 F1 90 00 00 00 00       $%  ANS006:70A 03 22 F1 90 00 00 00 00
  $%  REQ007:76A 03 22 F1 91 00 00 00 00       $%  ANS007:70A 03 22 F1 91 00 00 00 00
  $%  REQ008:76A 03 22 F1 94 00 00 00 00       $%  ANS008:70A 03 22 F1 94 00 00 00 00
  $%  REQ009:76A 03 22 F1 95 00 00 00 00       $%  ANS009:70A 03 22 F1 95 00 00 00 00
  $%  REQ010:76A 03 22 F1 97 00 00 00 00       $%  ANS010:70A 03 22 F1 97 00 00 00 00
  $%  REQ011:76A 03 22 F1 98 00 00 00 00       $%  ANS011:70A 03 22 F1 98 00 00 00 00
  $%  REQ012:76A 03 22 F1 99 00 00 00 00       $%  ANS012:70A 03 22 F1 99 00 00 00 00

  $%  000:电控单元引导加载软件参考号:        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:当前的诊断会话模式:                $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%x],x1);
  $%  002:控制器零件号:                      $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  003:供应商代码:                        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  004:电控单元制造日期:                  $%    $%  ANS004.BYTE004  $%  y=SPRINTF([20%02x%02x%02x],x1,x2,x3);
  $%  005:供应商电控单元序列号:              $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:车辆识别代码:                      $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:电控单元硬件号:                    $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02x%02x%02x%02x%02x],x1,x2,x3,x4,x5);
  $%  008:供应商电控单元软件参考号:          $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:供应商软件版本号:                  $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:电控单元(ECU)系统名称:             $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  011:测试仪序列号:                      $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%x%x%x%x%x%x%x%x%x%x],x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  012:软件刷新日期:                      $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02x%02x%02x],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流
  $  00.数据流
  $  REQ000:76A 03 22 04 03 00 00 00 00       $  ANS000:70A 03 22 04 03 00 00 00 00
  $  REQ001:76A 03 22 04 04 00 00 00 00       $  ANS001:70A 03 22 04 04 00 00 00 00
  $  REQ002:76A 03 22 04 05 00 00 00 00       $  ANS002:70A 03 22 04 05 00 00 00 00
  $  REQ003:76A 03 22 04 06 00 00 00 00       $  ANS003:70A 03 22 04 06 00 00 00 00

  $  000.电动助力转向系统(EPS) 电池电压               $    $  V     $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.电动助力转向系统(EPS) 扭矩传感器T1电压       $    $  V     $    $  ANS001.BYTE004  $  y=x*0.1;
  $  002.电动助力转向系统(EPS) 扭矩传感器T2电压       $    $  V     $    $  ANS002.BYTE004  $  y=x*0.1;
  $  003.电动助力转向系统(EPS) 电机电流               $    $  A     $    $  ANS003.BYTE004  $  y=x*0.5;

  $)  01.刹车防抱死(ABS)_信号
  $  01.刹车防抱死(ABS)_信号
  $  REQ000:76A 03 22 04 01 00 00 00 00       $  ANS000:70A 03 22 04 01 00 00 00 00

  $  000.车速VSO信号               $    $  km/h     $    $  ANS000.BYTE004  $  y=((x1&0x1f)*256+x2)*0.05625;
  $  001.车速VSO信号有效数据       $    $           $    $  ANS000.BYTE005  $  if(((x>>5)&1))y=@001e;else y=@001b;

  $)  02.转角传感器(SAS)_信号
  $  02.转角传感器(SAS)_信号
  $  REQ000:76A 03 22 04 02 00 00 00 00       $  ANS000:70A 03 22 04 02 00 00 00 00

  $  000.转向角传感器(SAS)_转向角                            $    $  deg     $    $  ANS000.BYTE004  $  y=(x1*256+x2)/16-2048;
  $  001.转向角传感器(SAS)_转向角速度的有效数据              $    $          $    $  ANS000.BYTE006  $  if(((x>>0)&1))y=@001e;else y=@001b;
  $  002.转向角传感器(SAS)_转向角度有效数据                  $    $          $    $  ANS000.BYTE006  $  if(((x>>1)&1))y=@001e;else y=@001b;
  $  003.转向角传感器(SAS)_SAS校准                           $    $          $    $  ANS000.BYTE006  $  if(((x>>2)&1))y=@0057;else y=@0058;
  $  004.转向角传感器(SAS)_初始化                            $    $          $    $  ANS000.BYTE006  $  if(((x>>3)&1))y=@0055;else y=@0056;
  $  005.转向角传感器(SAS)_CAN警告                           $    $          $    $  ANS000.BYTE006  $  if(((x>>4)&1))y=@0052;else y=@0053;
  $  006.转向角传感器(SAS)_内部失败                          $    $          $    $  ANS000.BYTE006  $  if(((x>>5)&1))y=@0054;else y=@001f;
  $  007.转向角传感器(SAS)_电池警告                          $    $          $    $  ANS000.BYTE006  $  if(((x>>6)&1))y=@0052;else y=@0053;
  $  008.转向角传感器(SAS)_转向角传感器(SAS)FailureSts       $    $          $    $  ANS000.BYTE006  $  if(((x>>7)&1))y=@001e;else y=@001b;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:76A 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
