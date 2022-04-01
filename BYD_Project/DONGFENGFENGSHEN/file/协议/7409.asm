
    车型ID：7409

    模拟：协议模拟-->7409

;******************************************************************************************************************************************************

    通讯线: $~03$~08$~500k$~76E

进入命令:

  $~  REQ000:766 02 10 01 00 00 00 00 00       $~  ANS000:76E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:766 02 3E 00 00 00 00 00 00       $!  ANS000:76E 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:766 03 19 02 09 00 00 00 00       $#  ANS000:76E 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/28000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:766 04 14 FF FF FF 00 00 00       $$  ANS000:76E 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:766 03 22 F1 89 00 00 00 00       $%  ANS000:76E 03 22 F1 89 00 00 00 00
  $%  REQ001:766 03 22 F1 79 00 00 00 00       $%  ANS001:76E 03 22 F1 79 00 00 00 00
  $%  REQ002:766 03 22 F1 99 00 00 00 00       $%  ANS002:76E 03 22 F1 99 00 00 00 00
  $%  REQ003:766 03 22 F1 8A 00 00 00 00       $%  ANS003:76E 03 22 F1 8A 00 00 00 00
  $%  REQ004:766 03 22 F1 87 00 00 00 00       $%  ANS004:76E 03 22 F1 87 00 00 00 00
  $%  REQ005:766 03 22 F1 97 00 00 00 00       $%  ANS005:76E 03 22 F1 97 00 00 00 00
  $%  REQ006:766 03 22 F1 8C 00 00 00 00       $%  ANS006:76E 03 22 F1 8C 00 00 00 00
  $%  REQ007:766 03 22 F1 A1 00 00 00 00       $%  ANS007:76E 03 22 F1 A1 00 00 00 00
  $%  REQ008:766 03 22 F1 90 00 00 00 00       $%  ANS008:76E 03 22 F1 90 00 00 00 00
  $%  REQ009:766 03 22 F1 8B 00 00 00 00       $%  ANS009:76E 03 22 F1 8B 00 00 00 00

  $%  000:OEM定义的软件版本:       $%    $%  ANS000.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4)&0x0f,(x1&0x0F),x2);
  $%  001:OEM定义的硬件版本:       $%    $%  ANS001.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4)&0x0f,(x1&0x0F),x2);
  $%  002:软件发布日期:            $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  003:供应商代码:              $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:OEM零部件号:             $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  005:系统名称:                $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  006:TBOX序列号:              $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  007:维修店编码:              $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  008:维修时间:                $%    $%  ANS007.BYTE009  $%  HEX(x1,x2,x3,x4);
  $%  009:维修时的总里程:          $%    $%  ANS007.BYTE013  $%  y=(x1<<16)+(x2<<8)+x3;
  $%  010:VIN码:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  011:生产日期:                $%    $%  ANS009.BYTE004  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.动态数据流
  $  00.动态数据流
  $  REQ000:766 03 22 10 00 00 00 00 00       $  ANS000:76E 03 22 10 00 00 00 00 00
  $  REQ001:766 03 22 10 07 00 00 00 00       $  ANS001:76E 03 22 10 07 00 00 00 00
  $  REQ002:766 03 22 10 08 00 00 00 00       $  ANS002:76E 03 22 10 08 00 00 00 00
  $  REQ003:766 03 22 10 0B 00 00 00 00       $  ANS003:76E 03 22 10 0B 00 00 00 00
  $  REQ004:766 03 22 10 0C 00 00 00 00       $  ANS004:76E 03 22 10 0C 00 00 00 00
  $  REQ005:766 03 22 10 0D 00 00 00 00       $  ANS005:76E 03 22 10 0D 00 00 00 00
  $  REQ006:766 03 22 10 0E 00 00 00 00       $  ANS006:76E 03 22 10 0E 00 00 00 00
  $  REQ007:766 03 22 10 0F 00 00 00 00       $  ANS007:76E 03 22 10 0F 00 00 00 00
  $  REQ008:766 03 22 10 10 00 00 00 00       $  ANS008:76E 03 22 10 10 00 00 00 00
  $  REQ009:766 03 22 10 11 00 00 00 00       $  ANS009:76E 03 22 10 11 00 00 00 00
  $  REQ010:766 03 22 10 12 00 00 00 00       $  ANS010:76E 03 22 10 12 00 00 00 00
  $  REQ011:766 03 22 10 13 00 00 00 00       $  ANS011:76E 03 22 10 13 00 00 00 00
  $  REQ012:766 03 22 10 16 00 00 00 00       $  ANS012:76E 03 22 10 16 00 00 00 00
  $  REQ013:766 03 22 10 19 00 00 00 00       $  ANS013:76E 03 22 10 19 00 00 00 00
  $  REQ014:766 03 22 10 1C 00 00 00 00       $  ANS014:76E 03 22 10 1C 00 00 00 00
  $  REQ015:766 03 22 10 1D 00 00 00 00       $  ANS015:76E 03 22 10 1D 00 00 00 00
  $  REQ016:766 03 22 10 1E 00 00 00 00       $  ANS016:76E 03 22 10 1E 00 00 00 00
  $  REQ017:766 03 22 10 27 00 00 00 00       $  ANS017:76E 03 22 10 27 00 00 00 00

  $  000.使用语言                                       $    $              $    $  ANS000.BYTE004  $  if(x==0)y=@0365;else if(x==1)y=@0366;else if(x==2)y=@0367;else if(x==3)y=@0368;else if(x==4)y=@0369;else if(x==5)y=@036a;else if(x==6)y=@036b;else if(x==7)y=@036c;else if(x==8)y=@0463;else if(x==9)y=@036e;else if(x==10)y=@036f;else if(x==11)y=@0370;else if(x==12)y=@0371;else if(x==13)y=@0372;else y=@000a;
  $  001.车载电池电压                                   $    $  V           $    $  ANS001.BYTE004  $  y=0.01*x;
  $  002.TBOX(车联网主机)整机温度                       $    $  degC        $    $  ANS002.BYTE004  $  y=x-127;
  $  003.当前GPS位置点经度                              $    $  Degree      $    $  ANS003.BYTE004  $  y=(256*256*256*x1+256*256*x2+256*x3+x4)*0.000001;
  $  004.当前GPS位置点纬度                              $    $  Degree      $    $  ANS003.BYTE008  $  y=(256*256*256*x1+256*256*x2+256*x3+x4)*0.000001;
  $  005.当前时间                                       $    $  seconds     $    $  ANS004.BYTE004  $  y=256*256*256*x1+256*256*x2+256*x3+x4;
  $  006.当前 GPS 位置点的 水平位置精度因子(HDOP)       $    $              $    $  ANS004.BYTE008  $  y=x*0.1;
  $  007.当前速度                                       $    $  kph         $    $  ANS004.BYTE009  $  y=x;
  $  008.当前方向                                       $    $  Degree      $    $  ANS004.BYTE010  $  y=x*2;
  $  009.可视卫星数                                     $    $              $    $  ANS004.BYTE011  $  y=x&0x0f;
  $  010.卫星导航系统(GNSS)定位质量因子                 $    $              $    $  ANS004.BYTE011  $  if((x&0x70)==0x00)y=@0360;else if((x&0x70)==0x10)y=@0361;else if((x&0x70)==0x20)y=@0362;else y=@000a;
  $  011.最近已知经度                                   $    $  Degree      $    $  ANS005.BYTE004  $  y=(256*256*256*x1+256*256*x2+256*x3+x4)*0.000001;
  $  012.最近已知纬度                                   $    $  Degree      $    $  ANS005.BYTE008  $  y=(256*256*256*x1+256*256*x2+256*x3+x4)*0.000001;
  $  013.最后一次定位时间                               $    $  seconds     $    $  ANS006.BYTE004  $  y=256*256*256*x1+256*256*x2+256*x3+x4;
  $  014.最后一次定位的的 水平位置精度因子(HDOP)        $    $              $    $  ANS006.BYTE008  $  y=x*0.1;
  $  015.最近已知速度                                   $    $  kph         $    $  ANS006.BYTE009  $  y=x;
  $  016.最近已知方向                                   $    $  seconds     $    $  ANS006.BYTE010  $  y=x*2;
  $  017.最近可视卫星数                                 $    $              $    $  ANS006.BYTE011  $  y=x&0x0f;
  $  018.最近卫星导航系统(GNSS)定位质量因子             $    $              $    $  ANS006.BYTE011  $  if((x&0x70)==0x00)y=@0360;else if((x&0x70)==0x10)y=@0361;else if((x&0x70)==0x20)y=@0362;else y=@000a;
  $  019.移动国家码                                     $    $              $    $  ANS007.BYTE004  $  ASCII(x1,x2,x3);
  $  020.移动网络码                                     $    $              $    $  ANS007.BYTE007  $  ASCII(x1,x2,x3);
  $  021.信号强度                                       $    $  db          $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.1;
  $  022.接收信号强度指示                               $    $              $    $  ANS008.BYTE006  $  y=x&0x07;
  $  023.无线连接类型                                   $    $              $    $  ANS008.BYTE006  $  if((x&0x38)==0x00)y=@0358;else if((x&0x38)==0x08)y=@0359;else if((x&0x38)==0x10)y=@035a;else if((x&0x38)==0x18)y=@035b;else if((x&0x38)==0x20)y=@035c;else if((x&0x38)==0x28)y=@035d;else if((x&0x38)==0x30)y=@0470;else y=@000a;
  $  024.网络注册状态                                   $    $              $    $  ANS008.BYTE007  $  if((x&0x07)==0)y=@0353;else if((x&0x07)==1)y=@03aa;else if((x&0x07)==2)y=@0355;else if((x&0x07)==3)y=@0356;else if((x&0x07)==4)y=@02f1;else if((x&0x07)==5)y=@0357;else y=@000a;
  $  025.TBOX(车联网主机)的IP地址                       $    $              $    $  ANS009.BYTE004  $  y=SPRINTF([%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c],x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $  026.MODEM序列号                                    $    $              $    $  ANS010.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  027.MODEM软件版本号                                $    $              $    $  ANS011.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $  028.bCALL业务激活状态                              $    $              $    $  ANS012.BYTE005  $  if(x&0x01)y=@009c;else y=@009b;
  $  029.手动eCall业务激活状态                          $    $              $    $  ANS012.BYTE005  $  if(x&0x02)y=@009c;else y=@009b;
  $  030.自动eCalle业务激活状态                         $    $              $    $  ANS012.BYTE005  $  if(x&0x04)y=@009c;else y=@009b;
  $  031.WIFI热点激活状态                               $    $              $    $  ANS012.BYTE005  $  if(x&0x08)y=@009c;else y=@009b;
  $  032.盗车追踪业务激活状态                           $    $              $    $  ANS012.BYTE005  $  if(x&0x10)y=@009c;else y=@009b;
  $  033.数据挖掘激活状态                               $    $              $    $  ANS012.BYTE005  $  if(x&0x20)y=@009c;else y=@009b;
  $  034.远程控制业务激活状态                           $    $              $    $  ANS012.BYTE005  $  if(x&0x40)y=@009c;else y=@009b;
  $  035.TBOX(车联网主机)系统时间                       $    $              $    $  ANS013.BYTE004  $  y=256*256*256*x1+256*256*x2+256*x3+x4;
  $  036.CAN唤醒                                        $    $              $    $  ANS014.BYTE004  $  if(x&0x01)y=@0363;else y=@0364;
  $  037.通信模块唤醒                                   $    $              $    $  ANS014.BYTE004  $  if(x&0x02)y=@0363;else y=@0364;
  $  038.bCall/eCall按键唤醒                            $    $              $    $  ANS014.BYTE004  $  if(x&0x04)y=@0363;else y=@0364;
  $  039.周期定时唤醒                                   $    $              $    $  ANS014.BYTE004  $  if(x&0x08)y=@0363;else y=@0364;
  $  040.AGPS 业务使能开关                              $    $              $    $  ANS015.BYTE004  $  if(x&0x01)y=@0160;else y=@0373;
  $  041.TSP(远程服务供应商)配置的VIN码                 $    $              $    $  ANS016.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $  042.T-BOX整机的IMEI                                $    $              $    $  ANS017.BYTE004  $  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);

  $)  01.配置信息
  $  01.配置信息
  $  REQ000:766 03 22 F0 10 00 00 00 00       $  ANS000:76E 03 22 F0 10 00 00 00 00

  $  000.远程控制车门                  $    $       $    $  ANS000.BYTE005  $  if(x&0x01)y=@0464;else y=@043b;
  $  001.远程控制空调                  $    $       $    $  ANS000.BYTE005  $  if(x&0x02)y=@0464;else y=@043b;
  $  002.远程控制车窗                  $    $       $    $  ANS000.BYTE005  $  if(x&0x04)y=@0464;else y=@043b;
  $  003.远程控制天窗                  $    $       $    $  ANS000.BYTE005  $  if(x&0x08)y=@0464;else y=@043b;
  $  004.远程控制大灯                  $    $       $    $  ANS000.BYTE005  $  if(x&0x10)y=@0464;else y=@043b;
  $  005.远程控制双闪                  $    $       $    $  ANS000.BYTE005  $  if(x&0x20)y=@0464;else y=@043b;
  $  006.远程控制鸣笛                  $    $       $    $  ANS000.BYTE005  $  if(x&0x40)y=@0464;else y=@043b;
  $  007.远程控制开启后备箱            $    $       $    $  ANS000.BYTE005  $  if(x&0x80)y=@0464;else y=@043b;
  $  008.远程加热座椅                  $    $       $    $  ANS000.BYTE004  $  if(x&0x01)y=@0464;else y=@043b;
  $  009.空调类型                      $    $       $    $  ANS000.BYTE006  $  if((x&0x07)==0x00)y=@046f;else if((x&0x07)==0x01)y=@00c6;else if((x&0x07)==0x02)y=@00ea;else if((x&0x07)==0x03)y=@00c5;else y=@000a;
  $  010.PEPS(智能进入控制器)          $    $       $    $  ANS000.BYTE006  $  if(x&08)y=@046d;else y=@046e;
  $  011.变速箱类型                    $    $       $    $  ANS000.BYTE006  $  if((x&0x30)==0x00)y=@000c;else if((x&0x30)==0x10)y=@000d;else y=@000a;
  $  012.安全气囊                      $    $       $    $  ANS000.BYTE006  $  if(x&0x40)y=@046b;else y=@046c;
  $  013.TSP(远程服务供应商)业务       $    $       $    $  ANS000.BYTE007  $  if(x==0x00)y=@0465;else if(x==0x01)y=@0469;else if(x==0x02)y=@046a;else y=@000a;
  $  014.紧急呼叫                      $    $       $    $  ANS000.BYTE008  $  if(x==0x00)y=@0465;else if(x==0x01)y=@0466;else if(x==0x02)y=@0467;else if(x==0x03)y=@0468;else y=@000a;
  $  015.数据业务                      $    $       $    $  ANS000.BYTE009  $  if(x==0x00)y=@0465;else if(x==0x01)y=@0477;else y=@000a;
  $  016.远程升级                      $    $       $    $  ANS000.BYTE010  $  if(x==0x00)y=@0465;else if(x==0x01)y=@0476;else y=@000a;
  $  017.发动机类型                    $    $       $    $  ANS000.BYTE011  $  if((x&0x0f)==0x00)y=@0475;else if((x&0x0f)==0x01)y=@0007;else y=@000a;
  $  018.与车机连接的USB功能设置       $    $       $    $  ANS000.BYTE011  $  if(x&0x10)y=@006c;else y=@015d;
  $  019.车型                          $    $       $    $  ANS000.BYTE012  $  if(x==0x00)y=@0471;else if(x==0x01)y=@0472;else if(x==0x02)y=@0473;else if(x==0x03)y=@00ca;else if(x==0x04)y=@00cb;else if(x==0x05)y=@0474;else y=@000a;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:766 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
