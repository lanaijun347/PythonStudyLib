
    车型ID：1060

    模拟：协议模拟-->1060

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k

进入命令:

  $~  REQ000:701 02 10 01 00 00 00 00 00       $~  ANS000:781 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:701 02 3E 80 00 00 00 00 00       $!  ANS000:781 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:701 03 19 02 09 00 00 00 00       $#  ANS000:781 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/60000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:701 04 14 FF FF FF 00 00 00       $$  ANS000:781 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:701 03 22 F1 A0 00 00 00 00       $%  ANS000:781 03 22 F1 A0 00 00 00 00
  $%  REQ001:701 03 22 F1 83 00 00 00 00       $%  ANS001:781 03 22 F1 83 00 00 00 00
  $%  REQ002:701 03 22 F1 91 00 00 00 00       $%  ANS002:781 03 22 F1 91 00 00 00 00
  $%  REQ003:701 03 22 F1 8B 00 00 00 00       $%  ANS003:781 03 22 F1 8B 00 00 00 00
  $%  REQ004:701 03 22 F1 A2 00 00 00 00       $%  ANS004:781 03 22 F1 A2 00 00 00 00
  $%  REQ005:701 03 22 F1 87 00 00 00 00       $%  ANS005:781 03 22 F1 87 00 00 00 00
  $%  REQ006:701 03 22 F1 10 00 00 00 00       $%  ANS006:781 03 22 F1 10 00 00 00 00
  $%  REQ007:701 03 22 F1 92 00 00 00 00       $%  ANS007:781 03 22 F1 92 00 00 00 00
  $%  REQ008:701 03 22 F1 8C 00 00 00 00       $%  ANS008:781 03 22 F1 8C 00 00 00 00
  $%  REQ009:701 03 22 F1 94 00 00 00 00       $%  ANS009:781 03 22 F1 94 00 00 00 00
  $%  REQ010:701 03 22 F1 8A 00 00 00 00       $%  ANS010:781 03 22 F1 8A 00 00 00 00
  $%  REQ011:701 03 22 F1 90 00 00 00 00       $%  ANS011:781 03 22 F1 90 00 00 00 00
  $%  REQ012:701 03 22 F1 A8 00 00 00 00       $%  ANS012:781 03 22 F1 A8 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  002:电控单元硬件号:                  $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元制造日期:年:             $%    $%  ANS003.BYTE004  $%  y=SPRINTF([20%02X],X1);
  $%  004:电控单元制造日期:月:             $%    $%  ANS003.BYTE005  $%  HEX(X1);
  $%  005:电控单元制造日期:日:             $%    $%  ANS003.BYTE006  $%  HEX(X1);
  $%  006:电控单元网络文件参考号:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  007:电控单元零件号:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  008:电控单元零件号(上次):            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  009:测试工具参考号(上次):            $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  010:里程读数(上次)KM:                $%    $%  ANS006.BYTE015  $%  y=(x1*256*256+x2*256+x3);
  $%  011:供应商电控单元硬件参考号:        $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  012:供应商电控单元序列号:            $%    $%  ANS008.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  013:供应商电控单元软件参考号:        $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  014:系统供应商识别码:                $%    $%  ANS010.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6);
  $%  015:VIN码:                           $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  016:车辆特征信息:                    $%    $%  ANS012.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:701 03 22 E0 21 00 00 00 00       $  ANS000:781 03 22 E0 21 00 00 00 00
  $  REQ001:701 03 22 C1 04 00 00 00 00       $  ANS001:781 03 22 C1 04 00 00 00 00
  $  REQ002:701 03 22 C1 01 00 00 00 00       $  ANS002:781 03 22 C1 01 00 00 00 00
  $  REQ003:701 03 22 B5 10 00 00 00 00       $  ANS003:781 03 22 B5 10 00 00 00 00
  $  REQ004:701 03 22 E0 11 00 00 00 00       $  ANS004:781 03 22 E0 11 00 00 00 00
  $  REQ005:701 03 22 D3 02 00 00 00 00       $  ANS005:781 03 22 D3 02 00 00 00 00
  $  REQ006:701 03 22 E0 1A 00 00 00 00       $  ANS006:781 03 22 E0 1A 00 00 00 00
  $  REQ007:701 03 22 C1 06 00 00 00 00       $  ANS007:781 03 22 C1 06 00 00 00 00
  $  REQ008:701 03 22 E0 20 00 00 00 00       $  ANS008:781 03 22 E0 20 00 00 00 00
  $  REQ009:701 03 22 D1 01 00 00 00 00       $  ANS009:781 03 22 D1 01 00 00 00 00
  $  REQ010:701 03 22 D1 02 00 00 00 00       $  ANS010:781 03 22 D1 02 00 00 00 00
  $  REQ011:701 03 22 D1 03 00 00 00 00       $  ANS011:781 03 22 D1 03 00 00 00 00
  $  REQ012:701 03 22 D1 04 00 00 00 00       $  ANS012:781 03 22 D1 04 00 00 00 00
  $  REQ013:701 03 22 D1 05 00 00 00 00       $  ANS013:781 03 22 D1 05 00 00 00 00
  $  REQ014:701 03 22 D1 06 00 00 00 00       $  ANS014:781 03 22 D1 06 00 00 00 00
  $  REQ015:701 03 22 D1 16 00 00 00 00       $  ANS015:781 03 22 D1 16 00 00 00 00
  $  REQ016:701 03 22 D1 17 00 00 00 00       $  ANS016:781 03 22 D1 17 00 00 00 00
  $  REQ017:701 03 22 E0 1E 00 00 00 00       $  ANS017:781 03 22 E0 1E 00 00 00 00
  $  REQ018:701 03 22 E0 18 00 00 00 00       $  ANS018:781 03 22 E0 18 00 00 00 00
  $  REQ019:701 03 22 E0 02 00 00 00 00       $  ANS019:781 03 22 E0 02 00 00 00 00
  $  REQ020:701 03 22 E0 0B 00 00 00 00       $  ANS020:781 03 22 E0 0B 00 00 00 00
  $  REQ021:701 03 22 D3 01 00 00 00 00       $  ANS021:781 03 22 D3 01 00 00 00 00
  $  REQ022:701 03 22 E0 1F 00 00 00 00       $  ANS022:781 03 22 E0 1F 00 00 00 00
  $  REQ023:701 03 22 E0 1D 00 00 00 00       $  ANS023:781 03 22 E0 1D 00 00 00 00
  $  REQ024:701 03 22 C1 08 00 00 00 00       $  ANS024:781 03 22 C1 08 00 00 00 00
  $  REQ025:701 03 22 E0 0C 00 00 00 00       $  ANS025:781 03 22 E0 0C 00 00 00 00
  $  REQ026:701 03 22 C1 02 00 00 00 00       $  ANS026:781 03 22 C1 02 00 00 00 00
  $  REQ027:701 03 22 E0 1B 00 00 00 00       $  ANS027:781 03 22 E0 1B 00 00 00 00
  $  REQ028:701 03 22 C1 05 00 00 00 00       $  ANS028:781 03 22 C1 05 00 00 00 00
  $  REQ029:701 03 22 C3 04 00 00 00 00       $  ANS029:781 03 22 C3 04 00 00 00 00
  $  REQ030:701 03 22 E0 16 00 00 00 00       $  ANS030:781 03 22 E0 16 00 00 00 00
  $  REQ031:701 03 22 E0 15 00 00 00 00       $  ANS031:781 03 22 E0 15 00 00 00 00
  $  REQ032:701 03 22 E0 0E 00 00 00 00       $  ANS032:781 03 22 E0 0E 00 00 00 00
  $  REQ033:701 03 22 E0 10 00 00 00 00       $  ANS033:781 03 22 E0 10 00 00 00 00
  $  REQ034:701 03 22 E0 1C 00 00 00 00       $  ANS034:781 03 22 E0 1C 00 00 00 00
  $  REQ035:701 03 22 D3 03 00 00 00 00       $  ANS035:781 03 22 D3 03 00 00 00 00
  $  REQ036:701 03 22 E0 19 00 00 00 00       $  ANS036:781 03 22 E0 19 00 00 00 00
  $  REQ037:701 03 22 E0 22 00 00 00 00       $  ANS037:781 03 22 E0 22 00 00 00 00
  $  REQ038:701 03 22 C1 07 00 00 00 00       $  ANS038:781 03 22 C1 07 00 00 00 00
  $  REQ039:701 03 22 E0 0D 00 00 00 00       $  ANS039:781 03 22 E0 0D 00 00 00 00
  $  REQ040:701 03 22 E0 17 00 00 00 00       $  ANS040:781 03 22 E0 17 00 00 00 00
  $  REQ041:701 03 22 C1 03 00 00 00 00       $  ANS041:781 03 22 C1 03 00 00 00 00

  $  000.点火打开                                      $    $         $    $  ANS000.BYTE004  $  y=x;
  $  001.车速自动闭锁                                  $    $         $    $  ANS001.BYTE004  $  if((x&0x80)==0x80)y=@050a;else y=@0112;
  $  002.后风窗和后视镜加热配置                        $    $         $    $  ANS001.BYTE004  $  if((x&0x40)==0x40)y=@050a;else y=@0112;
  $  003.RKE(遥控车门开关)主驾单独解锁                 $    $         $    $  ANS001.BYTE004  $  if((x&0x20)==0x20)y=@050a;else y=@0112;
  $  004.PKE(无钥匙进入系统)主驾单独解锁               $    $         $    $  ANS001.BYTE004  $  if((x&0x10)==0x10)y=@050a;else y=@0112;
  $  005.后备箱门配置                                  $    $         $    $  ANS001.BYTE004  $  if((x&0x08)==0x08)y=@050a;else y=@0112;
  $  006.P档解锁配置                                   $    $         $    $  ANS001.BYTE004  $  if((x&0x04)==0x04)y=@050a;else y=@0112;
  $  007.P档解锁                                       $    $         $    $  ANS001.BYTE004  $  if((x&0x02)==0x02)y=@050a;else y=@0112;
  $  008.P档解锁输出配置                               $    $         $    $  ANS001.BYTE004  $  if((x&0x01)==0x01)y=@051f;else y=@0520;
  $  009.节能/运动开关                                 $    $         $    $  ANS001.BYTE005  $  if((x&0x80)==0x80)y=@050a;else y=@0112;
  $  010.自适应续航开关                                $    $         $    $  ANS001.BYTE005  $  if((x&0x40)==0x40)y=@050a;else y=@0112;
  $  011.车窗Lazy Close                                $    $         $    $  ANS001.BYTE005  $  if((x&0x20)==0x20)y=@050a;else y=@0112;
  $  012.车窗Lazy Open                                 $    $         $    $  ANS001.BYTE005  $  if((x&0x10)==0x10)y=@050a;else y=@0112;
  $  013.天窗一键关                                    $    $         $    $  ANS001.BYTE005  $  if((x&0x08)==0x08)y=@050a;else y=@0112;
  $  014.天窗一键开                                    $    $         $    $  ANS001.BYTE005  $  if((x&0x04)==0x04)y=@050a;else y=@0112;
  $  015.后视镜折叠                                    $    $         $    $  ANS001.BYTE005  $  if((x&0x03)==0x02)y=@000f;else if((x&0x03)==0x00)y=@0521;else if((x&0x03)==0x01)y=@0522;else y=@0004;
  $  016.锁电机热保护时间                              $    $  s      $    $  ANS001.BYTE006  $  y=x;
  $  017.刹车片标定临界值设置                          $    $  %      $    $  ANS001.BYTE007  $  y=x;
  $  018.配RKE(遥控车门开关)数量                       $    $         $    $  ANS002.BYTE004  $  if((x&0xF0)==0x10)y=@04d3;else if((x&0xF0)==0x20)y=@0169;else if((x&0xF0)==0x30)y=@016a;else if((x&0xF0)==0x40)y=@016b;else y=@01a9;
  $  019.负载管理模式                                  $    $         $    $  ANS002.BYTE004  $  if((x&0x0C)==0x00)y=@015f;else if((x&0x0C)==0x04)y=@0524;else if((x&0x0C)==0x08)y=@0525;else y=@0004;
  $  020.生产运行周期设置                              $    $         $    $  ANS002.BYTE004  $  if((x&0x03)==0x00)y=@050b;else if((x&0x03)==0x01)y=@050c;else if((x&0x03)==0x02)y=@050d;else y=@050e;
  $  021.TCU(变速箱控制单元)                           $    $         $    $  ANS002.BYTE005  $  if((x&0x80)==0x80)y=@050a;else y=@0112;
  $  022.PEPS                                          $    $         $    $  ANS002.BYTE005  $  if((x&0x40)==0x40)y=@050a;else y=@0112;
  $  023.防盗匹配                                      $    $         $    $  ANS002.BYTE005  $  if((x&0x20)==0x20)y=@050a;else y=@0112;
  $  024.左舵或右舵                                    $    $         $    $  ANS002.BYTE005  $  if((x&0x10)==0x10)y=@050f;else y=@0510;
  $  025.车辆类型                                      $    $         $    $  ANS002.BYTE005  $  if((x&0x0F)==0x00)y=@09e3;else if((x&0x0F)==0x01)y=@09e4; else y=@01a9;
  $  026.ABS                                           $    $         $    $  ANS002.BYTE006  $  if((x&0x80)==0x80)y=@050a;else y=@0112;
  $  027.ESP(电子稳定系统)                             $    $         $    $  ANS002.BYTE006  $  if((x&0x40)==0x40)y=@050a;else y=@0112;
  $  028.IPK                                           $    $         $    $  ANS002.BYTE006  $  if((x&0x20)==0x20)y=@050a;else y=@0112;
  $  029.发动机管理系统                                $    $         $    $  ANS002.BYTE006  $  if((x&0x10)==0x10)y=@050a;else y=@0112;
  $  030.SAS                                           $    $         $    $  ANS002.BYTE006  $  if((x&0x08)==0x08)y=@050a;else y=@0112;
  $  031.SRS                                           $    $         $    $  ANS002.BYTE006  $  if((x&0x04)==0x04)y=@050a;else y=@0112;
  $  032.FICM(娱乐系统大屏含导航)                      $    $         $    $  ANS002.BYTE006  $  if((x&0x02)==0x02)y=@050a;else y=@0112;
  $  033.PLG(后背门开启系统)是否配置                   $    $         $    $  ANS002.BYTE006  $  if((x&0x01)==0x01)y=@050a;else y=@0112;
  $  034.右后门窗电机是否配置                          $    $         $    $  ANS002.BYTE007  $  if((x&0x40)==0x40)y=@050a;else y=@0112;
  $  035.左后门窗电机是否配置                          $    $         $    $  ANS002.BYTE007  $  if((x&0x20)==0x20)y=@050a;else y=@0112;
  $  036.副驾门窗电机是否配置                          $    $         $    $  ANS002.BYTE007  $  if((x&0x10)==0x10)y=@050a;else y=@0112;
  $  037.主驾门窗电机是否配置                          $    $         $    $  ANS002.BYTE007  $  if((x&0x08)==0x08)y=@050a;else y=@0112;
  $  038.遮阳帘是否配置                                $    $         $    $  ANS002.BYTE007  $  if((x&0x04)==0x04)y=@050a;else y=@0112;
  $  039.天窗                                          $    $         $    $  ANS002.BYTE007  $  if((x&0x02)==0x02)y=@050a;else y=@0112;
  $  040.疲劳驾驶检测是否配置                          $    $         $    $  ANS002.BYTE007  $  if((x&0x01)==0x01)y=@050a;else y=@0112;
  $  041.钥匙插入信号                                  $    $         $    $  ANS003.BYTE004  $  if(x==0x00)y=@0495;else if(x==0x01) y=@0507; else y=@01a9;
  $  042.刹车片5V反馈                                  $    $         $    $  ANS004.BYTE004  $  y=(x1*256)+x2;
  $  043.变速箱换挡杆位置                              $    $         $    $  ANS005.BYTE004  $  if((x&0x0F)==0x00)y=@0514;else if((x&0x0F)==0x01)y=@00b4;else if((x&0x0F)==0x02)y=@0388;else if((x&0x0F)==0x03)y=@0515;else if((x&0x0F)==0x04)y=@0516;else if((x&0x0F)==0x05)y=@0517;else if((x&0x0F)==0x06)y=@0518;else if((x&0x0F)==0x07)y=@0519;else if((x&0x0F)==0x08)y=@051a;else if((x&0x0F)==0x09)y=@051b;else if((x&0x0F)==0x0A)y=@051c;else if((x&0x0F)==0x0B)y=@051d;else if((x&0x0F)==0x0F)y=@051e;else y=@01a9;
  $  044.当前已学习遥控钥匙数量                        $    $         $    $  ANS006.BYTE004  $  y=x;
  $  045.疲劳驾驶参数选择                              $    $         $    $  ANS007.BYTE004  $  y=x;
  $  046.疲劳驾驶性能调节                              $    $         $    $  ANS007.BYTE005  $  y=(x1*256+x2);
  $  047.白天黑夜状态                                  $    $         $    $  ANS008.BYTE004  $  if(x==0x00)y=@09e9; else y=@01a9;
  $  048.近光灯开关输入                                $    $         $    $  ANS009.BYTE004  $  if((x&0x80)==0x80) y=@0028;else y=@000f;
  $  049.驾驶员门开关                                  $    $         $    $  ANS009.BYTE004  $  if((x&0x40)==0x40) y=@0028;else y=@000f;
  $  050.右前门开关输入                                $    $         $    $  ANS009.BYTE004  $  if((x&0x20)==0x20) y=@0028;else y=@000f;
  $  051.危险警报灯开关输入                            $    $         $    $  ANS009.BYTE004  $  if((x&0x02)==0x02) y=@0028;else y=@000f;
  $  052.位置灯开关输入                                $    $         $    $  ANS009.BYTE004  $  if((x&0x01)==0x01) y=@0028;else y=@000f;
  $  053.后窗和后视镜加热开关输入                      $    $         $    $  ANS010.BYTE004  $  if((x&0x80)==0x80) y=@0028;else y=@000f;
  $  054.后雾灯开关                                    $    $         $    $  ANS010.BYTE004  $  if((x&0x40)==0x40) y=@0028;else y=@000f;
  $  055.主驾门闭锁反馈输入                            $    $         $    $  ANS010.BYTE004  $  if((x&0x20)==0x20) y=@0028;else y=@000f;
  $  056.主驾门解锁反馈输入                            $    $         $    $  ANS010.BYTE004  $  if((x&0x10)==0x10) y=@0028;else y=@000f;
  $  057.后备箱门开关                                  $    $         $    $  ANS010.BYTE004  $  if((x&0x08)==0x08) y=@0028;else y=@000f;
  $  058.右转向灯开关输入                              $    $         $    $  ANS010.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  059.后顶灯开关输入                                $    $         $    $  ANS010.BYTE004  $  if((x&0x02)==0x02) y=@0028;else y=@000f;
  $  060.前雨刮低速开关输入                            $    $         $    $  ANS011.BYTE004  $  if((x&0x80)==0x80) y=@0028;else y=@000f;
  $  061.左后门开关状态输入                            $    $         $    $  ANS011.BYTE004  $  if((x&0x20)==0x20) y=@0028;else y=@000f;
  $  062.右后门开关状态输入                            $    $         $    $  ANS011.BYTE004  $  if((x&0x10)==0x10) y=@0028;else y=@000f;
  $  063.前雾灯开关输入                                $    $         $    $  ANS011.BYTE004  $  if((x&0x08)==0x08) y=@0028;else y=@000f;
  $  064.钥匙插入信号输入                              $    $         $    $  ANS011.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  065.前雨刮高速输入                                $    $         $    $  ANS011.BYTE004  $  if((x&0x01)==0x01) y=@0028;else y=@000f;
  $  066.前洗涤开关输入                                $    $         $    $  ANS012.BYTE004  $  if((x&0x20)==0x20) y=@0028;else y=@000f;
  $  067.KLR输入                                       $    $         $    $  ANS013.BYTE004  $  if((x&0x80)==0x80) y=@0028;else y=@000f;
  $  068.KL15点火开关                                  $    $         $    $  ANS013.BYTE004  $  if((x&0x40)==0x40) y=@0028;else y=@000f;
  $  069.KL50输入                                      $    $         $    $  ANS013.BYTE004  $  if((x&0x20)==0x20) y=@0028;else y=@000f;
  $  070.中控锁闭锁开关输入                            $    $         $    $  ANS014.BYTE004  $  if((x&0x80)==0x80) y=@0028;else y=@000f;
  $  071.爆闪灯开关                                    $    $         $    $  ANS014.BYTE004  $  if((x&0x40)==0x40) y=@0028;else y=@000f;
  $  072.远光灯开关输入                                $    $         $    $  ANS014.BYTE004  $  if((x&0x10)==0x10) y=@0028;else y=@000f;
  $  073.左转向灯开关输入                              $    $         $    $  ANS014.BYTE004  $  if((x&0x08)==0x08) y=@0028;else y=@000f;
  $  074.自动灯光开关输入                              $    $         $    $  ANS014.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  075.应急开关                                      $    $         $    $  ANS014.BYTE004  $  if((x&0x02)==0x02) y=@0028;else y=@000f;
  $  076.中控锁解锁开关输入                            $    $         $    $  ANS014.BYTE004  $  if((x&0x01)==0x01) y=@0028;else y=@000f;
  $  077.中控闭锁输出                                  $    $         $    $  ANS015.BYTE004  $  if((x&0x80)==0x80) y=@0028;else y=@000f;
  $  078.中控解锁输出                                  $    $         $    $  ANS015.BYTE004  $  if((x&0x20)==0x20) y=@0028;else y=@000f;
  $  079.后备箱解锁                                    $    $         $    $  ANS015.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  080.校车停车指示牌                                $    $         $    $  ANS015.BYTE004  $  if((x&0x01)==0x01) y=@0028;else y=@000f;
  $  081.近光灯继电器驱动输出                          $    $         $    $  ANS015.BYTE005  $  if((x&0x80)==0x80) y=@0028;else y=@000f;
  $  082.远光灯继电器                                  $    $         $    $  ANS015.BYTE005  $  if((x&0x40)==0x40) y=@0028;else y=@000f;
  $  083.左前雾灯继电器驱动输出                        $    $         $    $  ANS015.BYTE005  $  if((x&0x20)==0x20) y=@0028;else y=@000f;
  $  084.后窗和后视镜加热继电器驱动输出                $    $         $    $  ANS015.BYTE005  $  if((x&0x10)==0x10) y=@0028;else y=@000f;
  $  085.喇叭继电器                                    $    $         $    $  ANS015.BYTE005  $  if((x&0x08)==0x08) y=@0028;else y=@000f;
  $  086.前雨刮继电器驱动输出                          $    $         $    $  ANS015.BYTE005  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  087.右前雾灯继电器驱动输出                        $    $         $    $  ANS015.BYTE005  $  if((x&0x01)==0x01) y=@0028;else y=@000f;
  $  088.左日间行车灯输出                              $    $         $    $  ANS016.BYTE004  $  if((x&0x40)==0x40) y=@0028;else y=@000f;
  $  089.右日间行车灯输出                              $    $         $    $  ANS016.BYTE004  $  if((x&0x20)==0x20) y=@0028;else y=@000f;
  $  090.后视镜折叠                                    $    $         $    $  ANS016.BYTE004  $  if((x&0x10)==0x10) y=@0028;else y=@000f;
  $  091.位置灯输出                                    $    $         $    $  ANS016.BYTE005  $  if((x&0x10)==0x10) y=@0028;else y=@000f;
  $  092.后雾灯输出                                    $    $         $    $  ANS016.BYTE005  $  if((x&0x08)==0x08) y=@0028;else y=@000f;
  $  093.左转向灯输出                                  $    $         $    $  ANS016.BYTE005  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  094.右转向灯输出                                  $    $         $    $  ANS016.BYTE005  $  if((x&0x02)==0x02) y=@0028;else y=@000f;
  $  095.背光脉冲宽度调制                              $    $         $    $  ANS017.BYTE004  $  y=x;
  $  096.发动机运行状态                                $    $         $    $  ANS018.BYTE004  $  if(x==0x00)y=@018e;else if(x==0x01)y=@0011;else y=@01a9;
  $  097.前雨刮间歇档位调节输入                        $    $         $    $  ANS019.BYTE004  $  if(x==0x00)y=@04f5;else if(x==0x01)y=@04f6;else if(x==0x02)y=@04f7;else if(x==0x03)y=@04f8;else y=@01a9;
  $  098.前雾灯输入值                                  $    $         $    $  ANS020.BYTE004  $  if(x==0x00)y=@01db;else if(x==0x01)y=@01db;else if(x==0x02)y=@01da;else if(x==0x03)y=@01da;else y=@01a9;
  $  099.IMMO(防盗系统)锁定状态                        $    $         $    $  ANS021.BYTE004  $  if((x&0x80)==0x80)y=@0055;else y=@0052;
  $  100.PIN写入状态                                   $    $         $    $  ANS021.BYTE004  $  if((x&0x40)==0x40)y=@00ca;else y=@02ac;
  $  101.SK写入状态                                    $    $         $    $  ANS021.BYTE004  $  if((x&0x20)==0x20)y=@00ca;else y=@02ac;
  $  102.VIN码是否写入                                 $    $         $    $  ANS021.BYTE004  $  if((x&0x10)==0x10)y=@00ca;else y=@02ac;
  $  103.当前IMMO(防盗系统)学习的钥匙数量              $    $         $    $  ANS021.BYTE004  $  y=(x&0x0F);
  $  104.点火圈照明脉冲宽度调制                        $    $         $    $  ANS022.BYTE004  $  y=x;
  $  105.点火开关状态(低配、中配)                      $    $         $    $  ANS023.BYTE004  $  if(x==0x00)y=@000f;else if(x==0x01)y=@0507;else if(x==0x02)y=@0666;else if(x==0x03)y=@009e;else y=@01a9;
  $  106.钥匙插入状态(低配、中配)                      $    $         $    $  ANS023.BYTE005  $  if(x==0x00)y=@0495;else if(x==0x01) y=@0507; else y=@01a9;
  $  107.出厂照我回家功能外灯延时设置                  $    $         $    $  ANS024.BYTE004  $  if((x&0xC0)==0x00)y=@04d4;else if((x&0xC0)==0x40)y=@04fd;else if((x&0xC0)==0x80)y=@0502; else y=@0503;
  $  108.出厂寻车功能反馈方式设置                      $    $         $    $  ANS024.BYTE004  $  if((x&0x20)==0x20)y=@0505;else y=@0506;
  $  109.出厂熄火自动解锁配置                          $    $         $    $  ANS024.BYTE004  $  if((x&0x10)==0x10)y=@050a;else y=@0112;
  $  110.出厂RKE(遥控车门开关)主驾单独解锁配置         $    $         $    $  ANS024.BYTE004  $  if((x&0x02)==0x02)y=@050a;else y=@0112;
  $  111.出厂PKE(无钥匙进入系统)主驾单独解锁配置       $    $         $    $  ANS024.BYTE004  $  if((x&0x01)==0x01)y=@050a;else y=@0112;
  $  112.出厂照我回家功能配置                          $    $         $    $  ANS024.BYTE005  $  if((x&0x08)==0x08)y=@050a;else y=@0112;
  $  113.出厂车速自动闭锁配置                          $    $         $    $  ANS024.BYTE005  $  if((x&0x04)==0x04)y=@050a;else y=@0112;
  $  114.出厂闭锁反馈方式配置                          $    $         $    $  ANS024.BYTE005  $  if((x&0x03)==0x00)y=@0504;else if((x&0x03)==0x01)y=@000f;else if((x&0x03)==0x02)y=@0505;else y=@0506;
  $  115.出厂照地灯配置                                $    $         $    $  ANS024.BYTE006  $  if((x&0x80)==0x80)y=@050a;else y=@0112;
  $  116.出厂照地灯工作时间                            $    $         $    $  ANS024.BYTE006  $  if((x&0x60)==0x00)y=@04d4;else if((x&0x60)==0x20)y=@04fd;else if((x&0x60)==0x40)y=@0502; else y=@0503;
  $  117.出厂氛围灯                                    $    $         $    $  ANS024.BYTE006  $  if((x&0x10)==0x10)y=@050a;else y=@0112;
  $  118.出厂天窗lazy Open                             $    $         $    $  ANS024.BYTE006  $  if((x&0x08)==0x08)y=@050a;else y=@0112;
  $  119.出厂后视镜折叠                                $    $         $    $  ANS024.BYTE006  $  if((x&0x03)==0x02)y=@000f;else if((x&0x03)==0x00)y=@0521;else if((x&0x03)==0x01)y=@0522;else y=@0004;
  $  120.碰撞信号                                      $    $         $    $  ANS025.BYTE004  $  y=x;
  $  121.前舱盖配置                                    $    $         $    $  ANS026.BYTE004  $  if((x&0x80)==0x80)y=@050a;else y=@0112;
  $  122.前雾灯配置                                    $    $         $    $  ANS026.BYTE004  $  if((x&0x40)==0x40)y=@050a;else y=@0112;
  $  123.自动灯光配置                                  $    $         $    $  ANS026.BYTE004  $  if((x&0x20)==0x20)y=@050a;else y=@0112;
  $  124.后备箱灯配置                                  $    $         $    $  ANS026.BYTE004  $  if((x&0x10)==0x10)y=@050a;else y=@0112;
  $  125.日间行车灯配置                                $    $         $    $  ANS026.BYTE004  $  if((x&0x08)==0x08)y=@050a;else y=@0112;
  $  126.远光灯打开方式                                $    $         $    $  ANS026.BYTE004  $  if((x&0x04)==0x04)y=@04f9;else y=@04fa;
  $  127.照地灯                                        $    $         $    $  ANS026.BYTE004  $  if((x&0x02)==0x02)y=@050a;else y=@0112;
  $  128.氛围灯配置                                    $    $         $    $  ANS026.BYTE004  $  if((x&0x01)==0x01)y=@050a;else y=@0112;
  $  129.氛围灯点亮时间                                $    $         $    $  ANS026.BYTE005  $  if((x&0xC0)==0x00)y=@000f;else if((x&0xC0)==0x40)y=@04fb;else if((x&0xC0)==0x80)y=@04fc; else y=@04fd;
  $  130.转向灯类型                                    $    $         $    $  ANS026.BYTE005  $  if((x&0x20)==0x20)y=@04fe;else y=@04ff;
  $  131.后顶灯是否配置                                $    $         $    $  ANS026.BYTE005  $  if((x&0x10)==0x10)y=@050a;else y=@0112;
  $  132.氛围灯点亮时间1                               $    $         $    $  ANS026.BYTE005  $  if((x&0x06)==0x00)y=@000f;else if((x&0x06)==0x02)y=@04fd;else if((x&0x06)==0x04)y=@0502;else y=@0503;
  $  133.转向辅助灯1                                   $    $         $    $  ANS026.BYTE005  $  if((x&0x01)==0x01)y=@050a;else y=@0112;
  $  134.照地灯工作时间                                $    $         $    $  ANS026.BYTE007  $  if((x&0x06)==0x00)y=@000f;else if((x&0x06)==0x02)y=@04fd;else if((x&0x06)==0x04)y=@0502;else y=@0503;
  $  135.背光调节开关配置                              $    $         $    $  ANS026.BYTE007  $  if((x&0x01)==0x01)y=@050a;else y=@0112;
  $  136.行驶里程备份                                  $    $  km     $    $  ANS027.BYTE004  $  y=(x1*256*256)+(x2*256)+x3;
  $  137.照我回家功能外灯延时设置                      $    $         $    $  ANS028.BYTE004  $  if((x&0x60)==0x00)y=@04d4;else if((x&0x60)==0x20)y=@04fd;else if((x&0x60)==0x40)y=@0502; else y=@0503;
  $  138.闭锁反馈方式                                  $    $         $    $  ANS028.BYTE004  $  if((x&0x18)==0x00)y=@0504;else if((x&0x18)==0x08)y=@000f;else if((x&0x18)==0x10)y=@0505;else y=@0506;
  $  139.照我回家功能配置                              $    $         $    $  ANS028.BYTE004  $  if((x&0x04)==0x04)y=@050a;else y=@0112;
  $  140.寻车功能反馈方式设置                          $    $         $    $  ANS028.BYTE005  $  if((x&0x80)==0x80)y=@0505;else y=@0506;
  $  141.解锁反馈方式设置                              $    $         $    $  ANS028.BYTE005  $  if((x&0x60)==0x00)y=@000f;else if((x&0x60)==0x20)y=@0506;else y=@01a9;
  $  142.其它自动触发方式配置                          $    $         $    $  ANS028.BYTE005  $  if((x&0x18)==0x08)y=@0495;else if((x&0x18)==0x10)y=@09e5; else y=@01a9;
  $  143.熄火自动解锁配置                              $    $         $    $  ANS028.BYTE005  $  if((x&0x04)==0x04)y=@050a;else y=@0112;
  $  144.固定增益A                                     $    $         $    $  ANS029.BYTE004  $  y=(x1*256+x2);
  $  145.固定增益B                                     $    $         $    $  ANS029.BYTE006  $  y=(x1*256+x2);
  $  146.增益A                                         $    $         $    $  ANS029.BYTE008  $  y=(x1*256+x2);
  $  147.增益B                                         $    $         $    $  ANS029.BYTE010  $  y=(x1*256+x2);
  $  148.内顶灯门碰输出                                $    $         $    $  ANS030.BYTE004  $  y=x;
  $  149.内顶灯阅读输出                                $    $         $    $  ANS031.BYTE004  $  y=x;
  $  150.后雾灯输入值                                  $    $         $    $  ANS032.BYTE004  $  if(x==0x00)y=@01db;else if(x==0x01)y=@01db;else if(x==0x02)y=@01da;else if(x==0x03)y=@01da;else y=@01a9;
  $  151.后视镜折叠输入值                              $    $         $    $  ANS033.BYTE004  $  if(x==0x00)y=@01db;else if(x==0x01)y=@01db;else if(x==0x02)y=@01da;else if(x==0x03)y=@01da;else y=@01a9;
  $  152.保养里程备份                                  $    $  km     $    $  ANS034.BYTE004  $  y=(x1*256*256)+(x2*256)+x3;
  $  153.SK2锁定状态                                   $    $         $    $  ANS035.BYTE004  $  if((x&0x80)==0x80)y=@0055;else y=@0052;
  $  154.SK2写入状态                                   $    $         $    $  ANS035.BYTE004  $  if((x&0x40)==0x40)y=@00ca;else y=@02ac;
  $  155.动力模式                                      $    $         $    $  ANS036.BYTE004  $  if(x==0x00)y=@000f;else if(x==0x01)y=@0463;else if(x==0x02)y=@0028;else if(x==0x03)y=@009e;else y=@01a9;
  $  156.安全验证闹钟状态                              $    $         $    $  ANS036.BYTE005  $  if(x==0x00)y=@09e6;else if(x==0x01)y=@0528;else if(x==0x02)y=@0529;else if(x==0x03)y=@0189;else y=@01a9;
  $  157.阳光传感器输入                                $    $         $    $  ANS037.BYTE004  $  y=x;
  $  158.TBOX请求需认证配置                            $    $         $    $  ANS038.BYTE004  $  if((x&0x80)==0x80)y=@050a;else y=@0112;
  $  159.TBOX算法配置                                  $    $         $    $  ANS038.BYTE004  $  if((x&0x40)==0x40)y=@09e7;else y=@09e8;
  $  160.TBOX控制窗功能配置                            $    $         $    $  ANS038.BYTE004  $  if((x&0x20)==0x20)y=@050a;else y=@0112;
  $  161.TBOX远程启动功能配置                          $    $         $    $  ANS038.BYTE004  $  if((x&0x10)==0x10)y=@050a;else y=@0112;
  $  162.TBOX远程钥匙管理功能配置                      $    $         $    $  ANS038.BYTE004  $  if((x&0x08)==0x08)y=@050a;else y=@0112;
  $  163.TBOX远程寻车功能设置                          $    $         $    $  ANS038.BYTE004  $  if((x&0x04)==0x04)y=@050a;else y=@0112;
  $  164.TBOX远程解闭锁控制功能配置                    $    $         $    $  ANS038.BYTE004  $  if((x&0x02)==0x02)y=@050a;else y=@0112;
  $  165.TBOX功能配置                                  $    $         $    $  ANS038.BYTE004  $  if((x&0x01)==0x01)y=@050a;else y=@0112;
  $  166.BCM允许重复发送认证的最大次数设置             $    $         $    $  ANS038.BYTE005  $  if((x&0xC0)==0x00)y=@09e1;else if((x&0xC0)==0x40)y=@052a;else if((x&0xC0)==0x80)y=@052b; else y=@09e2;
  $  167.BCM允许认证失败次数                           $    $         $    $  ANS038.BYTE005  $  y=(x&0xF0)/16;
  $  168.等待TBOX响应的最长时间                        $    $         $    $  ANS038.BYTE005  $  y=x&0x0F;
  $  169.左转向输入值                                  $    $         $    $  ANS039.BYTE004  $  if(x==0x00)y=@01db;else if(x==0x01)y=@01db;else if(x==0x02)y=@01da;else if(x==0x03)y=@01da;else y=@01a9;
  $  170.车速状态                                      $    $         $    $  ANS040.BYTE004  $  if(x==0x00)y=@00bb;else if(x==0x01)y=@0136;else y=@01a9;
  $  171.车辆速度                                      $    $  km     $    $  ANS040.BYTE005  $  y=(x1*256+x2)*0.05625;
  $  172.前雨刮自动配置                                $    $         $    $  ANS041.BYTE004  $  if((x&0x80)==0x80)y=@050a;else y=@0112;
  $  173.后雨刮配置                                    $    $         $    $  ANS041.BYTE004  $  if((x&0x40)==0x40)y=@09e7;else y=@09e8;
  $  174.M档硬线开路检测                               $    $         $    $  ANS041.BYTE004  $  if((x&0x20)==0x20)y=@050a;else y=@0112;
  $  175.前洗涤与前雨刮联动输出间隔设置                $    $  ms     $    $  ANS041.BYTE005  $  y=x*100;
  $  176.雨刮堵转判断时间设置                          $    $  s      $    $  ANS041.BYTE006  $  y=x;
  $  177.后洗涤与后雨刮联动输出间隔设置                $    $  ms     $    $  ANS041.BYTE007  $  y=x*100;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:701 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
