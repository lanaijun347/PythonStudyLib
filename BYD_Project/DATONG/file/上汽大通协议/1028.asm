
    车型ID：1028

    模拟：协议模拟-->1028

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:700 02 10 01 00 00 00 00 00       $~  ANS000:780 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:700 02 3E 80 00 00 00 00 00       $!  ANS000:780 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:700 03 19 02 09 00 00 00 00       $#  ANS000:780 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/28000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:700 04 14 FF FF FF 00 00 00       $$  ANS000:780 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:700 03 22 F1 A0 00 00 00 00       $%  ANS000:780 03 22 F1 A0 00 00 00 00
  $%  REQ001:700 03 22 F1 83 00 00 00 00       $%  ANS001:780 03 22 F1 83 00 00 00 00
  $%  REQ002:700 03 22 F1 91 00 00 00 00       $%  ANS002:780 03 22 F1 91 00 00 00 00
  $%  REQ003:700 03 22 F1 A2 00 00 00 00       $%  ANS003:780 03 22 F1 A2 00 00 00 00
  $%  REQ004:700 03 22 F1 87 00 00 00 00       $%  ANS004:780 03 22 F1 87 00 00 00 00
  $%  REQ005:700 03 22 F1 10 00 00 00 00       $%  ANS005:780 03 22 F1 10 00 00 00 00
  $%  REQ006:700 03 22 F1 92 00 00 00 00       $%  ANS006:780 03 22 F1 92 00 00 00 00
  $%  REQ007:700 03 22 F1 8C 00 00 00 00       $%  ANS007:780 03 22 F1 8C 00 00 00 00
  $%  REQ008:700 03 22 F1 94 00 00 00 00       $%  ANS008:780 03 22 F1 94 00 00 00 00
  $%  REQ009:700 03 22 F1 8A 00 00 00 00       $%  ANS009:780 03 22 F1 8A 00 00 00 00
  $%  REQ010:700 03 22 B2 00 00 00 00 00       $%  ANS010:780 03 22 B2 00 00 00 00 00
  $%  REQ011:700 03 22 F1 90 00 00 00 00       $%  ANS011:780 03 22 F1 90 00 00 00 00
  $%  REQ012:700 03 22 F1 A8 00 00 00 00       $%  ANS012:780 03 22 F1 A8 00 00 00 00
  $%  REQ013:700 03 22 F1 8B 00 00 00 00       $%  ANS013:780 03 22 F1 8B 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元硬件号:                  $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元网络文件参考号:          $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元零件号:                  $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元零件号(上次):            $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  006:测试工具参考号(上次):            $%    $%  ANS005.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  007:里程读数(上次)KM:                $%    $%  ANS005.BYTE015  $%  y=(x1*256*256+x2*256+x3);
  $%  008:供应商电控单元硬件参考号:        $%    $%  ANS006.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  009:供应商电控单元序列号:            $%    $%  ANS007.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  010:供应商电控单元软件参考号:        $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:系统供应商识别码:                $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  012:UAES电子标签:                    $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%c%c%c%02X%02X%02X%02X%2X%c%c%c%c%c%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  013:VIN码:                           $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  014:车辆特征信息:                    $%    $%  ANS012.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  015:电控单元制造日期:                $%    $%  ANS013.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:700 03 22 C1 50 00 00 00 00       $  ANS000:780 03 22 C1 50 00 00 00 00
  $  REQ001:700 03 22 D1 21 00 00 00 00       $  ANS001:780 03 22 D1 21 00 00 00 00
  $  REQ002:700 03 22 D2 12 00 00 00 00       $  ANS002:780 03 22 D2 12 00 00 00 00
  $  REQ003:700 03 22 C1 61 00 00 00 00       $  ANS003:780 03 22 C1 61 00 00 00 00
  $  REQ004:700 03 22 C1 52 00 00 00 00       $  ANS004:780 03 22 C1 52 00 00 00 00
  $  REQ005:700 03 22 D1 31 00 00 00 00       $  ANS005:780 03 22 D1 31 00 00 00 00
  $  REQ006:700 03 22 C1 67 00 00 00 00       $  ANS006:780 03 22 C1 67 00 00 00 00
  $  REQ007:700 03 22 C1 53 00 00 00 00       $  ANS007:780 03 22 C1 53 00 00 00 00
  $  REQ008:700 03 22 C1 54 00 00 00 00       $  ANS008:780 03 22 C1 54 00 00 00 00
  $  REQ009:700 03 22 D9 19 00 00 00 00       $  ANS009:780 03 22 D9 19 00 00 00 00
  $  REQ010:700 03 22 D9 13 00 00 00 00       $  ANS010:780 03 22 D9 13 00 00 00 00
  $  REQ011:700 03 22 D9 A1 00 00 00 00       $  ANS011:780 03 22 D9 A1 00 00 00 00
  $  REQ012:700 03 22 D9 12 00 00 00 00       $  ANS012:780 03 22 D9 12 00 00 00 00
  $  REQ013:700 03 22 D9 11 00 00 00 00       $  ANS013:780 03 22 D9 11 00 00 00 00
  $  REQ014:700 03 22 C1 65 00 00 00 00       $  ANS014:780 03 22 C1 65 00 00 00 00
  $  REQ015:700 03 22 C1 51 00 00 00 00       $  ANS015:780 03 22 C1 51 00 00 00 00
  $  REQ016:700 03 22 D9 A2 00 00 00 00       $  ANS016:780 03 22 D9 A2 00 00 00 00
  $  REQ017:700 03 22 D2 11 00 00 00 00       $  ANS017:780 03 22 D2 11 00 00 00 00
  $  REQ018:700 03 22 D9 14 00 00 00 00       $  ANS018:780 03 22 D9 14 00 00 00 00
  $  REQ019:700 03 22 C1 62 00 00 00 00       $  ANS019:780 03 22 C1 62 00 00 00 00
  $  REQ020:700 03 22 C1 69 00 00 00 00       $  ANS020:780 03 22 C1 69 00 00 00 00
  $  REQ021:700 03 22 C1 66 00 00 00 00       $  ANS021:780 03 22 C1 66 00 00 00 00
  $  REQ022:700 03 22 C1 56 00 00 00 00       $  ANS022:780 03 22 C1 56 00 00 00 00
  $  REQ023:700 03 22 C1 58 00 00 00 00       $  ANS023:780 03 22 C1 58 00 00 00 00
  $  REQ024:700 03 22 C1 60 00 00 00 00       $  ANS024:780 03 22 C1 60 00 00 00 00
  $  REQ025:700 03 22 D9 15 00 00 00 00       $  ANS025:780 03 22 D9 15 00 00 00 00
  $  REQ026:700 03 22 D9 18 00 00 00 00       $  ANS026:780 03 22 D9 18 00 00 00 00
  $  REQ027:700 03 22 D1 41 00 00 00 00       $  ANS027:780 03 22 D1 41 00 00 00 00
  $  REQ028:700 03 22 C1 64 00 00 00 00       $  ANS028:780 03 22 C1 64 00 00 00 00
  $  REQ029:700 03 22 C1 63 00 00 00 00       $  ANS029:780 03 22 C1 63 00 00 00 00
  $  REQ030:700 03 22 D1 11 00 00 00 00       $  ANS030:780 03 22 D1 11 00 00 00 00
  $  REQ031:700 03 22 D9 16 00 00 00 00       $  ANS031:780 03 22 D9 16 00 00 00 00
  $  REQ032:700 03 22 D9 17 00 00 00 00       $  ANS032:780 03 22 D9 17 00 00 00 00
  $  REQ033:700 03 22 C1 55 00 00 00 00       $  ANS033:780 03 22 C1 55 00 00 00 00
  $  REQ034:700 03 22 D4 11 00 00 00 00       $  ANS034:780 03 22 D4 11 00 00 00 00
  $  REQ035:700 03 22 D4 12 00 00 00 00       $  ANS035:780 03 22 D4 12 00 00 00 00
  $  REQ036:700 03 22 D9 A0 00 00 00 00       $  ANS036:780 03 22 D9 A0 00 00 00 00

  $  000.AFS灯配置(用于高、中配仪表)                                $    $               $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  001.ESP OFF灯(来自CAN)(用于高、中配仪表)                       $    $               $    $  ANS001.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  002.ESP故障灯(来自CAN)(用于高、中配仪表)                       $    $               $    $  ANS001.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  003.EBD故障灯(来自CAN)                                         $    $               $    $  ANS001.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  004.ABS故障灯(来自CAN)                                         $    $               $    $  ANS001.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  005.气囊故障灯(来自CAN)                                        $    $               $    $  ANS001.BYTE005  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  006.外部灯延时设置(来自CAN)(用于高、中配仪表)                  $    $               $    $  ANS002.BYTE004  $  if((x&0xF0)==0x00)y=@000f;else if((x&0xF0)==0x10)y=@0490;else if((x&0xF0)==0x20)y=@0491;else if((x&0xF0)==0x30)y=@0492;else if((x&0xF0)==0x40)y=@0493;else if((x&0xF0)==0xF0)y=@00b3;else y=@0004;
  $  007.自动解锁设置(来自CAN)(用于高、中配仪表)                    $    $               $    $  ANS002.BYTE004  $  if((x&0x0C)==0x00)y=@0494;else if((x&0x0C)==0x04)y=@0495;else if((x&0x0C)==0x08)y=@0496;else y=@01a9;
  $  008.遥控钥匙提示器设置(来自CAN)(用于高、中配仪表)              $    $               $    $  ANS002.BYTE004  $  if((x&0x03)==0x00)y=@000f;else if((x&0x03)==0x01)y=@0497;else if((x&0x03)==0x02)y=@0498;else y=@00b3;
  $  009.外部灯延时(用于高配仪表)                                   $    $               $    $  ANS003.BYTE004  $  if((x&0xF0)==0x00)y=@000f;else if((x&0xF0)==0x10)y=@0490;else if((x&0xF0)==0x20)y=@0491;else if((x&0xF0)==0x30)y=@0492;else if((x&0xF0)==0x40)y=@0493;else if((x&0xF0)==0xF0)y=@00b3;else y=@0004;
  $  010.倒车雷达报警声开关设置(用于高配仪表)                       $    $               $    $  ANS003.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  011.遥控钥匙提示器设置(用于高配仪表)                           $    $               $    $  ANS003.BYTE004  $  if((x&0x03)==0x00)y=@000f;else if((x&0x03)==0x01)y=@0497;else if((x&0x03)==0x02)y=@0498;else y=@00b3;
  $  012.超速警告的速度设置(用于高配仪表)                           $    $  km/h         $    $  ANS003.BYTE005  $  y=x;
  $  013.超速配置(用于高配仪表)                                     $    $               $    $  ANS003.BYTE006  $  if((x&0x02)==0x02)y=@00dc;else y=@00db;
  $  014.语言设置(用于高配仪表)                                     $    $               $    $  ANS003.BYTE006  $  if((x&0x01)==0x01)y=@0486;else y=@0487;
  $  015.巡航灯设置(用于高、中配仪表)                               $    $               $    $  ANS004.BYTE007  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  016.后尾门状态(来自CAN)                                        $    $               $    $  ANS005.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  017.右侧边门状态(来自CAN)                                      $    $               $    $  ANS005.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  018.乘客门状态(来自CAN)                                        $    $               $    $  ANS005.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  019.左侧边门状态(来自CAN)                                      $    $               $    $  ANS005.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  020.驾驶员门状态(来自CAN)                                      $    $               $    $  ANS005.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  021.ECO/SPORT模式功能配置(用于高配仪表)                        $    $               $    $  ANS006.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  022.ESP灯配置(用于高、中配仪表)                                $    $               $    $  ANS007.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  023.ESP关闭警告灯配置(用于高、中配仪表)                        $    $               $    $  ANS008.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  024.发动机冷却液温度                                           $    $  degree C     $    $  ANS009.BYTE004  $  y=x-40;
  $  025.发动机冷却液温度表指针角度                                 $    $               $    $  ANS010.BYTE004  $  y=x;
  $  026.发动机转速                                                 $    $  rpm          $    $  ANS011.BYTE004  $  y=(x1*256+x2)*0.25;
  $  027.车速表指针角度                                             $    $               $    $  ANS012.BYTE004  $  y=x;
  $  028.发动机转速表指针角度                                       $    $               $    $  ANS013.BYTE004  $  y=x;
  $  029.发动机类型配置(用于高配仪表)                               $    $               $    $  ANS014.BYTE004  $  if((x&0x01)==0x01)y=@0488;else y=@0489;
  $  030.前雾灯配置(用于高、中配仪表)                               $    $               $    $  ANS015.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  031.耗油量显示(用于高配仪表)                                   $    $  L/100km      $    $  ANS016.BYTE004  $  y=x*0.1;
  $  032.燃油箱油位(来自CAN)                                        $    $  L            $    $  ANS017.BYTE004  $  y=x&0x7F;
  $  033.燃油表指针角度                                             $    $               $    $  ANS018.BYTE004  $  y=x;
  $  034.驾驶员方向盘位置设置(用于高、中、低配仪表)                 $    $               $    $  ANS019.BYTE004  $  if((x&0x01)==0x01)y=@048a;else y=@048b;
  $  035.超速警告的速度设置(用于中、低配仪表)                       $    $  km           $    $  ANS003.BYTE004  $  y=x;
  $  036.车联网                                                     $    $               $    $  ANS020.BYTE004  $  if((x&0x03)==0x00)y=@048c;else if((x&0x03)==0x01)y=@048d;else if((x&0x03)==0x02)y=@048e;else y=@048f;
  $  037.变道辅助功能配置                                           $    $               $    $  ANS021.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  038.LCD排挡位置显示配置(用于高配仪表)                          $    $               $    $  ANS022.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  039.LCD RLS显示配置(用于高配仪表)                              $    $               $    $  ANS023.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  040.保养间隔里程数(用于高、中、低配仪表)                       $    $  km           $    $  ANS024.BYTE004  $  y=x1*256+x2;
  $  041.上一次重置保养里程时仪表里程数(用于高、中、低配仪表)       $    $  km           $    $  ANS024.BYTE006  $  y=x1*256*256+x2*256+x3;
  $  042.左前轮胎压力(用于高配仪表)                                 $    $  kPa          $    $  ANS025.BYTE004  $  y=x*2.75;
  $  043.左后轮胎压力(用于高配仪表)                                 $    $  kPa          $    $  ANS026.BYTE004  $  y=x*2.75;
  $  044.位置灯状态(来自CAN)                                        $    $               $    $  ANS027.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  045.后雾灯状态(来自CAN)                                        $    $               $    $  ANS027.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  046.前雾灯状态(来自CAN)(用于高、中配仪表)                      $    $               $    $  ANS027.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  047.远光灯状态(来自CAN)                                        $    $               $    $  ANS027.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  048.右转向灯状态(来自CAN)                                      $    $               $    $  ANS027.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  049.左转向灯状态(来自CAN)                                      $    $               $    $  ANS027.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  050.防盗指示灯状态(来自CAN)                                    $    $               $    $  ANS027.BYTE005  $  if((x&0x18)==0x00)y=@000f;else if((x&0x18)==0x08)y=@0484;else if((x&0x18)==0x10)y=@0485;else y=@0004;
  $  051.AFS故障灯(来自CAN)(用于高、中配仪表)                       $    $               $    $  ANS027.BYTE005  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  052.里程表                                                     $    $  km           $    $  ANS011.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  053.超速报警功能配置-用户可调(用于高配仪表)                    $    $               $    $  ANS028.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  054.无钥匙进入及启动系统控制器配置(用于高配仪表)               $    $               $    $  ANS029.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  055.燃油滤清器水位警告(来自CAN)                                $    $               $    $  ANS030.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  056.电热塞指示灯(来自CAN)                                      $    $               $    $  ANS030.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  057.充电指示灯(来自CAN)                                        $    $               $    $  ANS030.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  058.自动巡航控制激活灯(来自CAN)(用于高、中配仪表)              $    $               $    $  ANS030.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  059.发动机故障灯(来自CAN)                                      $    $               $    $  ANS030.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  060.发动机MIL(发动机故障灯)灯(来自CAN)                         $    $               $    $  ANS030.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  061.右前轮胎压力(用于高配仪表)                                 $    $  kPa          $    $  ANS031.BYTE004  $  y=x*2.75;
  $  062.右后轮胎压力(用于高配仪表)                                 $    $  kPa          $    $  ANS032.BYTE004  $  y=x*2.75;
  $  063.TPMS信息配置(用于高配仪表)                                 $    $               $    $  ANS033.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  064.AFS灯(来自仪表)(用于高配仪表)                              $    $               $    $  ANS034.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  065.后雾灯状态(来自仪表)                                       $    $               $    $  ANS034.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  066.前雾灯状态(来自仪表)(用于高、中配仪表)                     $    $               $    $  ANS034.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  067.远光灯状态(来自仪表)                                       $    $               $    $  ANS034.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  068.右转向灯状态(来自仪表)                                     $    $               $    $  ANS034.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  069.左转向灯状态(来自仪表)                                     $    $               $    $  ANS034.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  070.冷却液温度灯状态(来自仪表)                                 $    $               $    $  ANS034.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  071.防盗指示灯状态(来自仪表)                                   $    $               $    $  ANS034.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  072.气囊故障灯(来自仪表)                                       $    $               $    $  ANS034.BYTE005  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  073.ESP关闭灯(来自仪表)(用于高配仪表)                          $    $               $    $  ANS034.BYTE005  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  074.ESP故障灯(来自仪表)(用于高配仪表)                          $    $               $    $  ANS034.BYTE005  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  075.ABS灯(来自仪表)                                            $    $               $    $  ANS034.BYTE005  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  076.发动机MIL(发动机故障灯)灯(来自仪表)                        $    $               $    $  ANS034.BYTE005  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  077.自动巡航灯(来自仪表)(用于高配仪表)                         $    $               $    $  ANS034.BYTE005  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  078.EBD灯（来自仪表)                                           $    $               $    $  ANS034.BYTE005  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  079.燃油滤清器水位警告(来自仪表)                               $    $               $    $  ANS035.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  080.电热塞指示灯(来自仪表)                                     $    $               $    $  ANS035.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  081.蓄电池故障警告灯(来自仪表)                                 $    $               $    $  ANS035.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  082.燃油警告灯(来自仪表)                                       $    $               $    $  ANS035.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  083.TPMS灯(来自仪表)(用于高配仪表)                             $    $               $    $  ANS035.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  084.保养警告灯(来自仪表)                                       $    $               $    $  ANS035.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  085.发动机故障灯(来自仪表)                                     $    $               $    $  ANS035.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  086.SPORT模式指示灯(来自仪表)(用于高配仪表)                    $    $               $    $  ANS035.BYTE005  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  087.ECO模式指示灯(来自仪表)(用于高配仪表)                      $    $               $    $  ANS035.BYTE005  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  088.车速                                                       $    $  km/h         $    $  ANS036.BYTE004  $  y=(x1*256+x2)*0.05625;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:700 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
