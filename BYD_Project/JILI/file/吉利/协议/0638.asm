
    车型ID：0638

    模拟：协议模拟-->0638

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~79D

进入命令:

  $~  REQ000:795 02 10 01 00 00 00 00 00       $~  ANS000:79D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:795 02 3E 00 00 00 00 00 00       $!  ANS000:79D 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:795 03 19 02 09 00 00 00 00       $#  ANS000:79D 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/45000000


  $#  01.读故障码库
  $#  REQ000:795 02 19 0A 00 00 00 00 00       $#  ANS000:79D 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/45000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:795 04 14 FF FF FF 00 00 00       $$  ANS000:79D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:795 03 22 F1 12 00 00 00 00       $%  ANS000:79D 03 22 F1 12 00 00 00 00
  $%  REQ001:795 03 22 F1 87 00 00 00 00       $%  ANS001:79D 03 22 F1 87 00 00 00 00
  $%  REQ002:795 03 22 F1 89 00 00 00 00       $%  ANS002:79D 03 22 F1 89 00 00 00 00
  $%  REQ003:795 03 22 F1 8A 00 00 00 00       $%  ANS003:79D 03 22 F1 8A 00 00 00 00
  $%  REQ004:795 03 22 F1 8B 00 00 00 00       $%  ANS004:79D 03 22 F1 8B 00 00 00 00
  $%  REQ005:795 03 22 F1 8C 00 00 00 00       $%  ANS005:79D 03 22 F1 8C 00 00 00 00
  $%  REQ006:795 03 22 F1 90 00 00 00 00       $%  ANS006:79D 03 22 F1 90 00 00 00 00
  $%  REQ007:795 03 22 F1 93 00 00 00 00       $%  ANS007:79D 03 22 F1 93 00 00 00 00
  $%  REQ008:795 03 22 F1 95 00 00 00 00       $%  ANS008:79D 03 22 F1 95 00 00 00 00
  $%  REQ009:795 03 22 F1 9D 00 00 00 00       $%  ANS009:79D 03 22 F1 9D 00 00 00 00
  $%  REQ010:795 03 22 F1 97 00 00 00 00       $%  ANS010:79D 03 22 F1 97 00 00 00 00

  $%  000:车辆名称:                                  $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                    $%    $%  ANS001.BYTE004  $%  0 ASCII
  $%  002:Geely软件版本号:                           $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3);
  $%  003:供应商代码:                                $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:ECU(电子控制器)生产日期:                   $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                     $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号(VIN码):                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                 $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                 $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:                   $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:ECU(电子控制器)系统名称或发动机类型:       $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读数据流
  $  00.读数据流
  $  REQ000:795 03 22 F1 10 00 00 00 00       $  ANS000:79D 03 22 F1 10 00 00 00 00

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
  $  REQ000:795 03 22 5C 14 00 00 00 00       $  ANS000:79D 03 22 5C 14 00 00 00 00

  $  000.读取学习状态       $    $  /     $    $  ANS000.BYTE004  $  switxh(x) 0x01:y=@075d;0x02:y=@075e;0x03:y=@075f;0x04:y=@0760;0x05:y=@0761;0x06:y=@0762;0x07:y=@0763;0x08:y=@0764;0x09:y=@0765;0x0A:y=@0766;0x0E:y=@0767;0x0F:y=@0768;0x10:y=@0769;0x11:y=@076a;0x12:y=@076b;0x13:y=@076c;0x14:y=@076d;0x15:y=@076e;0x16:y=@076f;0x17:y=@0770;0x18:y=@0771;0x19:y=@0772;default:y=@001e;

  $)  02.最后检查学习状态
  $  02.最后检查学习状态
  $  REQ000:795 03 22 5C B5 00 00 00 00       $  ANS000:79D 03 22 5C B5 00 00 00 00

  $  000.PEPS(无钥匙进入一键式启动单元)学习状态       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@0131;else y=@0130;
  $  001.ESCL(电子转向柱锁控制单元)学习状态           $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@0131;else y=@0130;
  $  002.EMS(发动机管理系统)学习状态                  $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@0131;else y=@0130;
  $  003.智能钥匙1学习状态                            $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@0131;else y=@0130;
  $  004.智能钥匙2学习状态                            $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@0131;else y=@0130;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:795 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
