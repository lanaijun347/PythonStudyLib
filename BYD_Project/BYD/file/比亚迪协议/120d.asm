
    车型ID：120d

    模拟：协议模拟-->120d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:780 02 10 01 00 00 00 00 00       $~  ANS000:788 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:780 02 3E 80 00 00 00 00 00       $!  ANS000:788 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:780 03 19 02 09 00 00 00 00       $#  ANS000:788 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:780 04 14 FF FF FF 00 00 00       $$  ANS000:788 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:780 03 22 F1 93 00 00 00 00       $%  ANS000:788 03 22 F1 93 00 00 00 00
  $%  REQ001:780 03 22 F1 94 00 00 00 00       $%  ANS001:788 03 22 F1 94 00 00 00 00
  $%  REQ002:780 03 22 F1 95 00 00 00 00       $%  ANS002:788 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流
  $  00.数据流
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
  $  REQ025:780 03 22 00 25 00 00 00 00       $  ANS025:788 03 22 00 25 00 00 00 00
  $  REQ026:780 03 22 00 28 00 00 00 00       $  ANS026:788 03 22 00 28 00 00 00 00
  $  REQ027:780 03 22 00 29 00 00 00 00       $  ANS027:788 03 22 00 29 00 00 00 00
  $  REQ028:780 03 22 00 2A 00 00 00 00       $  ANS028:788 03 22 00 2A 00 00 00 00
  $  REQ029:780 03 22 00 2B 00 00 00 00       $  ANS029:788 03 22 00 2B 00 00 00 00
  $  REQ030:780 03 22 00 2C 00 00 00 00       $  ANS030:788 03 22 00 2C 00 00 00 00
  $  REQ031:780 03 22 00 2F 00 00 00 00       $  ANS031:788 03 22 00 2F 00 00 00 00
  $  REQ032:780 03 22 00 30 00 00 00 00       $  ANS032:788 03 22 00 30 00 00 00 00
  $  REQ033:780 03 22 00 31 00 00 00 00       $  ANS033:788 03 22 00 31 00 00 00 00
  $  REQ034:780 03 22 00 32 00 00 00 00       $  ANS034:788 03 22 00 32 00 00 00 00
  $  REQ035:780 03 22 00 33 00 00 00 00       $  ANS035:788 03 22 00 33 00 00 00 00
  $  REQ036:780 03 22 00 34 00 00 00 00       $  ANS036:788 03 22 00 34 00 00 00 00
  $  REQ037:780 03 22 00 35 00 00 00 00       $  ANS037:788 03 22 00 35 00 00 00 00
  $  REQ038:780 03 22 00 36 00 00 00 00       $  ANS038:788 03 22 00 36 00 00 00 00
  $  REQ039:780 03 22 00 37 00 00 00 00       $  ANS039:788 03 22 00 37 00 00 00 00
  $  REQ040:780 03 22 00 38 00 00 00 00       $  ANS040:788 03 22 00 38 00 00 00 00
  $  REQ041:780 03 22 00 39 00 00 00 00       $  ANS041:788 03 22 00 39 00 00 00 00
  $  REQ042:780 03 22 00 3A 00 00 00 00       $  ANS042:788 03 22 00 3A 00 00 00 00
  $  REQ043:780 03 22 00 3B 00 00 00 00       $  ANS043:788 03 22 00 3B 00 00 00 00
  $  REQ044:780 03 22 00 3C 00 00 00 00       $  ANS044:788 03 22 00 3C 00 00 00 00
  $  REQ045:780 03 22 00 3D 00 00 00 00       $  ANS045:788 03 22 00 3D 00 00 00 00
  $  REQ046:780 03 22 00 3E 00 00 00 00       $  ANS046:788 03 22 00 3E 00 00 00 00
  $  REQ047:780 03 22 00 3F 00 00 00 00       $  ANS047:788 03 22 00 3F 00 00 00 00
  $  REQ048:780 03 22 00 40 00 00 00 00       $  ANS048:788 03 22 00 40 00 00 00 00
  $  REQ049:780 03 22 00 41 00 00 00 00       $  ANS049:788 03 22 00 41 00 00 00 00
  $  REQ050:780 03 22 00 42 00 00 00 00       $  ANS050:788 03 22 00 42 00 00 00 00
  $  REQ051:780 03 22 00 43 00 00 00 00       $  ANS051:788 03 22 00 43 00 00 00 00
  $  REQ052:780 03 22 00 44 00 00 00 00       $  ANS052:788 03 22 00 44 00 00 00 00
  $  REQ053:780 03 22 00 45 00 00 00 00       $  ANS053:788 03 22 00 45 00 00 00 00
  $  REQ054:780 03 22 00 46 00 00 00 00       $  ANS054:788 03 22 00 46 00 00 00 00
  $  REQ055:780 03 22 00 47 00 00 00 00       $  ANS055:788 03 22 00 47 00 00 00 00
  $  REQ056:780 03 22 00 48 00 00 00 00       $  ANS056:788 03 22 00 48 00 00 00 00
  $  REQ057:780 03 22 00 49 00 00 00 00       $  ANS057:788 03 22 00 49 00 00 00 00
  $  REQ058:780 03 22 00 50 00 00 00 00       $  ANS058:788 03 22 00 50 00 00 00 00
  $  REQ059:780 03 22 00 51 00 00 00 00       $  ANS059:788 03 22 00 51 00 00 00 00
  $  REQ060:780 03 22 00 52 00 00 00 00       $  ANS060:788 03 22 00 52 00 00 00 00
  $  REQ061:780 03 22 00 53 00 00 00 00       $  ANS061:788 03 22 00 53 00 00 00 00
  $  REQ062:780 03 22 00 54 00 00 00 00       $  ANS062:788 03 22 00 54 00 00 00 00
  $  REQ063:780 03 22 00 55 00 00 00 00       $  ANS063:788 03 22 00 55 00 00 00 00
  $  REQ064:780 03 22 00 56 00 00 00 00       $  ANS064:788 03 22 00 56 00 00 00 00
  $  REQ065:780 03 22 00 57 00 00 00 00       $  ANS065:788 03 22 00 57 00 00 00 00
  $  REQ066:780 03 22 00 58 00 00 00 00       $  ANS066:788 03 22 00 58 00 00 00 00
  $  REQ067:780 03 22 00 59 00 00 00 00       $  ANS067:788 03 22 00 59 00 00 00 00
  $  REQ068:780 03 22 00 60 00 00 00 00       $  ANS068:788 03 22 00 60 00 00 00 00
  $  REQ069:780 03 22 00 62 00 00 00 00       $  ANS069:788 03 22 00 62 00 00 00 00
  $  REQ070:780 03 22 00 63 00 00 00 00       $  ANS070:788 03 22 00 63 00 00 00 00
  $  REQ071:780 03 22 00 64 00 00 00 00       $  ANS071:788 03 22 00 64 00 00 00 00
  $  REQ072:780 03 22 00 65 00 00 00 00       $  ANS072:788 03 22 00 65 00 00 00 00

  $  000:电机开启状态                              $    $               $    $  ANS000.BYTE004  $  if(x1 == 0x00) y=@0005;else if(x1 == 0x01) y=@0004;else y=@001c;
  $  001:制动踏板状态                              $    $               $    $  ANS001.BYTE004  $  if(x1==0x00)y=@00aa;else if(x1==0x01)y=@063e;else y=@001c;
  $  002:驻车开关状态                              $    $               $    $  ANS002.BYTE004  $  if(x1==0x00)y=@00aa;else if(x1==0x01)y=@063e;else y=@001c;
  $  003:档位                                      $    $               $    $  ANS003.BYTE004  $  if(x1==0x01)y=@0132;else if(x1==0x02)y=@00c7;else if(x1==0x03)y=@00c8;else if(x1==0x04)y=@0133;else y=@001c;
  $  004:工作模式                                  $    $               $    $  ANS004.BYTE004  $  if(x1==0x01)y=@01b6;else if(x1==0x02)y=@01b7;else if(x1==0x03)y=@0059;else y=@001c;
  $  005:上电启动开始命令                          $    $               $    $  ANS005.BYTE004  $  if(x1==0x00)y=@013e;else if(x1==0x01)y=@013f;else y=@001c;
  $  006:READY(准备就绪)指示灯状态                 $    $               $    $  ANS006.BYTE004  $  if(x1==0x00)y=@0372;else if(x1==0x01)y=@0373;else y=@001c;
  $  007:档位故障状态                              $    $               $    $  ANS007.BYTE004  $  if(x1==0x00)y=@0375;else if(x1==0x01)y=@0059;else y=@001c;
  $  008:油门错误                                  $    $               $    $  ANS008.BYTE004  $  if(x1==0x00)y=@0375;else if(x1==0x01)y=@0059;else y=@001c;
  $  009:碰撞告警                                  $    $               $    $  ANS009.BYTE004  $  if(x1==0x00)y=@0375;else if(x1==0x01)y=@0059;else y=@001c;
  $  010:动力系统告警                              $    $               $    $  ANS010.BYTE004  $  if(x1==0x00)y=@0375;else if(x1==0x01)y=@0059;else y=@001c;
  $  011:缺相保护                                  $    $               $    $  ANS011.BYTE004  $  if(x1==0x00)y=@0375;else if(x1==0x01)y=@0059;else y=@001c;
  $  012:与ESP(电子车身稳定系统)通讯状态           $    $               $    $  ANS012.BYTE004  $  if(x1==0x00)y=@02e8;else if(x1==0x01)y=@0370;else y=@001c;
  $  013:与ABS(防抱死刹车系统)通讯状态             $    $               $    $  ANS013.BYTE004  $  if(x1==0x00)y=@02e8;else if(x1==0x02)y=@0370;else y=@001c;
  $  014:与电池管理器通讯状态                      $    $               $    $  ANS014.BYTE004  $  if(x1==0x00)y=@02e8;else if(x1==0x01)y=@0370;else y=@001c;
  $  015:与主控通讯状态                            $    $               $    $  ANS015.BYTE004  $  if(x1==0x00)y=@02e8;else if(x1==0x01)y=@0370;else y=@001c;
  $  016:主接触器状态                              $    $               $    $  ANS016.BYTE004  $  if(x1==0x00)y=@009e;else if(x1==0x01)y=@0022;else if(x1==0x02)y=@0151;else y=@001c;
  $  017:油门位置                                  $    $  %            $    $  ANS017.BYTE004  $  y=x1;
  $  018:脚刹深度                                  $    $  %            $    $  ANS018.BYTE004  $  y=x1;
  $  019:动力电机母线电压                          $    $  V            $    $  ANS019.BYTE004  $  y=(x1+x2*256)*2;
  $  020:动力电机转速                              $    $  rpm          $    $  ANS020.BYTE004  $  y=11000-(x1+x2*256);
  $  021:电机扭矩                                  $    $  牛顿米       $    $  ANS021.BYTE004  $  y=(x1+x2*256)/10-500;
  $  022:电机功率                                  $    $  Kw           $    $  ANS022.BYTE004  $  y=(x1+x2*256)*0.1-200;
  $  023:动力电机温度                              $    $  degree C     $    $  ANS023.BYTE004  $  y=x1-40;
  $  024:IGBT(绝缘栅双极型晶体管)最高温度          $    $  degree C     $    $  ANS024.BYTE004  $  y=x1-40;
  $  025:电感最高温度                              $    $  degree C     $    $  ANS025.BYTE004  $  y=x1-40;
  $  026:充放电系统工作状态                        $    $               $    $  ANS026.BYTE004  $  if(x1==0x00)y=@0152;else if(x1==0x01)y=@0376;else if(x1==0x02)y=@0154;else if(x1==0x03)y=@0155;else if(x1==0x04)y=@0156;else if(x1==0x05)y=@0157;else if(x1==0x06)y=@0377;else if(x1==0x07)y=@0159;else if(x1==0x08)y=@0378;else if(x1==0x09)y=@0379;else if(x1==0x0A)y=@037a;else y=@001c;
  $  027:充电连接装置连接状态                      $    $               $    $  ANS027.BYTE004  $  if(x1==0x00)y=@015e;else if(x1==0x01)y=@015f;else if(x1==0x02)y=@0160;else y=@001c;
  $  028:交流充电继电器动作请求命令                $    $               $    $  ANS028.BYTE004  $  if(x1==0x00)y=@06d1;else if(x1==0x01)y=@015d;else y=@001c;
  $  029:SCI通讯状态                               $    $               $    $  ANS029.BYTE004  $  if(x1==0x00)y=@0375;else if(x1==0x01)y=@0059;else y=@001c;
  $  030:充放电系统故障状态                        $    $               $    $  ANS030.BYTE004  $  if(x1==0x00)y=@0022;else if(x1==0x01)y=@04bd;else if(x1==0x02)y=@0162;else if(x1==0x03)y=@0163;else if(x1==0x04)y=@037b;else if(x1==0x05)y=@0165;else if(x1==0x06)y=@0166;else if(x1==0x07)y=@0167;else if(x1==0x08)y=@0168;else y=@001c;
  $  031:充电母线电压                              $    $  V            $    $  ANS031.BYTE004  $  y=x1+x2*256;
  $  032:充电直流侧电流                            $    $  A            $    $  ANS032.BYTE004  $  y=x1;
  $  033:控制器充电功率比                          $    $  kW           $    $  ANS033.BYTE004  $  y=(x1+x2*256)*0.1;
  $  034:电网交流频率                              $    $  Hz           $    $  ANS034.BYTE004  $  y=(x1+x2*256)*0.1;
  $  035:交流A相电压                               $    $  V            $    $  ANS035.BYTE004  $  y=x1*2;
  $  036:交流B相电压                               $    $  V            $    $  ANS036.BYTE004  $  y=x1*2;
  $  037:交流C相电压                               $    $  V            $    $  ANS037.BYTE004  $  y=x1*2;
  $  038:电网交流A相电流                           $    $  A            $    $  ANS038.BYTE004  $  y=x1;
  $  039:电网交流B相电流                           $    $  A            $    $  ANS039.BYTE004  $  y=x1;
  $  040:电网交流C相电流                           $    $  A            $    $  ANS040.BYTE004  $  y=x1;
  $  041:充电方式                                  $    $               $    $  ANS041.BYTE004  $  if(x1==0x00)y=@06cf;else if(x1==0x02)y=@06d0;else y=@001c;
  $  042:充电设备允许最大电流                      $    $  A            $    $  ANS042.BYTE004  $  y=x1;
  $  043:直流侧充电电流目标值                      $    $  A            $    $  ANS043.BYTE004  $  y=x1;
  $  044:充电口电锁请求                            $    $               $    $  ANS044.BYTE004  $  if(x1==0x00)y=@032b;else if(x1==0x01)y=@0064;else y=@001c;
  $  045:OBC(车载充电器)充放电请求                 $    $               $    $  ANS045.BYTE004  $  if(x1==0x00)y=@015c;else if(x1==0x01)y=@04ba;else if(x1==0x02)y=@04bb;else if(x1==0x03)y=@04bc;else y=@001c;
  $  046:充电口温度                                $    $  degree C     $    $  ANS046.BYTE004  $  y=x1;
  $  047:充电口拔插次数                            $    $               $    $  ANS047.BYTE004  $  y=x1+x2*256+x3*256*256;
  $  048:十五工况标志位                            $    $               $    $  ANS048.BYTE004  $  if(x1==0x00)y=@063c;else if(x1==0x01)y=@063d;else y=@001c;
  $  049:油门采样值1                               $    $               $    $  ANS049.BYTE004  $  y=x1+x2*256;
  $  050:油门采样值2                               $    $               $    $  ANS050.BYTE004  $  y=x1+x2*256;
  $  051:IGBT(绝缘栅双极型晶体管)温度采样值U       $    $               $    $  ANS051.BYTE004  $  y=x1+x2*256;
  $  052:IGBT(绝缘栅双极型晶体管)温度采样值V       $    $               $    $  ANS052.BYTE004  $  y=x1+x2*256;
  $  053:IGBT(绝缘栅双极型晶体管)温度采样值W       $    $               $    $  ANS053.BYTE004  $  y=x1+x2*256;
  $  054:电机温度采样值                            $    $               $    $  ANS054.BYTE004  $  y=x1+x2*256;
  $  055:电感温度采样值U                           $    $               $    $  ANS055.BYTE004  $  y=x1+x2*256;
  $  056:电感温度采样值V                           $    $               $    $  ANS056.BYTE004  $  y=x1+x2*256;
  $  057:电感温度采样值W                           $    $               $    $  ANS057.BYTE004  $  y=x1+x2*256;
  $  058:充电枪温度采样值1                         $    $               $    $  ANS058.BYTE004  $  y=x1+x2*256;
  $  059:充电枪温度采样值2                         $    $               $    $  ANS059.BYTE004  $  y=x1+x2*256;
  $  060:CC采样值                                  $    $               $    $  ANS060.BYTE004  $  y=x1+x2*256;
  $  061:CP占空比                                  $    $  %            $    $  ANS061.BYTE004  $  y=x1;
  $  062:充电S2开关吸合标志                        $    $               $    $  ANS062.BYTE004  $  if(x1==0x00)y=@002e;else if(x1==0x01)y=@002f;else y=@001c;
  $  063:发送CP标志位                              $    $               $    $  ANS063.BYTE004  $  if(x1==0x00)y=@04c3;else if(x1==0x01)y=@04c4;else y=@001c;
  $  064:驱动电机系统配置类型                      $    $               $    $  ANS064.BYTE004  $  if(x1==0x00)y=@01ba;else if(x1==0x01)y=@01bb;else y=@001c;
  $  065:倾角传感器是否校准                        $    $               $    $  ANS065.BYTE004  $  if(x1==0x00)y=@01b5;else if(x1==0x01)y=@04c5;else y=@001c;
  $  066:倾角传感器信息状态                        $    $               $    $  ANS066.BYTE004  $  if(x1==0x00)y=@0059;else if(x1==0x01)y=@0022;else y=@001c;
  $  067:倾角值                                    $    $  %(DEG)       $    $  ANS067.BYTE004  $  y=x1-100;
  $  068:直流充电目标输入电压                      $    $  V            $    $  ANS068.BYTE004  $  y=x1+x2*256;
  $  069:直流充电实际输入电压                      $    $  V            $    $  ANS069.BYTE004  $  y=x1+x2*256;
  $  070:直流充电实际输入电流                      $    $  A            $    $  ANS070.BYTE004  $  y=(x1+x2*256)*0.1-500;
  $  071:降压模块状态                              $    $               $    $  ANS071.BYTE004  $  if(x1==0x00)y=@0441;else if(x1==0x01)y=@04be;else if(x1==0x02)y=@04bf;else if(x1==0x03)y=@04c0;else y=@001c;
  $  072:升降压DC模块故障                          $    $               $    $  ANS072.BYTE004  $  if(x1==0x01)y=@0022;else if(x1==0x00)y=@0059;else y=@001c;

  $)  01.当前状态
  $  01.当前状态
  $  REQ000:780 03 22 3E 00 00 00 00 00       $  ANS000:788 03 22 3E 00 00 00 00 00
  $  REQ001:780 03 22 3E 01 00 00 00 00       $  ANS001:788 03 22 3E 01 00 00 00 00
  $  REQ002:780 03 22 3E 02 00 00 00 00       $  ANS002:788 03 22 3E 02 00 00 00 00
  $  REQ003:780 03 22 3E 03 00 00 00 00       $  ANS003:788 03 22 3E 03 00 00 00 00
  $  REQ004:780 03 22 3E 04 00 00 00 00       $  ANS004:788 03 22 3E 04 00 00 00 00
  $  REQ005:780 03 22 00 32 00 00 00 00       $  ANS005:788 03 22 00 32 00 00 00 00
  $  REQ006:780 03 22 00 33 00 00 00 00       $  ANS006:788 03 22 00 33 00 00 00 00
  $  REQ007:780 03 22 00 34 00 00 00 00       $  ANS007:788 03 22 00 34 00 00 00 00
  $  REQ008:780 03 22 00 35 00 00 00 00       $  ANS008:788 03 22 00 35 00 00 00 00
  $  REQ009:780 03 22 00 36 00 00 00 00       $  ANS009:788 03 22 00 36 00 00 00 00
  $  REQ010:780 03 22 00 37 00 00 00 00       $  ANS010:788 03 22 00 37 00 00 00 00
  $  REQ011:780 03 22 00 38 00 00 00 00       $  ANS011:788 03 22 00 38 00 00 00 00

  $  000:充放电状态             $    $         $    $  ANS000.BYTE004  $  if(x1==0x00)y=@0176;else if(x1==0x01)y=@0177;else if(x1==0x02)y=@0178;else if(x1==0x03)y=@0179;else if(x1==0x04)y=@017a;else if(x1==0x05)y=@017b;else y=@001c;
  $  001:当前电制频率           $    $  Hz     $    $  ANS001.BYTE004  $  if(x1 == 0x00) y=@04c1;else if(x1 == 0x01) y=@04c2;else y=@001c;
  $  002:当前电制三相电压       $    $  V      $    $  ANS002.BYTE004  $  if(x1 == 0x00) y=@04cb;else if(x1 == 0x01) y=@04c7;else if(x1 == 0x02) y=@04cc;else if(x1 == 0x03) y=@04cd;else if(x1 == 0x04) y=@04ce;else if(x1 ==0x05) y=@04cf;else y=@001c;
  $  003:当前电制单相电压       $    $  V      $    $  ANS003.BYTE004  $  if(x1 == 0x00) y=@04c6;else if(x1 == 0x01) y=@04c7;else if(x1 == 0x02) y=@04c8;else if(x1 == 0x03) y=@04c9;else if(x1 == 0x04) y=@04ca;else y=@001c;
  $  004:线电压                 $    $  V      $    $  ANS004.BYTE004  $  y=x1+x2*256;
  $  005:电网交流频率           $    $  Hz     $    $  ANS005.BYTE004  $  y=x1+x2*256;
  $  006:交流A相电压            $    $  V      $    $  ANS006.BYTE004  $  y=x1*2;
  $  007:交流B相电压            $    $  V      $    $  ANS007.BYTE004  $  y=x1*2;
  $  008:交流C相电压            $    $  V      $    $  ANS008.BYTE004  $  y=x1*2;
  $  009:电网交流A相电流        $    $  A      $    $  ANS009.BYTE004  $  y=x1;
  $  010:电网交流B相电流        $    $  A      $    $  ANS010.BYTE004  $  y=x1;
  $  011:电网交流C相电流        $    $  A      $    $  ANS011.BYTE004  $  y=x1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:780 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
