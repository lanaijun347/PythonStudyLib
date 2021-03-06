
    车型ID：210f

    模拟：协议模拟-->210f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~788

进入命令:

  $~  REQ000:780 02 10 01 00 00 00 00 00       $~  ANS000:788 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:780 02 3E 80 00 00 00 00 00       $!  ANS000:788 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:780 03 19 02 09 00 00 00 00       $#  ANS000:788 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b6000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:780 04 14 FF FF FF 00 00 00       $$  ANS000:788 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:780 03 22 F1 93 00 00 00 00       $%  ANS000:788 03 22 F1 93 00 00 00 00
  $%  REQ001:780 03 22 F1 94 00 00 00 00       $%  ANS001:788 03 22 F1 94 00 00 00 00
  $%  REQ002:780 03 22 F1 95 00 00 00 00       $%  ANS002:788 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,x1%100/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%d年%d月%d日],x1,x2,x3);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1*256+x2)/10000,(x1*256+x2)%10000/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%d年%d月%d日],x1,x2,x3);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:780 03 22 00 04 00 00 00 00       $  ANS000:788 03 22 00 04 00 00 00 00
  $  REQ001:780 03 22 00 05 00 00 00 00       $  ANS001:788 03 22 00 05 00 00 00 00
  $  REQ002:780 03 22 00 06 00 00 00 00       $  ANS002:788 03 22 00 06 00 00 00 00
  $  REQ003:780 03 22 00 08 00 00 00 00       $  ANS003:788 03 22 00 08 00 00 00 00
  $  REQ004:780 03 22 00 0A 00 00 00 00       $  ANS004:788 03 22 00 0A 00 00 00 00
  $  REQ005:780 03 22 00 0B 00 00 00 00       $  ANS005:788 03 22 00 0B 00 00 00 00
  $  REQ006:780 03 22 00 0C 00 00 00 00       $  ANS006:788 03 22 00 0C 00 00 00 00
  $  REQ007:780 03 22 00 0D 00 00 00 00       $  ANS007:788 03 22 00 0D 00 00 00 00
  $  REQ008:780 03 22 00 10 00 00 00 00       $  ANS008:788 03 22 00 10 00 00 00 00
  $  REQ009:780 03 22 00 11 00 00 00 00       $  ANS009:788 03 22 00 11 00 00 00 00
  $  REQ010:780 03 22 00 12 00 00 00 00       $  ANS010:788 03 22 00 12 00 00 00 00
  $  REQ011:780 03 22 00 15 00 00 00 00       $  ANS011:788 03 22 00 15 00 00 00 00
  $  REQ012:780 03 22 00 17 00 00 00 00       $  ANS012:788 03 22 00 17 00 00 00 00
  $  REQ013:780 03 22 00 18 00 00 00 00       $  ANS013:788 03 22 00 18 00 00 00 00
  $  REQ014:780 03 22 00 19 00 00 00 00       $  ANS014:788 03 22 00 19 00 00 00 00
  $  REQ015:780 03 22 00 1B 00 00 00 00       $  ANS015:788 03 22 00 1B 00 00 00 00
  $  REQ016:780 03 22 00 1C 00 00 00 00       $  ANS016:788 03 22 00 1C 00 00 00 00
  $  REQ017:780 03 22 00 1D 00 00 00 00       $  ANS017:788 03 22 00 1D 00 00 00 00
  $  REQ018:780 03 22 00 1E 00 00 00 00       $  ANS018:788 03 22 00 1E 00 00 00 00
  $  REQ019:780 03 22 00 1F 00 00 00 00       $  ANS019:788 03 22 00 1F 00 00 00 00
  $  REQ020:780 03 22 00 20 00 00 00 00       $  ANS020:788 03 22 00 20 00 00 00 00
  $  REQ021:780 03 22 00 21 00 00 00 00       $  ANS021:788 03 22 00 21 00 00 00 00
  $  REQ022:780 03 22 00 22 00 00 00 00       $  ANS022:788 03 22 00 22 00 00 00 00
  $  REQ023:780 03 22 00 23 00 00 00 00       $  ANS023:788 03 22 00 23 00 00 00 00
  $  REQ024:780 03 22 00 24 00 00 00 00       $  ANS024:788 03 22 00 24 00 00 00 00
  $  REQ025:780 03 22 00 2B 00 00 00 00       $  ANS025:788 03 22 00 2B 00 00 00 00
  $  REQ026:780 03 22 00 40 00 00 00 00       $  ANS026:788 03 22 00 40 00 00 00 00
  $  REQ027:780 03 22 00 41 00 00 00 00       $  ANS027:788 03 22 00 41 00 00 00 00
  $  REQ028:780 03 22 00 42 00 00 00 00       $  ANS028:788 03 22 00 42 00 00 00 00
  $  REQ029:780 03 22 00 43 00 00 00 00       $  ANS029:788 03 22 00 43 00 00 00 00
  $  REQ030:780 03 22 00 44 00 00 00 00       $  ANS030:788 03 22 00 44 00 00 00 00
  $  REQ031:780 03 22 00 45 00 00 00 00       $  ANS031:788 03 22 00 45 00 00 00 00
  $  REQ032:780 03 22 00 46 00 00 00 00       $  ANS032:788 03 22 00 46 00 00 00 00
  $  REQ033:780 03 22 00 56 00 00 00 00       $  ANS033:788 03 22 00 56 00 00 00 00
  $  REQ034:780 03 22 00 57 00 00 00 00       $  ANS034:788 03 22 00 57 00 00 00 00
  $  REQ035:780 03 22 00 58 00 00 00 00       $  ANS035:788 03 22 00 58 00 00 00 00
  $  REQ036:780 03 22 00 59 00 00 00 00       $  ANS036:788 03 22 00 59 00 00 00 00
  $  REQ037:780 03 22 00 60 00 00 00 00       $  ANS037:788 03 22 00 60 00 00 00 00
  $  REQ038:780 03 22 00 62 00 00 00 00       $  ANS038:788 03 22 00 62 00 00 00 00
  $  REQ039:780 03 22 00 63 00 00 00 00       $  ANS039:788 03 22 00 63 00 00 00 00
  $  REQ040:780 03 22 00 64 00 00 00 00       $  ANS040:788 03 22 00 64 00 00 00 00
  $  REQ041:780 03 22 00 65 00 00 00 00       $  ANS041:788 03 22 00 65 00 00 00 00

  $  000.电机开启状态                              $    $               $    $  ANS000.BYTE004  $  switxh(x1)0x00: y=@0012;0x01: y=@0010;default: y=@0001;
  $  001.制动踏板状态                              $    $               $    $  ANS001.BYTE004  $  switxh(x1)0x00: y=@08bb;0x01: y=@08bc;default: y=@0001;
  $  002.驻车开关状态                              $    $               $    $  ANS002.BYTE004  $  switxh(x1)0x00: y=@08bb;0x01: y=@08bc;default: y=@0001;
  $  003.档位                                      $    $               $    $  ANS003.BYTE004  $  switxh(x1)0x01: y=@013a;0x02: y=@010d;0x03: y=@010e;0x04: y=@013b;default: y=@0001;
  $  004.工作模式                                  $    $               $    $  ANS004.BYTE004  $  switxh(x1)0x01: y=@049f;0x02: y=@045e;0x03: y=@0167;default: y=@0001;
  $  005.上电启动开始命令                          $    $               $    $  ANS005.BYTE004  $  switxh(x1)0x00: y=@0482;0x01: y=@0483;default: y=@0001;
  $  006.READY(准备就绪)指示灯状态                 $    $               $    $  ANS006.BYTE004  $  switxh(x1)0x00: y=@05eb;0x01: y=@05ec;default: y=@0001;
  $  007.档位故障状态                              $    $               $    $  ANS007.BYTE004  $  switxh(x1)0x00: y=@014c;0x01: y=@0167;default: y=@0001;
  $  008.油门错误                                  $    $               $    $  ANS008.BYTE004  $  switxh(x1)0x00: y=@014c;0x01: y=@0167;default: y=@0001;
  $  009.碰撞告警                                  $    $               $    $  ANS009.BYTE004  $  switxh(x1)0x00: y=@014c;0x01: y=@0167;default: y=@0001;
  $  010.动力系统告警                              $    $               $    $  ANS010.BYTE004  $  switxh(x1)0x00: y=@014c;0x01: y=@0167;default: y=@0001;
  $  011.缺相保护                                  $    $               $    $  ANS011.BYTE004  $  switxh(x1)0x00: y=@014c;0x01: y=@0167;default: y=@0001;
  $  012.与ESP(电子车身稳定系统)通讯状态           $    $               $    $  ANS012.BYTE004  $  switxh(x1)0x00: y=@0526;0x01: y=@05e8;default: y=@0001;
  $  013.与ABS(防抱死刹车系统)通讯状态             $    $               $    $  ANS013.BYTE004  $  switxh(x1)0x00: y=@00c9;0x02: y=@08ba;default: y=@0001;
  $  014.与电池管理器通讯状态                      $    $               $    $  ANS014.BYTE004  $  switxh(x1)0x00: y=@0526;0x01: y=@05e8;default: y=@0001;
  $  015.与主控通讯状态                            $    $               $    $  ANS015.BYTE004  $  switxh(x1)0x00: y=@0526;0x01: y=@05e8;default: y=@0001;
  $  016.主接触器状态                              $    $               $    $  ANS016.BYTE004  $  switxh(x1)0x00: y=@007b;0x01: y=@0078;0x02: y=@04cc;default: y=@0001;
  $  017.油门位置                                  $    $  %            $    $  ANS017.BYTE004  $  y=x1;
  $  018.脚刹深度                                  $    $  %            $    $  ANS018.BYTE004  $  y=x1;
  $  019.动力电机母线电压                          $    $  V            $    $  ANS019.BYTE004  $  y=((x2<<8)+x1)*2;
  $  020.动力电机转速                              $    $  rpm          $    $  ANS020.BYTE004  $  y=11000-((x2<<8)+x1);
  $  021.电机扭矩                                  $    $  牛顿米       $    $  ANS021.BYTE004  $  y=(((x2<<8)+x1)-5000)*1.0/10;
  $  022.电机功率                                  $    $  kW           $    $  ANS022.BYTE004  $  y=(((x2<<8)+x1)-2000)*1.0/10;
  $  023.动力电机温度                              $    $  degree C     $    $  ANS023.BYTE004  $  y=x1-40;
  $  024.IGBT(绝缘栅双极型晶体管)最高温度          $    $  degree C     $    $  ANS024.BYTE004  $  y=x1-40;
  $  025.SCI通讯状态                               $    $               $    $  ANS025.BYTE004  $  switxh(x1)0x00: y=@014c;0x01: y=@0167;default: y=@0001;
  $  026.十五工况标志位                            $    $               $    $  ANS026.BYTE004  $  switxh(x1)0x00: y=@06a1;0x01: y=@06a2;default: y=@0001;
  $  027.油门采样值1                               $    $               $    $  ANS027.BYTE004  $  y=(x2<<8)+x1;
  $  028.油门采样值2                               $    $               $    $  ANS028.BYTE004  $  y=(x2<<8)+x1;
  $  029.IGBT(绝缘栅双极型晶体管)温度采样值U       $    $               $    $  ANS029.BYTE004  $  y=(x2<<8)+x1;
  $  030.IGBT(绝缘栅双极型晶体管)温度采样值V       $    $               $    $  ANS030.BYTE004  $  y=(x2<<8)+x1;
  $  031.IGBT(绝缘栅双极型晶体管)温度采样值W       $    $               $    $  ANS031.BYTE004  $  y=(x2<<8)+x1;
  $  032.电机温度采样值                            $    $               $    $  ANS032.BYTE004  $  y=(x2<<8)+x1;
  $  033.驱动电机系统配置类型                      $    $               $    $  ANS033.BYTE004  $  switxh(x1)0x00: y=@08bd;0x01: y=@08be;default: y=@0001;
  $  034.倾角传感器是否校准                        $    $               $    $  ANS034.BYTE004  $  switxh(x1)0x00: y=@015e;0x01: y=@08bf;default: y=@0001;
  $  035.倾角传感器信息状态                        $    $               $    $  ANS035.BYTE004  $  switxh(x1)0x00: y=@0167;0x01: y=@0078;default: y=@0001;
  $  036.倾角值                                    $    $  %(°)        $    $  ANS036.BYTE004  $  y=x1-100;
  $  037.直流充电目标输入电压                      $    $  V            $    $  ANS037.BYTE004  $  y=(x2<<8)+x1;
  $  038.直流充电实际输入电压                      $    $  V            $    $  ANS038.BYTE004  $  y=(x2<<8)+x1;
  $  039.直流充电实际输入电流                      $    $  A            $    $  ANS039.BYTE004  $  y=((x2<<8)+x1)*1.0/10-500;
  $  040.降压模块状态                              $    $               $    $  ANS040.BYTE004  $  switxh(x1)0x00: y=@0415;0x01: y=@042c;0x02: y=@042d;0x03: y=@042e;default: y=@0001;
  $  041.升降压DC模块故障                          $    $               $    $  ANS041.BYTE004  $  switxh(x1)0x01: y=@0167;0x00: y=@0078;default: y=@0001;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:780 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
