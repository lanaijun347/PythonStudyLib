
    车型ID：0626

    模拟：协议模拟-->0626

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A9

进入命令:

  $~  REQ000:7A1 02 10 01 00 00 00 00 00       $~  ANS000:7A9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A1 02 3E 00 00 00 00 00 00       $!  ANS000:7A9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7A1 03 19 02 09 00 00 00 00       $#  ANS000:7A9 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/e6000000


  $#  01.读故障码库
  $#  REQ000:7A1 02 19 0A 00 00 00 00 00       $#  ANS000:7A9 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/e6000000


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

  $$  REQ000:7A1 04 14 FF FF FF 00 00 00       $$  ANS000:7A9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A1 03 22 F1 12 00 00 00 00       $%  ANS000:7A9 03 22 F1 12 00 00 00 00
  $%  REQ001:7A1 03 22 F1 80 00 00 00 00       $%  ANS001:7A9 03 22 F1 80 00 00 00 00
  $%  REQ002:7A1 03 22 F1 86 00 00 00 00       $%  ANS002:7A9 03 22 F1 86 00 00 00 00
  $%  REQ003:7A1 03 22 F1 87 00 00 00 00       $%  ANS003:7A9 03 22 F1 87 00 00 00 00
  $%  REQ004:7A1 03 22 F1 8A 00 00 00 00       $%  ANS004:7A9 03 22 F1 8A 00 00 00 00
  $%  REQ005:7A1 03 22 F1 8B 00 00 00 00       $%  ANS005:7A9 03 22 F1 8B 00 00 00 00
  $%  REQ006:7A1 03 22 F1 8C 00 00 00 00       $%  ANS006:7A9 03 22 F1 8C 00 00 00 00
  $%  REQ007:7A1 03 22 F1 90 00 00 00 00       $%  ANS007:7A9 03 22 F1 90 00 00 00 00
  $%  REQ008:7A1 03 22 F1 92 00 00 00 00       $%  ANS008:7A9 03 22 F1 92 00 00 00 00
  $%  REQ009:7A1 03 22 F1 93 00 00 00 00       $%  ANS009:7A9 03 22 F1 93 00 00 00 00
  $%  REQ010:7A1 03 22 F1 95 00 00 00 00       $%  ANS010:7A9 03 22 F1 95 00 00 00 00
  $%  REQ011:7A1 03 22 F1 98 00 00 00 00       $%  ANS011:7A9 03 22 F1 98 00 00 00 00
  $%  REQ012:7A1 03 22 F1 99 00 00 00 00       $%  ANS012:7A9 03 22 F1 99 00 00 00 00
  $%  REQ013:7A1 03 22 F1 9D 00 00 00 00       $%  ANS013:7A9 03 22 F1 9D 00 00 00 00
  $%  REQ014:7A1 03 22 02 00 00 00 00 00       $%  ANS014:7A9 03 22 02 00 00 00 00 00
  $%  REQ015:7A1 03 22 02 01 00 00 00 00       $%  ANS015:7A9 03 22 02 01 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:驱动层软件版本:                              $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:当前诊断会话模式:                            $%    $%  ANS002.BYTE004  $%  if(x==0x01) y=@000f;else if(x==0x02) y=@002f;else if(x==0x03) y=@0010;else y=@0009;
  $%  003:零件号:                                      $%    $%  ANS003.BYTE004  $%  0 ASCII
  $%  004:供应商代码:                                  $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:ECU(电子控制器)生产日期:                     $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  006:ECU(电子控制器)序列号:                       $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  007:车辆识别号（VIN码）:                         $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  008:ECU(电子控制器)硬件号:                       $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)硬件版本号:                   $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)软件版本号                    $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  012:ECU(电子控制器)刷写日期:                     $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  013:ECU(电子控制器)安装日期:                     $%    $%  ANS013.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  014:ECU(电子控制器)成功刷写次数:                 $%    $%  ANS014.BYTE004  $%  HEX(x1);
  $%  015:ECU(电子控制器)尝试刷写次数:                 $%    $%  ANS015.BYTE004  $%  HEX(x1);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.IHU触摸屏事件
  $  00.IHU触摸屏事件
  $  REQ000:7A1 03 22 F1 26 00 00 00 00       $  ANS000:7A9 03 22 F1 26 00 00 00 00

  $  000.位置            $    $  /     $    $  ANS000.BYTE004  $  switxh(x) 0x00:y=@0165;0x01:y=@0166;0x02:y=@0167;0x03:y=@0008;default:y=@0168;
  $  001.触摸坐标X       $    $  /     $    $  ANS000.BYTE005  $  y=x1*0x100+x2;
  $  002.触摸坐标Y       $    $  /     $    $  ANS000.BYTE006  $  y=x1*0x100+x2;

  $)  01.IHU显示状态
  $  01.IHU显示状态
  $  REQ000:7A1 03 22 F1 28 00 00 00 00       $  ANS000:7A9 03 22 F1 28 00 00 00 00

  $  000.AVM(全景影像模块)3D程序状态         $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@0163;else y=@0164;
  $  001.标定程序状态                        $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@0163;else y=@0164;
  $  002.LDW(车道偏离预警系统)程序状态       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@0163;else y=@0164;
  $  003.BSD(盲点监测)程序状态               $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@0163;else y=@0164;
  $  004.Shell程序状态                       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@0163;else y=@0164;
  $  005.程序行为                            $    $  /     $    $  ANS000.BYTE005  $  switxh(x) 0x00:y=@0171;0x01:y=@0172;0x02:y=@0162;0x03:y=@0132;default:y=@001e;

  $)  02.ABS(防抱刹车系统)/ESC(电子稳定控制单元)状态
  $  02.ABS(防抱刹车系统)/ESC(电子稳定控制单元)状态
  $  REQ000:7A1 03 22 F1 29 00 00 00 00       $  ANS000:7A9 03 22 F1 29 00 00 00 00

  $  000.车速             $    $  km/h     $    $  ANS000.BYTE005  $  if((x1*0x100+x2)*0.05625<1) y=0; else y=INT((x1*0x100+x2)*0.05625);
  $  001.车速有效性       $    $  /        $    $  ANS000.BYTE006  $  if(((x>>1)&1)) y=@0163;else y=@0164;

  $)  03.SAS(方向盘转角传感器)状态
  $  03.SAS(方向盘转角传感器)状态
  $  REQ000:7A1 03 22 F1 2A 00 00 00 00       $  ANS000:7A9 03 22 F1 2A 00 00 00 00

  $  000.方向盘转角                          $    $  deg     $    $  ANS000.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.1;else y=(x1*0x100+x2-0x10000)*0.1;
  $  001.SAS(方向盘转角传感器)失效状态       $    $  /       $    $  ANS000.BYTE007  $  if(((x>>0)&1)) y=@016e;else y=@016f;

  $)  04.TCM(转向柱组合开关)集成开关控制
  $  04.TCM(转向柱组合开关)集成开关控制
  $  REQ000:7A1 03 22 F1 2B 00 00 00 00       $  ANS000:7A9 03 22 F1 2B 00 00 00 00

  $  000.指示近光灯开关状态                            $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@0170;else y=@010e;
  $  001.TCM(转向柱组合开关)_SW_近光灯状态有效性       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>5)&1)) y=@0132;else y=@0169;
  $  002.指示远光灯开关状态                            $    $  /     $    $  ANS000.BYTE004  $  if(((x>>6)&1)) y=@0170;else y=@010e;
  $  003.TCM(转向柱组合开关)_SW_远光灯状态有效性       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>7)&1)) y=@0132;else y=@0169;
  $  004.转向灯指示                                    $    $  /     $    $  ANS000.BYTE006  $  switxh(x) 0x00:y=@017f;0x01:y=@0180;0x02:y=@0181;0x03:y=@0132;default:y=@001e;

  $)  05.TCU(自动变速器控制单元)及双闪状态
  $  05.TCU(自动变速器控制单元)及双闪状态
  $  REQ000:7A1 03 22 F1 2C 00 00 00 00       $  ANS000:7A9 03 22 F1 2C 00 00 00 00
  $  REQ001:7A1 03 22 F1 2D 00 00 00 00       $  ANS001:7A9 03 22 F1 2D 00 00 00 00

  $  000.TCU(自动变速器控制单元)状态信息       $    $  /     $    $  ANS000.BYTE004  $  switxh(x>>4) 0x05:y=@017a;0x06:y=@017b;0x07:y=@017c;0x08:y=@017d;0x0f:y=stringng(0xf1,0x26,0x50,0x14);default:y=@0009;
  $  001.BCM(车身控制模块)双闪状态             $    $  /     $    $  ANS001.BYTE004  $  if(((x>>0)&1)) y=@001c;else y=@017e;

  $)  06.AVM(全景影像模块)状态信息
  $  06.AVM(全景影像模块)状态信息
  $  REQ000:7A1 03 22 F2 13 00 00 00 00       $  ANS000:7A9 03 22 F2 13 00 00 00 00

  $  000.AVM(全景影像模块)车辆模式颜色信息       $    $  /     $    $  ANS000.BYTE005  $  if((x1==0x01)&&(x2==01)&&(x3==01)) y=@0173;else if((x1==0xff)&&(x2==ff)&&(x3==ff)) y=@0174;else if((x1==0x34)&&(x2==2a)&&(x3==11)) y=@0175;else if((x1==0x7a)&&(x2==01)&&(x3==0d)) y=@0176;else if((x1==0xCC)&&(x2==C3)&&(x3==A4)) y=@0177;else if((x1==0xE8)&&(x2==ED)&&(x3==F3)) y=@0178;else y=@0179;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
