
    车型ID：07d0

    模拟：协议模拟-->07d0

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~79C

进入命令:

  $~  REQ000:794 02 10 01 00 00 00 00 00       $~  ANS000:79C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:794 02 3E 00 00 00 00 00 00       $!  ANS000:79C 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:794 03 19 02 09 00 00 00 00       $#  ANS000:79C 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/a5000000


  $#  01.读故障码库
  $#  REQ000:794 02 19 0A 00 00 00 00 00       $#  ANS000:79C 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/a5000000


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

  $$  REQ000:794 04 14 FF FF FF 00 00 00       $$  ANS000:79C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:794 03 22 F1 12 00 00 00 00       $%  ANS000:79C 03 22 F1 12 00 00 00 00
  $%  REQ001:794 03 22 F1 87 00 00 00 00       $%  ANS001:79C 03 22 F1 87 00 00 00 00
  $%  REQ002:794 03 22 F1 89 00 00 00 00       $%  ANS002:79C 03 22 F1 89 00 00 00 00
  $%  REQ003:794 03 22 F1 8A 00 00 00 00       $%  ANS003:79C 03 22 F1 8A 00 00 00 00
  $%  REQ004:794 03 22 F1 8B 00 00 00 00       $%  ANS004:79C 03 22 F1 8B 00 00 00 00
  $%  REQ005:794 03 22 F1 8C 00 00 00 00       $%  ANS005:79C 03 22 F1 8C 00 00 00 00
  $%  REQ006:794 03 22 F1 90 00 00 00 00       $%  ANS006:79C 03 22 F1 90 00 00 00 00
  $%  REQ007:794 03 22 F1 93 00 00 00 00       $%  ANS007:79C 03 22 F1 93 00 00 00 00
  $%  REQ008:794 03 22 F1 95 00 00 00 00       $%  ANS008:79C 03 22 F1 95 00 00 00 00
  $%  REQ009:794 03 22 F1 98 00 00 00 00       $%  ANS009:79C 03 22 F1 98 00 00 00 00
  $%  REQ010:794 03 22 F1 99 00 00 00 00       $%  ANS010:79C 03 22 F1 99 00 00 00 00
  $%  REQ011:794 03 22 F1 9D 00 00 00 00       $%  ANS011:79C 03 22 F1 9D 00 00 00 00
  $%  REQ012:794 03 22 10 05 00 00 00 00       $%  ANS012:79C 03 22 10 05 00 00 00 00
  $%  REQ013:794 03 22 10 06 00 00 00 00       $%  ANS013:79C 03 22 10 06 00 00 00 00
  $%  REQ014:794 03 22 F1 97 00 00 00 00       $%  ANS014:79C 03 22 F1 97 00 00 00 00
  $%  REQ015:794 03 22 F1 82 00 00 00 00       $%  ANS015:79C 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)刷写日期:                     $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:ECU(电子控制器)安装日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:球头软件版本:                                $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  013:面板软件版本:                                $%    $%  ANS013.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  014:ECU(电子控制器)系统名称或发动机类型:         $%    $%  ANS014.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  015:标定软件版本号:                              $%    $%  ANS015.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读数据流
  $  00.读数据流
  $  REQ000:794 03 22 10 02 00 00 00 00       $  ANS000:79C 03 22 10 02 00 00 00 00
  $  REQ001:794 03 22 10 03 00 00 00 00       $  ANS001:79C 03 22 10 03 00 00 00 00
  $  REQ002:794 03 22 DF 00 00 00 00 00       $  ANS002:79C 03 22 DF 00 00 00 00 00
  $  REQ003:794 03 22 DF 01 00 00 00 00       $  ANS003:79C 03 22 DF 01 00 00 00 00

  $  000.P挡解锁按键状态       $    $  /        $    $  ANS000.BYTE004  $  if(0x00==x)y=@0e2b;else if(0x01==x)y=@0e2c; else y=@000b;
  $  001.P挡按键状态           $    $  /        $    $  ANS001.BYTE004  $  if(0x00==x)y=@0e2d;else if(0x01==x)y=@0e2e; else y=@00b8;
  $  002.供电电压              $    $  V        $    $  ANS002.BYTE004  $  y=x*0.1;
  $  003.车速                  $    $  km/h     $    $  ANS003.BYTE004  $  y=INT((x1*256+x2)*0.05625);

  $)  01.车辆网络节点配置
  $  01.车辆网络节点配置
  $  REQ000:794 03 22 F1 10 00 00 00 00       $  ANS000:79C 03 22 F1 10 00 00 00 00

  $  000.EMS(发动机管理系统)                   $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@015b;else y=@015a;
  $  001.IPK(组合仪表控制单元)                 $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@015b;else y=@015a;
  $  002.BCM(车身控制模块)                     $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@015b;else y=@015a;
  $  003.TCU(自动变速器控制单元)               $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@015b;else y=@015a;
  $  004.ACU(安全气囊控制单元)                 $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@015b;else y=@015a;
  $  005.ESC(电子稳定控制单元)                 $    $  /     $    $  ANS000.BYTE004  $  if(((x>>5)&1)) y=@015b;else y=@015a;
  $  006.PEPS(无钥匙进入一键式启动单元)        $    $  /     $    $  ANS000.BYTE004  $  if(((x>>6)&1)) y=@015b;else y=@015a;
  $  007.EPS(电动助力转向系统)                 $    $  /     $    $  ANS000.BYTE004  $  if(((x>>7)&1)) y=@015b;else y=@015a;
  $  008.SAS(方向盘转角传感器)                 $    $  /     $    $  ANS000.BYTE005  $  if(((x>>0)&1)) y=@015b;else y=@015a;
  $  009.FRS(前雷达系统)                       $    $  /     $    $  ANS000.BYTE005  $  if(((x>>1)&1)) y=@015b;else y=@015a;
  $  010.AC(空调控制器)                        $    $  /     $    $  ANS000.BYTE005  $  if(((x>>2)&1)) y=@015b;else y=@015a;
  $  011.MMI(多媒体交互系统)                   $    $  /     $    $  ANS000.BYTE005  $  if(((x>>3)&1)) y=@015b;else y=@015a;
  $  012.PAS(泊车辅助系统)                     $    $  /     $    $  ANS000.BYTE005  $  if(((x>>4)&1)) y=@015b;else y=@015a;
  $  013.TPMS(胎压监视系统)                    $    $  /     $    $  ANS000.BYTE005  $  if(((x>>5)&1)) y=@015b;else y=@015a;
  $  014.T-BOX(远程信息处理控制器)             $    $  /     $    $  ANS000.BYTE005  $  if(((x>>6)&1)) y=@015b;else y=@015a;
  $  015.ESCL(电子转向柱锁控制单元)            $    $  /     $    $  ANS000.BYTE005  $  if(((x>>7)&1)) y=@015b;else y=@015a;
  $  016.EPB(电子驻车制动系统)                 $    $  /     $    $  ANS000.BYTE006  $  if(((x>>0)&1)) y=@015b;else y=@015a;
  $  017.FCS(前摄像头系统)                     $    $  /     $    $  ANS000.BYTE006  $  if(((x>>1)&1)) y=@015b;else y=@015a;
  $  018.PTG(后背门自动举升)                   $    $  /     $    $  ANS000.BYTE006  $  if(((x>>2)&1)) y=@015b;else y=@015a;
  $  019.DSCU(驾驶员座椅控制模块)              $    $  /     $    $  ANS000.BYTE006  $  if(((x>>3)&1)) y=@015b;else y=@015a;
  $  020.AFS(智能前大灯随动系统)               $    $  /     $    $  ANS000.BYTE006  $  if(((x>>4)&1)) y=@015b;else y=@015a;
  $  021.ABS(防抱死系统)                       $    $  /     $    $  ANS000.BYTE006  $  if(((x>>5)&1)) y=@015b;else y=@015a;
  $  022.IMMO(防盗控制模块)                    $    $  /     $    $  ANS000.BYTE006  $  if(((x>>6)&1)) y=@015b;else y=@015a;
  $  023.4WD(四轮驱动系统)                     $    $  /     $    $  ANS000.BYTE006  $  if(((x>>7)&1)) y=@015b;else y=@015a;
  $  024.PTC(高压电加热电阻)                   $    $  /     $    $  ANS000.BYTE007  $  if(((x>>0)&1)) y=@015b;else y=@015a;
  $  025.EGSM(电子换档器)                      $    $  /     $    $  ANS000.BYTE007  $  if(((x>>1)&1)) y=@015b;else y=@015a;
  $  026.BSG(启动电机控制单元)                 $    $  /     $    $  ANS000.BYTE007  $  if(((x>>2)&1)) y=@015b;else y=@015a;
  $  027.BMS(电池管理系统)                     $    $  /     $    $  ANS000.BYTE007  $  if(((x>>3)&1)) y=@015b;else y=@015a;
  $  028.DCDC(直流转换器)                      $    $  /     $    $  ANS000.BYTE007  $  if(((x>>4)&1)) y=@015b;else y=@015a;
  $  029.VCU(整车控制器)                       $    $  /     $    $  ANS000.BYTE007  $  if(((x>>5)&1)) y=@015b;else y=@015a;
  $  030.OBC(车载充电机)                       $    $  /     $    $  ANS000.BYTE007  $  if(((x>>6)&1)) y=@015b;else y=@015a;
  $  031.IPU(集成动力控制器)                   $    $  /     $    $  ANS000.BYTE007  $  if(((x>>7)&1)) y=@015b;else y=@015a;
  $  032.ACCM(空调压缩机)                      $    $  /     $    $  ANS000.BYTE008  $  if(((x>>0)&1)) y=@015b;else y=@015a;

  $)  02.网络管理历史
  $  02.网络管理历史
  $  REQ000:794 03 22 10 01 00 00 00 00       $  ANS000:79C 03 22 10 01 00 00 00 00

  $  000.最近网络管理历史状态             $    $  /     $    $  ANS000.BYTE004  $  switxh(x)0x01:y=@0000;0x02:y=@0e36;0x03:y=@0e37;0x04:y=@0e38;0x05:y=@0e39;0x06:y=@0e3a;0x07:y=@0e3b;0x08:y=@0e3c;0x09:y=@0e3d; default:y=@000b;
  $  001.最近里程表状态                   $    $  /     $    $  ANS000.BYTE005  $  y=x1*256*256+x2*256+x3;
  $  002.最近第2次网络管理历史状态        $    $  /     $    $  ANS000.BYTE008  $  switxh(x)0x01:y=@0000;0x02:y=@0e36;0x03:y=@0e37;0x04:y=@0e38;0x05:y=@0e39;0x06:y=@0e3a;0x07:y=@0e3b;0x08:y=@0e3c;0x09:y=@0e3d; default:y=@000b;
  $  003.最近第2次里程表状态              $    $  /     $    $  ANS000.BYTE009  $  y=x1*256*256+x2*256+x3;
  $  004.最近第3次网络管理历史状态        $    $  /     $    $  ANS000.BYTE012  $  switxh(x)0x01:y=@0000;0x02:y=@0e36;0x03:y=@0e37;0x04:y=@0e38;0x05:y=@0e39;0x06:y=@0e3a;0x07:y=@0e3b;0x08:y=@0e3c;0x09:y=@0e3d; default:y=@000b;
  $  005.最近第3次里程表状态              $    $  /     $    $  ANS000.BYTE013  $  y=x1*256*256+x2*256+x3;
  $  006.最近第4次网络管理历史状态        $    $  /     $    $  ANS000.BYTE016  $  switxh(x)0x01:y=@0000;0x02:y=@0e36;0x03:y=@0e37;0x04:y=@0e38;0x05:y=@0e39;0x06:y=@0e3a;0x07:y=@0e3b;0x08:y=@0e3c;0x09:y=@0e3d; default:y=@000b;
  $  007.最近第4次里程表状态              $    $  /     $    $  ANS000.BYTE017  $  y=x1*256*256+x2*256+x3;
  $  008.最近第5次网络管理历史状态        $    $  /     $    $  ANS000.BYTE020  $  switxh(x)0x01:y=@0000;0x02:y=@0e36;0x03:y=@0e37;0x04:y=@0e38;0x05:y=@0e39;0x06:y=@0e3a;0x07:y=@0e3b;0x08:y=@0e3c;0x09:y=@0e3d; default:y=@000b;
  $  009.最近第5次里程表状态              $    $  /     $    $  ANS000.BYTE021  $  y=x1*256*256+x2*256+x3;
  $  010.最近第6次网络管理历史状态        $    $  /     $    $  ANS000.BYTE024  $  switxh(x)0x01:y=@0000;0x02:y=@0e36;0x03:y=@0e37;0x04:y=@0e38;0x05:y=@0e39;0x06:y=@0e3a;0x07:y=@0e3b;0x08:y=@0e3c;0x09:y=@0e3d; default:y=@000b;
  $  011.最近第6次里程表状态              $    $  /     $    $  ANS000.BYTE025  $  y=x1*256*256+x2*256+x3;
  $  012.最近第7次网络管理历史状态        $    $  /     $    $  ANS000.BYTE028  $  switxh(x)0x01:y=@0000;0x02:y=@0e36;0x03:y=@0e37;0x04:y=@0e38;0x05:y=@0e39;0x06:y=@0e3a;0x07:y=@0e3b;0x08:y=@0e3c;0x09:y=@0e3d; default:y=@000b;
  $  013.最近第7次里程表状态              $    $  /     $    $  ANS000.BYTE029  $  y=x1*256*256+x2*256+x3;
  $  014.最近第8次网络管理历史状态        $    $  /     $    $  ANS000.BYTE032  $  switxh(x)0x01:y=@0000;0x02:y=@0e36;0x03:y=@0e37;0x04:y=@0e38;0x05:y=@0e39;0x06:y=@0e3a;0x07:y=@0e3b;0x08:y=@0e3c;0x09:y=@0e3d; default:y=@000b;
  $  015.最近第8次里程表状态              $    $  /     $    $  ANS000.BYTE033  $  y=x1*256*256+x2*256+x3;
  $  016.最近第9次网络管理历史状态        $    $  /     $    $  ANS000.BYTE036  $  switxh(x)0x01:y=@0000;0x02:y=@0e36;0x03:y=@0e37;0x04:y=@0e38;0x05:y=@0e39;0x06:y=@0e3a;0x07:y=@0e3b;0x08:y=@0e3c;0x09:y=@0e3d; default:y=@000b;
  $  017.最近第9次里程表状态              $    $  /     $    $  ANS000.BYTE037  $  y=x1*256*256+x2*256+x3;
  $  018.最近第10次网络管理历史状态       $    $  /     $    $  ANS000.BYTE040  $  switxh(x)0x01:y=@0000;0x02:y=@0e36;0x03:y=@0e37;0x04:y=@0e38;0x05:y=@0e39;0x06:y=@0e3a;0x07:y=@0e3b;0x08:y=@0e3c;0x09:y=@0e3d; default:y=@000b;
  $  019.最近第10次里程表状态             $    $  /     $    $  ANS000.BYTE041  $  y=x1*256*256+x2*256+x3;

  $)  03.电子换挡器位置
  $  03.电子换挡器位置
  $  REQ000:794 03 22 10 00 00 00 00 00       $  ANS000:79C 03 22 10 00 00 00 00 00

  $  000.电子换挡器探测位置：手动       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>6)&1))y=@001c;else y=@001d;
  $  001.电子换挡器探测位置：自动       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>5)&1))y=@001c;else y=@001d;
  $  002.电子换挡器位置：++             $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@001c;else y=@001d;
  $  003.电子换挡器位置：+              $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@001c;else y=@001d;
  $  004.电子换挡器位置：中间位置       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@001c;else y=@001d;
  $  005.电子换挡器位置：-              $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@001c;else y=@001d;
  $  006.电子换挡器位置：--             $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@001c;else y=@001d;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:794 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
