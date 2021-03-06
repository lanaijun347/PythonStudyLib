
    车型ID：9d32

    模拟：协议模拟-->9d32

;******************************************************************************************************************************************************

    通讯线: $~02$~10$~500k$~601

进入命令:

  $~  REQ000:681 02 10 03 00 00 00 00 00       $~  ANS000:601 02 10 03 00 00 00 00 00
  $~~ REQ001:681 02 27 01 00 00 00 00 00       $~~ ANS001:601 02 27 01 00 00 00 00 00
  $~~ REQ002:681 06 27 02 00 00 00 00 00       $~~ ANS002:601 06 27 02 00 00 00 00 00

空闲命令:

  $!  REQ000:681 02 3E 00 00 00 00 00 00       $!  ANS000:601 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:681 03 19 02 09 00 00 00 00       $#  ANS000:601 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/1a000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:681 04 14 FF FF FF 00 00 00       $$  ANS000:601 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:681 03 22 F1 87 00 00 00 00       $%  ANS000:601 03 22 F1 87 00 00 00 00
  $%  REQ001:681 03 22 F1 8A 00 00 00 00       $%  ANS001:601 03 22 F1 8A 00 00 00 00
  $%  REQ002:681 03 22 F1 97 00 00 00 00       $%  ANS002:601 03 22 F1 97 00 00 00 00
  $%  REQ003:681 03 22 F1 93 00 00 00 00       $%  ANS003:601 03 22 F1 93 00 00 00 00
  $%  REQ004:681 03 22 F1 95 00 00 00 00       $%  ANS004:601 03 22 F1 95 00 00 00 00
  $%  REQ005:681 03 22 F1 8C 00 00 00 00       $%  ANS005:601 03 22 F1 8C 00 00 00 00
  $%  REQ006:681 03 22 F1 8B 00 00 00 00       $%  ANS006:601 03 22 F1 8B 00 00 00 00
  $%  REQ007:681 03 22 F1 90 00 00 00 00       $%  ANS007:601 03 22 F1 90 00 00 00 00

  $%  000:车辆制造商零部件号:             $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:系统供应商标识器:               $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4);
  $%  002:系统名:                         $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:系统供应商ECU硬件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  004:系统供应商ECU软件版本号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  005:ECU序列号:                      $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  006:ECU制造日期(年/月/日):          $%    $%  ANS006.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  007:VIN码:                          $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:681 03 22 02 02 00 00 00 00       $  ANS000:601 03 22 02 02 00 00 00 00
  $  REQ001:681 03 22 02 03 00 00 00 00       $  ANS001:601 03 22 02 03 00 00 00 00
  $  REQ002:681 03 22 02 15 00 00 00 00       $  ANS002:601 03 22 02 15 00 00 00 00
  $  REQ003:681 03 22 F1 0F 00 00 00 00       $  ANS003:601 03 22 F1 0F 00 00 00 00
  $  REQ004:681 03 22 07 12 00 00 00 00       $  ANS004:601 03 22 07 12 00 00 00 00
  $  REQ005:681 03 22 01 11 00 00 00 00       $  ANS005:601 03 22 01 11 00 00 00 00
  $  REQ006:681 03 22 01 12 00 00 00 00       $  ANS006:601 03 22 01 12 00 00 00 00

  $  000.BCM(车身控制系统)防盗匹配状态       $    $       $    $  ANS000.BYTE004  $  if(x==1) y=@002d;else if(x==2) y=@002e;else y=@0010;
  $  001.防盗密码                            $    $       $    $  ANS001.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  002.天线阈值-内部天线个数               $    $       $    $  ANS002.BYTE004  $  y=x;
  $  003.天线阈值-内部天线1内边界            $    $       $    $  ANS002.BYTE005  $  y=HEX(x1,x2,x3,x4);
  $  004.天线阈值-内部天线1外边界            $    $       $    $  ANS002.BYTE009  $  y=HEX(x1,x2,x3,x4);
  $  005.天线阈值-内部天线2内边界            $    $       $    $  ANS002.BYTE013  $  y=HEX(x1,x2,x3,x4);
  $  006.天线阈值-内部天线2外边界            $    $       $    $  ANS002.BYTE017  $  y=HEX(x1,x2,x3,x4);
  $  007.已匹配钥匙数量                      $    $       $    $  ANS003.BYTE004  $  if(x==0) y=@002f;else if(x==1) y=@0030;else if(x==2) y=@0031;else y=@0010;
  $  008.最后一次解闭锁源                    $    $       $    $  ANS004.BYTE004  $  if(x==0) y=@0032;else if(x==1) y=@0033;else if(x==2) y=@0034;else if(x==4) y=@0035;else if(x==5) y=@0036;else if(x==6) y=@0037;else if(x==0x11) y=@0038;else if(x==0x12) y=@0039;else if(x==14) y=@003a;else if(x==0x15) y=@003b;else if(x==0x17) y=@003c;else if(x==0x18) y=@003d;else if(x==0x19) y=@003e;else if(x==0x1A) y=@003f;else y=@0010;
  $  009.前洗涤开关                          $    $       $    $  ANS005.BYTE004  $  if(((x>>0)&1)) y=@0022;else y=@0023;
  $  010.前雨刮低速                          $    $       $    $  ANS005.BYTE004  $  if(((x>>1)&1)) y=@0022;else y=@0023;
  $  011.前雨刮高速                          $    $       $    $  ANS005.BYTE004  $  if(((x>>2)&1)) y=@0022;else y=@0023;
  $  012.后洗涤开关                          $    $       $    $  ANS005.BYTE004  $  if(((x>>3)&1)) y=@0022;else y=@0023;
  $  013.后雨刮开关                          $    $       $    $  ANS005.BYTE004  $  if(((x>>4)&1)) y=@0022;else y=@0023;
  $  014.后雨刮归位信号                      $    $       $    $  ANS005.BYTE004  $  if(((x>>5)&1)) y=@0022;else y=@0023;
  $  015.前雨刮归位信号                      $    $       $    $  ANS005.BYTE004  $  if(((x>>6)&1)) y=@0022;else y=@0023;
  $  016.前雨刮间歇档位                      $    $       $    $  ANS005.BYTE005  $  if(x==0) y=@0024;else if(x==1) y=@0025;else if(x==2) y=@0026;else if(x==3) y=@0027;else if(x==4) y=@0028;else y=@0010;
  $  017.前雨刮间歇                          $    $       $    $  ANS005.BYTE005  $  if(((x>>3)&1)) y=@0022;else y=@0023;
  $  018.后雾灯开关                          $    $       $    $  ANS005.BYTE006  $  if(((x>>0)&1)) y=@0022;else y=@0023;
  $  019.前雷达开关                          $    $       $    $  ANS005.BYTE006  $  if(((x>>1)&1)) y=@0022;else y=@0023;
  $  020.危险报警开关                        $    $       $    $  ANS005.BYTE006  $  if(((x>>2)&1)) y=@0022;else y=@0023;
  $  021.中控解锁/闭锁                       $    $       $    $  ANS005.BYTE007  $  if(x==0) y=@0023;else y=@0022;
  $  022.后背门解锁开关                      $    $       $    $  ANS005.BYTE007  $  if(((x>>2)&1)) y=@0022;else y=@0023;
  $  023.机械钥匙闭锁/解锁                   $    $       $    $  ANS005.BYTE007  $  if(((x>>3)&1)) y=@0022;else y=@0023;
  $  024.左转向灯开关                        $    $       $    $  ANS005.BYTE008  $  if(((x>>0)&1)) y=@0022;else y=@0023;
  $  025.右转向灯开关                        $    $       $    $  ANS005.BYTE008  $  if(((x>>1)&1)) y=@0022;else y=@0023;
  $  026.近光灯开关                          $    $       $    $  ANS005.BYTE008  $  if(((x>>2)&1)) y=@0022;else y=@0023;
  $  027.位置灯开关                          $    $       $    $  ANS005.BYTE008  $  if(((x>>3)&1)) y=@0022;else y=@0023;
  $  028.远光灯开关                          $    $       $    $  ANS005.BYTE008  $  if(((x>>4)&1)) y=@0022;else y=@0023;
  $  029.超车灯开关                          $    $       $    $  ANS005.BYTE008  $  if(((x>>5)&1)) y=@0022;else y=@0023;
  $  030.车窗禁用开关                        $    $       $    $  ANS005.BYTE009  $  if(((x>>3)&1)) y=@0022;else y=@0023;
  $  031.乘客车窗开关                        $    $       $    $  ANS005.BYTE009  $  if(x==0x00) y=@0029;else if(x==0x10) y=@002a;else if(x==0x20) y=@002b;else y=@002c;
  $  032.左后车窗开关                        $    $       $    $  ANS005.BYTE009  $  if(x==0x00) y=@0029;else if(x==0x40) y=@002a;else if(x==0x80) y=@002b;else y=@002c;
  $  033.右后车窗开关                        $    $       $    $  ANS005.BYTE010  $  if(x==0x00) y=@0029;else if(x==0x10) y=@002a;else if(x==0x02) y=@002b;else y=@002c;
  $  034.驾驶_右后车窗开关                   $    $       $    $  ANS005.BYTE010  $  if(x==0x00) y=@0029;else if(x==0x04) y=@002a;else if(x==0x08) y=@002b;else y=@002c;
  $  035.驾驶_左后车窗开关                   $    $       $    $  ANS005.BYTE010  $  if(x==0x00) y=@0029;else if(x==0x10) y=@002a;else if(x==0x20) y=@002b;else y=@002c;
  $  036.驾驶_乘客车窗开关                   $    $       $    $  ANS005.BYTE010  $  if(x==0x00) y=@0029;else if(x==0x40) y=@002a;else if(x==0x80) y=@002b;else y=@002c;
  $  037.后背门状态开关                      $    $       $    $  ANS005.BYTE011  $  if(((x>>0)&1)) y=@0022;else y=@0023;
  $  038.右后门状态开关                      $    $       $    $  ANS005.BYTE011  $  if(((x>>1)&1)) y=@0022;else y=@0023;
  $  039.左后门状态开关                      $    $       $    $  ANS005.BYTE011  $  if(((x>>2)&1)) y=@0022;else y=@0023;
  $  040.乘客门状态开关                      $    $       $    $  ANS005.BYTE011  $  if(((x>>3)&1)) y=@0022;else y=@0023;
  $  041.驾驶员门状态开关                    $    $       $    $  ANS005.BYTE011  $  if(((x>>4)&1)) y=@0022;else y=@0023;
  $  042.启动停止开关2                       $    $       $    $  ANS006.BYTE004  $  if(x==0) y=@0023;else y=@0022;
  $  043.启动停止开关1                       $    $       $    $  ANS006.BYTE004  $  if(x==0) y=@0023;else y=@0022;
  $  044.驾驶员门把手开关                    $    $       $    $  ANS006.BYTE004  $  if(((x>>4)&1)) y=@0022;else y=@0023;
  $  045.KL15_2_继电器反馈                   $    $       $    $  ANS006.BYTE005  $  if(((x>>1)&1)) y=@0022;else y=@0023;
  $  046.ACC(KL75_继电器反馈)                $    $       $    $  ANS006.BYTE005  $  if(((x>>2)&1)) y=@0022;else y=@0023;
  $  047.IGN1(KL15_1_继电器反馈)             $    $       $    $  ANS006.BYTE005  $  if(((x>>3)&1)) y=@0022;else y=@0023;
  $  048.刹车开关                            $    $       $    $  ANS006.BYTE005  $  if(((x>>5)&1)) y=@0022;else y=@0023;
  $  049.手刹开关输入                        $    $       $    $  ANS006.BYTE006  $  if(((x>>0)&1)) y=@0022;else y=@0023;
  $  050.后视镜折叠/展开开关                 $    $       $    $  ANS006.BYTE006  $  if(((x>>1)&1)) y=@0022;else y=@0023;
  $  051.倒档信号                            $    $       $    $  ANS006.BYTE006  $  if(((x>>2)&1)) y=@0022;else y=@0023;
  $  052.空档开关                            $    $       $    $  ANS006.BYTE006  $  if(((x>>3)&1)) y=@0022;else y=@0023;
  $  053.离合器低位踏板开关                  $    $       $    $  ANS006.BYTE006  $  if(((x>>4)&1)) y=@0022;else y=@0023;
  $  054.后视镜锁止开关                      $    $       $    $  ANS006.BYTE006  $  if(((x>>5)&1)) y=@0022;else y=@0023;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:681 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
