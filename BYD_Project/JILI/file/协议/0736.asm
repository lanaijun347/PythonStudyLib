
    车型ID：0736

    模拟：协议模拟-->0736

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7EA

进入命令:

  $~  REQ000:7E2 02 10 01 00 00 00 00 00       $~  ANS000:7EA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E2 02 3E 00 00 00 00 00 00       $!  ANS000:7EA 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E2 03 19 02 09 00 00 00 00       $#  ANS000:7EA 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/46000000


  $#  01.读故障码库
  $#  REQ000:7E2 02 19 0A 00 00 00 00 00       $#  ANS000:7EA 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/46000000


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

  $$  REQ000:7E2 04 14 FF FF FF 00 00 00       $$  ANS000:7EA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E2 03 22 F1 12 00 00 00 00       $%  ANS000:7EA 03 22 F1 12 00 00 00 00
  $%  REQ001:7E2 03 22 F1 80 00 00 00 00       $%  ANS001:7EA 03 22 F1 80 00 00 00 00
  $%  REQ002:7E2 03 22 F1 87 00 00 00 00       $%  ANS002:7EA 03 22 F1 87 00 00 00 00
  $%  REQ003:7E2 03 22 F1 89 00 00 00 00       $%  ANS003:7EA 03 22 F1 89 00 00 00 00
  $%  REQ004:7E2 03 22 F1 8A 00 00 00 00       $%  ANS004:7EA 03 22 F1 8A 00 00 00 00
  $%  REQ005:7E2 03 22 F1 8B 00 00 00 00       $%  ANS005:7EA 03 22 F1 8B 00 00 00 00
  $%  REQ006:7E2 03 22 F1 8C 00 00 00 00       $%  ANS006:7EA 03 22 F1 8C 00 00 00 00
  $%  REQ007:7E2 03 22 F1 90 00 00 00 00       $%  ANS007:7EA 03 22 F1 90 00 00 00 00
  $%  REQ008:7E2 03 22 F1 93 00 00 00 00       $%  ANS008:7EA 03 22 F1 93 00 00 00 00
  $%  REQ009:7E2 03 22 F1 95 00 00 00 00       $%  ANS009:7EA 03 22 F1 95 00 00 00 00
  $%  REQ010:7E2 03 22 F1 97 00 00 00 00       $%  ANS010:7EA 03 22 F1 97 00 00 00 00
  $%  REQ011:7E2 03 22 F1 98 00 00 00 00       $%  ANS011:7EA 03 22 F1 98 00 00 00 00
  $%  REQ012:7E2 03 22 F1 99 00 00 00 00       $%  ANS012:7EA 03 22 F1 99 00 00 00 00
  $%  REQ013:7E2 03 22 F1 9D 00 00 00 00       $%  ANS013:7EA 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:驱动层软件版本:                               $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:零件号:                                       $%    $%  ANS002.BYTE004  $%  0 ASCII
  $%  003:Geely软件版本号:                              $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3);
  $%  004:供应商代码:                                   $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:ECU(电子控制器)生产日期:                      $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  006:ECU(电子控制器)序列号:                        $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  007:车辆识别号(VIN码):                            $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  008:ECU(电子控制器)硬件版本号:                    $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)软件版本号:                    $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)系统名称或发动机类型:          $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  011:ECU(电子控制器)刷写维修店代号或设备号:        $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:ECU(电子控制器)刷写日期:                      $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  013:ECU(电子控制器)安装日期:                      $%    $%  ANS013.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.网络节点配置信息
  $  00.网络节点配置信息
  $  REQ000:7E2 03 22 F1 10 00 00 00 00       $  ANS000:7EA 03 22 F1 10 00 00 00 00

  $  000.EMS(发动机管理系统)                  $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@015b;else y=@015a;
  $  001.IPK(组合仪表控制单元)                $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@015b;else y=@015a;
  $  002.BCM(车身控制系统)                    $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@015b;else y=@015a;
  $  003.TCU(自动变速器控制单元)              $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@015b;else y=@015a;
  $  004.ACU(安全气囊控制单元)                $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@015b;else y=@015a;
  $  005.ESC(电子稳定控制单元)                $    $  /     $    $  ANS000.BYTE004  $  if(((x>>5)&1)) y=@015b;else y=@015a;
  $  006.PEPS(无钥匙进入一键式启动单元)       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>6)&1)) y=@015b;else y=@015a;
  $  007.EPS(电动助力转向系统)                $    $  /     $    $  ANS000.BYTE004  $  if(((x>>7)&1)) y=@015b;else y=@015a;
  $  008.SAS(方向盘转角传感器)                $    $  /     $    $  ANS000.BYTE005  $  if(((x>>0)&1)) y=@015b;else y=@015a;
  $  009.FRS(前雷达系统)                      $    $  /     $    $  ANS000.BYTE005  $  if(((x>>1)&1)) y=@015b;else y=@015a;
  $  010.AC(空调控制器)                       $    $  /     $    $  ANS000.BYTE005  $  if(((x>>2)&1)) y=@015b;else y=@015a;
  $  011.MMI(多媒体交互系统)                  $    $  /     $    $  ANS000.BYTE005  $  if(((x>>3)&1)) y=@015b;else y=@015a;
  $  012.PAS(泊车辅助系统)                    $    $  /     $    $  ANS000.BYTE005  $  if(((x>>4)&1)) y=@015b;else y=@015a;
  $  013.TPMS(胎压监测系统)                   $    $  /     $    $  ANS000.BYTE005  $  if(((x>>5)&1)) y=@015b;else y=@015a;
  $  014.T-BOX(远程信息处理控制器)            $    $  /     $    $  ANS000.BYTE005  $  if(((x>>6)&1)) y=@015b;else y=@015a;
  $  015.ESCL(电子转向柱锁控制单元)           $    $  /     $    $  ANS000.BYTE005  $  if(((x>>7)&1)) y=@015b;else y=@015a;
  $  016.EPB(电子驻车制动)                    $    $  /     $    $  ANS000.BYTE006  $  if(((x>>0)&1)) y=@015b;else y=@015a;
  $  017.FCS(前摄像头系统)                    $    $  /     $    $  ANS000.BYTE006  $  if(((x>>1)&1)) y=@015b;else y=@015a;
  $  018.PTG(后背门自动举升)                  $    $  /     $    $  ANS000.BYTE006  $  if(((x>>2)&1)) y=@015b;else y=@015a;
  $  019.DSCU(驾驶员座椅控制模块)             $    $  /     $    $  ANS000.BYTE006  $  if(((x>>3)&1)) y=@015b;else y=@015a;
  $  020.AFS(自适应前照灯系统)                $    $  /     $    $  ANS000.BYTE006  $  if(((x>>4)&1)) y=@015b;else y=@015a;
  $  021.ABS(防抱死刹车系统)                  $    $  /     $    $  ANS000.BYTE006  $  if(((x>>5)&1)) y=@015b;else y=@015a;
  $  022.IMMO(防盗系统)                       $    $  /     $    $  ANS000.BYTE006  $  if(((x>>6)&1)) y=@015b;else y=@015a;
  $  023.4WD(四轮驱动系统)                    $    $  /     $    $  ANS000.BYTE006  $  if(((x>>7)&1)) y=@015b;else y=@015a;
  $  024.PTC(高压电加热电阻)                  $    $  /     $    $  ANS000.BYTE007  $  if(((x>>0)&1)) y=@015b;else y=@015a;
  $  025.EGSM(电子换挡器)                     $    $  /     $    $  ANS000.BYTE007  $  if(((x>>1)&1)) y=@015b;else y=@015a;
  $  026.BSG(皮带轮驱动启发电机)              $    $  /     $    $  ANS000.BYTE007  $  if(((x>>2)&1)) y=@015b;else y=@015a;
  $  027.BMS(电池管理系统)                    $    $  /     $    $  ANS000.BYTE007  $  if(((x>>3)&1)) y=@015b;else y=@015a;
  $  028.DCDC(直流转换控制器)                 $    $  /     $    $  ANS000.BYTE007  $  if(((x>>4)&1)) y=@015b;else y=@015a;
  $  029.VCU(整车控制系统)                    $    $  /     $    $  ANS000.BYTE007  $  if(((x>>5)&1)) y=@015b;else y=@015a;
  $  030.OBC(车载充电机)                      $    $  /     $    $  ANS000.BYTE007  $  if(((x>>6)&1)) y=@015b;else y=@015a;
  $  031.IPU(电机控制器)                      $    $  /     $    $  ANS000.BYTE007  $  if(((x>>7)&1)) y=@015b;else y=@015a;
  $  032.ACCM(空调压缩机)                     $    $  /     $    $  ANS000.BYTE008  $  if(((x>>0)&1)) y=@015b;else y=@015a;

  $)  01.读取防盗学习状态
  $  01.读取防盗学习状态
  $  REQ000:7E2 03 22 5C 14 00 00 00 00       $  ANS000:7EA 03 22 5C 14 00 00 00 00

  $  000.读取学习状态       $    $  /     $    $  ANS000.BYTE004  $  if(x<0x0b) y=string(0x06,0x36,0x70,(0x51+x)); else if(x==0x23) y=@074b;

  $)  02.检查学习状态
  $  02.检查学习状态
  $  REQ000:7E2 03 22 5C B5 00 00 00 00       $  ANS000:7EA 03 22 5C B5 00 00 00 00

  $  000.PEPS(无钥匙进入一键式启动单元)学习状态       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@0131;else y=@0130;
  $  001.ESCL(电子转向柱锁控制单元)学习状态           $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@0131;else y=@0130;
  $  002.EMS(发动机管理系统)学习状态                  $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@0131;else y=@0130;
  $  003.智能钥匙1学习状态                            $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@0131;else y=@0130;
  $  004.智能钥匙2学习状态                            $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@0131;else y=@0130;

  $)  03.轮胎胎压传感器标称压力值
  $  03.轮胎胎压传感器标称压力值
  $  REQ000:7E2 03 22 37 00 00 00 00 00       $  ANS000:7EA 03 22 37 00 00 00 00 00

  $  000.左前轮胎胎压传感器标称压力值       $    $  kPa     $    $  ANS000.BYTE004  $  y=x1*1.373;
  $  001.右前轮胎胎压传感器标称压力值       $    $  kPa     $    $  ANS000.BYTE004  $  y=x2*1.373;
  $  002.右后轮胎胎压传感器标称压力值       $    $  kPa     $    $  ANS000.BYTE004  $  y=x3*1.373;
  $  003.左后轮胎胎压传感器标称压力值       $    $  kPa     $    $  ANS000.BYTE004  $  y=x4*1.373;

  $)  04.轮胎胎压传感器标示符
  $  04.轮胎胎压传感器标示符
  $  REQ000:7E2 03 22 37 01 00 00 00 00       $  ANS000:7EA 03 22 37 01 00 00 00 00

  $  000.左前轮胎胎压传感器标示符       $    $  /     $    $  ANS000.BYTE004  $  HEX(x1,x2,x3,x4);
  $  001.右前轮胎胎压传感器标示符       $    $  /     $    $  ANS000.BYTE004  $  HEX(x5,x6,x7,x8);
  $  002.右后轮胎胎压传感器标示符       $    $  /     $    $  ANS000.BYTE004  $  HEX(x9,x10,x11,x12);
  $  003.左后轮胎胎压传感器标示符       $    $  /     $    $  ANS000.BYTE004  $  HEX(x13,x14,x15,x16);

  $)  05.轮胎胎压压力和温度
  $  05.轮胎胎压压力和温度
  $  REQ000:7E2 03 22 37 02 00 00 00 00       $  ANS000:7EA 03 22 37 02 00 00 00 00

  $  000.左前轮胎压力       $    $  kPa      $    $  ANS000.BYTE004  $  y=x*1.373+102;
  $  001.左前轮胎温度       $    $  degC     $    $  ANS000.BYTE005  $  y=x-48;
  $  002.右前轮胎压力       $    $  kPa      $    $  ANS000.BYTE006  $  y=x*1.373+102;
  $  003.右前轮胎温度       $    $  degC     $    $  ANS000.BYTE007  $  y=x-48;
  $  004.右后轮胎压力       $    $  kPa      $    $  ANS000.BYTE008  $  y=x*1.373+102;
  $  005.右后轮胎温度       $    $  degC     $    $  ANS000.BYTE009  $  y=x-48;
  $  006.左后轮胎压力       $    $  kPa      $    $  ANS000.BYTE010  $  y=x*1.373+102;
  $  007.左后轮胎温度       $    $  degC     $    $  ANS000.BYTE011  $  y=x-48;

  $)  06.巡航控制开关
  $  06.巡航控制开关
  $  REQ000:7E2 03 22 60 02 00 00 00 00       $  ANS000:7EA 03 22 60 02 00 00 00 00

  $  000.巡航控制开关       $    $  /     $    $  ANS000.BYTE004  $  if((x1==0x00)&&(x2==0x00)) y=@01d1;else if((x1==0x01)&&(x2==0x00)) y=@01d2;else if((x1==0x02)&&(x2==0x00)) y=@01d3;else if((x1==0x03)&&(x2==0x00)) y=@01d4;else if((x1==0x04)&&(x2==0x00)) y=@01d5;else if((x1==0x05)&&(x2==0x00)) y=@01d6;else if((x1==0x00)&&(x2==0x01)) y=@01d7;else if((x1==0x00)&&(x2==0x02)) y=@01d8;else if((x1==0x00)&&(x2==0x03)) y=@01d9;else if((x1==0x05)&&(x2==0x03)) y=@01da;else y=@00b8;

  $)  07.外部灯光输入开关状态
  $  07.外部灯光输入开关状态
  $  REQ000:7E2 03 22 60 03 00 00 00 00       $  ANS000:7EA 03 22 60 03 00 00 00 00

  $  000.左转向开关               $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>0)&1)) y=@001c;else y=@001d;
  $  001.右转向开关               $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>1)&1)) y=@001c;else y=@001d;
  $  002.危险报警开关             $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>2)&1)) y=@001c;else y=@001d;
  $  003.位置灯开关               $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>3)&1)) y=@001c;else y=@001d;
  $  004.近光灯开关               $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>4)&1)) y=@001c;else y=@001d;
  $  005.自动灯开关               $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>5)&1)) y=@001c;else y=@001d;
  $  006.刹车踏板开关             $    $  /     $    $  ANS000.BYTE004  $  if(((x2>>0)&1)) y=@001c;else y=@001d;
  $  007.前雾灯开关               $    $  /     $    $  ANS000.BYTE004  $  if(((x2>>1)&1)) y=@001c;else y=@001d;
  $  008.后雾灯开关               $    $  /     $    $  ANS000.BYTE004  $  if(((x2>>2)&1)) y=@001c;else y=@001d;
  $  009.远光灯开关               $    $  /     $    $  ANS000.BYTE004  $  if(((x2>>3)&1)) y=@001c;else y=@001d;
  $  010.自动灯光传感器信号       $    $  /     $    $  ANS000.BYTE004  $  if(((x2>>4)&1)) y=@001c;else y=@001d;
  $  011.倒车档位开关             $    $  /     $    $  ANS000.BYTE004  $  if(((x2>>5)&1)) y=@001c;else y=@001d;

  $)  08.外部进入系统门开开关状态
  $  08.外部进入系统门开开关状态
  $  REQ000:7E2 03 22 60 04 00 00 00 00       $  ANS000:7EA 03 22 60 04 00 00 00 00

  $  000.左前门门开开关       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@0001;else y=@0000;
  $  001.右前门门开开关       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@0001;else y=@0000;
  $  002.左后门门开开关       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@0001;else y=@0000;
  $  003.右后门门开开关       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@0001;else y=@0000;
  $  004.后备箱打开开关       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@0001;else y=@0000;
  $  005.引擎盖打开开关       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>5)&1)) y=@0001;else y=@0000;

  $)  09.门锁系统输入开关状态
  $  09.门锁系统输入开关状态
  $  REQ000:7E2 03 22 60 05 00 00 00 00       $  ANS000:7EA 03 22 60 05 00 00 00 00

  $  000.中控锁锁止开关                       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@001c;else y=@001d;
  $  001.中控锁解锁开关                       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@001c;else y=@001d;
  $  002.后备箱开启开关                       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@001c;else y=@001d;
  $  003.外部后备箱释放开关                   $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@001c;else y=@001d;
  $  004.驾驶员车门锁止状态                   $    $  /     $    $  ANS000.BYTE004  $  if(((x>>5)&1)) y=@01d0;else y=@010a;
  $  005.除驾驶员外其他三个车门锁止状态       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>6)&1)) y=@01d0;else y=@010a;

  $)  10.雨刮
  $  10.雨刮
  $  REQ000:7E2 03 22 60 06 00 00 00 00       $  ANS000:7EA 03 22 60 06 00 00 00 00

  $  000.前清洗器开关         $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@001c;else y=@001d;
  $  001.前雨刮间歇开关       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@001c;else y=@001d;
  $  002.前雨刮停止           $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@001c;else y=@001d;
  $  003.前雨刮高速           $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@001c;else y=@001d;
  $  004.前雨刮低速           $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@001c;else y=@001d;

  $)  11.前雨刮自动灵敏度
  $  11.前雨刮自动灵敏度
  $  REQ000:7E2 03 22 60 07 00 00 00 00       $  ANS000:7EA 03 22 60 07 00 00 00 00

  $  000.前雨刮自动灵敏度       $    $  /     $    $  ANS000.BYTE004  $  if(x==0x00) y=@01ca;else if(x==0x01) y=@01cb;else if(x==0x02) y=@01cc;else if(x==0x03) y=@01cd;else if(x==0x04) y=@01ce;else y=@00b8;

  $)  12.点火开关状态(钥匙状态)
  $  12.点火开关状态(钥匙状态)
  $  REQ000:7E2 03 22 60 08 00 00 00 00       $  ANS000:7EA 03 22 60 08 00 00 00 00

  $  000.点火开关状态(钥匙状态)       $    $  /     $    $  ANS000.BYTE004  $  if(x==0x00) y=@01cf;else if(x==0x01) y=@015c;else if(x==0x02) y=@015d;else if(x==0x03) y=@015f;else y=@00b8;

  $)  13.后除霜开关
  $  13.后除霜开关
  $  REQ000:7E2 03 22 60 09 00 00 00 00       $  ANS000:7EA 03 22 60 09 00 00 00 00

  $  000.后除霜开关       $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@001c;else y=@001d;

  $)  14.后雨刮/清洗输入输出状态
  $  14.后雨刮/清洗输入输出状态
  $  REQ000:7E2 03 22 60 0A 00 00 00 00       $  ANS000:7EA 03 22 60 0A 00 00 00 00

  $  000.后清洗开关           $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@001c;else y=@001d;
  $  001.后雨刮间歇开关       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@001c;else y=@001d;
  $  002.后雨刮常开开关       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@001c;else y=@001d;

  $)  15.外部温度
  $  15.外部温度
  $  REQ000:7E2 03 22 60 0B 00 00 00 00       $  ANS000:7EA 03 22 60 0B 00 00 00 00

  $  000.外部温度       $    $  degC     $    $  ANS000.BYTE004  $  if(x==0xff) y=@0008;else y=x*0.5-40;

  $)  16.玻璃开关
  $  16.玻璃开关
  $  REQ000:7E2 03 22 60 0C 00 00 00 00       $  ANS000:7EA 03 22 60 0C 00 00 00 00

  $  000.乘员侧玻璃上升开关       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@001c;else y=@001d;
  $  001.乘员侧玻璃下降开关       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@001c;else y=@001d;
  $  002.左后玻璃上升开关         $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@001c;else y=@001d;
  $  003.左后玻璃下降开关         $    $  /     $    $  ANS000.BYTE004  $  if(((x>>5)&1)) y=@001c;else y=@001d;
  $  004.右后玻璃上升开关         $    $  /     $    $  ANS000.BYTE004  $  if(((x>>6)&1)) y=@001c;else y=@001d;
  $  005.右后玻璃下降开关         $    $  /     $    $  ANS000.BYTE004  $  if(((x>>7)&1)) y=@001c;else y=@001d;

  $)  17.遥控钥匙个数
  $  17.遥控钥匙个数
  $  REQ000:7E2 03 22 60 0F 00 00 00 00       $  ANS000:7EA 03 22 60 0F 00 00 00 00

  $  000.遥控钥匙个数       $    $  /     $    $  ANS000.BYTE004  $  y=x;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E2 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
