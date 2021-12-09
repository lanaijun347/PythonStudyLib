
    车型ID：2b30

    模拟：协议模拟-->2b30

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~78B

进入命令:

  $~  REQ000:783 02 10 03 00 00 00 00 00       $~  ANS000:78B 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:783 02 3E 00 00 00 00 00 00       $!  ANS000:78B 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:783 03 19 02 01 00 00 00 00       $#  ANS000:78B 03 19 02 01 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/e7000000


  $#  01.读历史故障码
  $#  REQ000:783 03 19 02 08 00 00 00 00       $#  ANS000:78B 03 19 02 08 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/e7000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:783 04 14 FF FF FF 00 00 00       $$  ANS000:78B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:783 03 22 F0 89 00 00 00 00       $%  ANS000:78B 03 22 F0 89 00 00 00 00
  $%  REQ001:783 03 22 F1 84 00 00 00 00       $%  ANS001:78B 03 22 F1 84 00 00 00 00
  $%  REQ002:783 03 22 F1 89 00 00 00 00       $%  ANS002:78B 03 22 F1 89 00 00 00 00
  $%  REQ003:783 03 22 F1 87 00 00 00 00       $%  ANS003:78B 03 22 F1 87 00 00 00 00
  $%  REQ004:783 03 22 F1 8A 00 00 00 00       $%  ANS004:78B 03 22 F1 8A 00 00 00 00
  $%  REQ005:783 03 22 F1 8C 00 00 00 00       $%  ANS005:78B 03 22 F1 8C 00 00 00 00
  $%  REQ006:783 03 22 F1 90 00 00 00 00       $%  ANS006:78B 03 22 F1 90 00 00 00 00
  $%  REQ007:783 03 22 F1 A2 00 00 00 00       $%  ANS007:78B 03 22 F1 A2 00 00 00 00
  $%  REQ008:783 03 22 F1 20 00 00 00 00       $%  ANS008:78B 03 22 F1 20 00 00 00 00
  $%  REQ009:783 03 22 F1 21 00 00 00 00       $%  ANS009:78B 03 22 F1 21 00 00 00 00
  $%  REQ010:783 03 22 F1 22 00 00 00 00       $%  ANS010:78B 03 22 F1 22 00 00 00 00
  $%  REQ011:783 03 22 F0 83 00 00 00 00       $%  ANS011:78B 03 22 F0 83 00 00 00 00
  $%  REQ012:783 03 22 F0 84 00 00 00 00       $%  ANS012:78B 03 22 F0 84 00 00 00 00
  $%  REQ013:783 03 22 F0 85 00 00 00 00       $%  ANS013:78B 03 22 F0 85 00 00 00 00
  $%  REQ014:783 03 22 F1 93 00 00 00 00       $%  ANS014:78B 03 22 F1 93 00 00 00 00
  $%  REQ015:783 03 22 F1 95 00 00 00 00       $%  ANS015:78B 03 22 F1 95 00 00 00 00

  $%  000:国机智骏定义的ECU(电子控制器)硬件版本编号：         $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  001:写入编程日期：                                      $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02u%02u%02u%s],x1+2000,x2,x3,ASCII(x4,x5,x6,x7));
  $%  002:国机智骏定义的ECU(电子控制器)软件版本编号：         $%    $%  ANS002.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  003:ECU(电子控制器)零件号：                             $%    $%  ANS003.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21);
  $%  004:ECU(电子控制器)供应商ID：                           $%    $%  ANS004.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  005:ECU(电子控制器)串码：                               $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%u %s %02d-%02d-%02d],(x1*0x1000000+x2*0x10000+x3*0x100+x4),ASCII(x5,x6,x7,x8,x9,x10),0x7D0+x11,x12,x13);
  $%  006:车辆识别码(VIN码)：                                 $%    $%  ANS006.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  007:整车在国机智骏生产线生产日期：                      $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%x%x%x%x],x1,x2,x3,x4);
  $%  008:网络协议版本信息：                                  $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4);
  $%  009:功能定义版本信息：                                  $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4);
  $%  010:诊断定义版本信息：                                  $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4);
  $%  011:供应商定义的ECU(电子控制器)应用软件版本编号：       $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  012:供应商定义的ECU(电子控制器)底层软件版本编号：       $%    $%  ANS012.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  013:供应商定义的ECU(电子控制器)标定软件版本编号：       $%    $%  ANS013.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  014:供应商定义的ECU(电子控制器)硬件版本编号：           $%    $%  ANS014.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  015:供应商定义的ECU(电子控制器)软件版本编号：           $%    $%  ANS015.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.基本数据流
  $  00.基本数据流
  $  REQ000:783 03 22 40 00 00 00 00 00       $  ANS000:78B 03 22 40 00 00 00 00 00
  $  REQ001:783 03 22 40 01 00 00 00 00       $  ANS001:78B 03 22 40 01 00 00 00 00
  $  REQ002:783 03 22 40 03 00 00 00 00       $  ANS002:78B 03 22 40 03 00 00 00 00
  $  REQ003:783 03 22 40 04 00 00 00 00       $  ANS003:78B 03 22 40 04 00 00 00 00
  $  REQ004:783 03 22 40 05 00 00 00 00       $  ANS004:78B 03 22 40 05 00 00 00 00
  $  REQ005:783 03 22 40 0C 00 00 00 00       $  ANS005:78B 03 22 40 0C 00 00 00 00
  $  REQ006:783 03 22 40 0E 00 00 00 00       $  ANS006:78B 03 22 40 0E 00 00 00 00
  $  REQ007:783 03 22 40 10 00 00 00 00       $  ANS007:78B 03 22 40 10 00 00 00 00
  $  REQ008:783 03 22 40 11 00 00 00 00       $  ANS008:78B 03 22 40 11 00 00 00 00
  $  REQ009:783 03 22 40 12 00 00 00 00       $  ANS009:78B 03 22 40 12 00 00 00 00

  $  000.当前诊断会话模式                            $    $           $    $  ANS000.BYTE004  $  if(x==0x01) y=@0083;else if(x==0x02) y=@0084;else if(x==0x04) y=@0085;else if(x==0x10) y=@0086;else y=@0005;      
  $  001.供应商内部ECU(电子控制器)硬件版本编号       $    $           $    $  ANS001.BYTE004  $  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $  002.电源电压                                    $    $  V        $    $  ANS002.BYTE004  $  y=x*0.1;
  $  003.安全启动/停止车速限制                       $    $  km/h     $    $  ANS003.BYTE004  $  y=SPRINTF([%.0f],((x1*256+x2)*0.05625));
  $  004.ESCL(电子转向驻锁)闭锁车速限制              $    $  km/h     $    $  ANS004.BYTE004  $  y=SPRINTF([%.0f],((x1*256+x2)*0.05625));
  $  005.智能钥匙电池电压状态                        $    $           $    $  ANS005.BYTE004  $  if(((x>>0)&1)) y=@0081;else y=@0082;     
  $  006.ESCL(电子转向驻锁)认证结果                  $    $           $    $  ANS006.BYTE004  $  if(x==0x00) y=@0092;else if(x==0x01) y=@0093;else if(x==0x02) y=@0075;else y=@0012;      
  $  007.最新的RKE(遥控无钥匙进入)命令               $    $           $    $  ANS007.BYTE004  $  switxh(x) 0:y=@008b;1:y=@008c;2:y=@008d;3:y=@008e;4:y=@008f;5:y=@0090;6:y=@0091;default:y=@0012;    
  $  008.当前存储的智能钥匙数                        $    $           $    $  ANS008.BYTE005  $  y=x;
  $  009.最后收到的智能钥匙命令                      $    $           $    $  ANS009.BYTE005  $  switxh(x) 0:y=@0094;1:y=@007d;2:y=@007e;3:y=@0095;4:y=@0096;5:y=@0097;6:y=@0098;7:y=@0099;8:y=@009a;9:y=@009b;10:y=@009c;default:y=@0012;    

  $)  01.PEPS(无钥匙进入及一键启动系统)状态
  $  01.PEPS(无钥匙进入及一键启动系统)状态
  $  REQ000:783 03 22 40 06 00 00 00 00       $  ANS000:78B 03 22 40 06 00 00 00 00

  $  000.PEPS(无钥匙进入及一键启动系统)锁定状态       $    $       $    $  ANS000.BYTE004  $  if(((x>>7)&1))y=@007d;else y=@007e;
  $  001.车辆识别码(VIN码)                            $    $       $    $  ANS000.BYTE004  $  if(((x>>6)&1))y=@0087;else y=@0088;
  $  002.PIN写入状态                                  $    $       $    $  ANS000.BYTE004  $  if(((x>>5)&1))y=@0087;else y=@0088;
  $  003.ESK(电子转向管柱锁密钥)生成状态              $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@0089;else y=@008a;
  $  004.TSK(钥匙密钥)生成状态                        $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@0089;else y=@008a;
  $  005.VSK(整车控制器密钥)生成状态                  $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@0089;else y=@008a;
  $  006.锁定状态                                     $    $       $    $  ANS000.BYTE005  $  if(((x>>7)&1))y=@009f;else y=@00a0;
  $  007.钥匙4学习状态                                $    $       $    $  ANS000.BYTE005  $  if(((x>>3)&1))y=@009d;else y=@009e;
  $  008.ESCL(电子转向驻锁)学习状态                   $    $       $    $  ANS000.BYTE005  $  if(((x>>2)&1))y=@009d;else y=@009e;
  $  009.钥匙2学习状态                                $    $       $    $  ANS000.BYTE005  $  if(((x>>1)&1))y=@009d;else y=@009e;
  $  010.钥匙1学习状态                                $    $       $    $  ANS000.BYTE005  $  if(((x>>0)&1))y=@009d;else y=@009e;

  $)  02.PEPS(无钥匙进入及一键启动系统)启动开关状态
  $  02.PEPS(无钥匙进入及一键启动系统)启动开关状态
  $  REQ000:783 03 22 40 09 00 00 00 00       $  ANS000:78B 03 22 40 09 00 00 00 00

  $  000.启动开关2(SSB_SW2)       $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@003c;else y=@003d;
  $  001.启动开关1(SSB_SW1)       $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@003c;else y=@003d;
  $  002.背景灯(预留)             $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@003c;else y=@003d;
  $  003.红灯                     $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@003c;else y=@003d;
  $  004.绿灯                     $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@003c;else y=@003d;

  $)  03.门锁状态
  $  03.门锁状态
  $  REQ000:783 03 22 40 0A 00 00 00 00       $  ANS000:78B 03 22 40 0A 00 00 00 00

  $  000.行李箱门(预留)       $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@007d;else y=@007e;
  $  001.右后门               $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@007d;else y=@007e;
  $  002.左后门               $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@007d;else y=@007e;
  $  003.右前门               $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@007d;else y=@007e;
  $  004.左前门               $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@007d;else y=@007e;

  $)  04.门状态
  $  04.门状态
  $  REQ000:783 03 22 40 08 00 00 00 00       $  ANS000:78B 03 22 40 08 00 00 00 00

  $  000.行李箱门       $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@004f;else y=@0026;
  $  001.左后门         $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@004f;else y=@0026;
  $  002.右后门         $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@004f;else y=@0026;
  $  003.右前门         $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@004f;else y=@0026;
  $  004.左前门         $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@004f;else y=@0026;

  $)  05.备份电源继电器驱动电路故障状态
  $  05.备份电源继电器驱动电路故障状态
  $  REQ000:783 03 22 40 14 00 00 00 00       $  ANS000:78B 03 22 40 14 00 00 00 00

  $  000.启动(ST)继电器              $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@007f;else y=@0080;
  $  001.点火开关2(IGN2)继电器       $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@007f;else y=@0080;
  $  002.点火开关1(IGN1)继电器       $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@007f;else y=@0080;
  $  003.弱电(ACC)继电器             $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@007f;else y=@0080;

  $)  06.输入1状态
  $  06.输入1状态
  $  REQ000:783 03 22 40 15 00 00 00 00       $  ANS000:78B 03 22 40 15 00 00 00 00

  $  000.启动(ST)反馈                       $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@003c;else y=@003d;
  $  001.点火开关2(IGN2)反馈                $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@003c;else y=@003d;
  $  002.点火开关1(IGN1)反馈                $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@003c;else y=@003d;
  $  003.弱电(ACC)反馈                      $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@003c;else y=@003d;
  $  004.电子转向驻锁_解锁_配置(预留)       $    $       $    $  ANS000.BYTE005  $  if(((x>>4)&1))y=@003c;else y=@003d;
  $  005.制动2                              $    $       $    $  ANS000.BYTE005  $  if(((x>>3)&1))y=@003c;else y=@003d;
  $  006.制动1                              $    $       $    $  ANS000.BYTE005  $  if(((x>>2)&1))y=@003c;else y=@003d;
  $  007.启动开关2(SSB_SW2)                 $    $       $    $  ANS000.BYTE005  $  if(((x>>1)&1))y=@003c;else y=@003d;
  $  008.启动开关1(SSB_SW1)                 $    $       $    $  ANS000.BYTE005  $  if(((x>>0)&1))y=@003c;else y=@003d;

  $)  07.输入2状态
  $  07.输入2状态
  $  REQ000:783 03 22 40 16 00 00 00 00       $  ANS000:78B 03 22 40 16 00 00 00 00

  $  000.N档(2)(预留)                   $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@003c;else y=@003d;
  $  001.N档(1)(预留)                   $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@003c;else y=@003d;
  $  002.P档(2)(预留)                   $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@003c;else y=@003d;
  $  003.P档(1)(预留)                   $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@003c;else y=@003d;
  $  004.手动驻车(HandPark)(预留)       $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@003c;else y=@003d;
  $  005.左前启动(LeftFront_SW)         $    $       $    $  ANS000.BYTE005  $  if(((x>>1)&1))y=@003c;else y=@003d;
  $  006.右前启动(RightFront_SW)        $    $       $    $  ANS000.BYTE005  $  if(((x>>0)&1))y=@003c;else y=@003d;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:783 30 00 0A 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
