
    车型ID：1043

    模拟：协议模拟-->1043

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:74A 02 10 01 00 00 00 00 00       $~  ANS000:7CA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:74A 02 3E 80 00 00 00 00 00       $!  ANS000:7CA 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:74A 03 19 02 09 00 00 00 00       $#  ANS000:7CA 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/43000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:74A 04 14 FF FF FF 00 00 00       $$  ANS000:7CA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:74A 03 22 F1 A0 00 00 00 00       $%  ANS000:7CA 03 22 F1 A0 00 00 00 00
  $%  REQ001:74A 03 22 F1 83 00 00 00 00       $%  ANS001:7CA 03 22 F1 83 00 00 00 00
  $%  REQ002:74A 03 22 F1 A1 00 00 00 00       $%  ANS002:7CA 03 22 F1 A1 00 00 00 00
  $%  REQ003:74A 03 22 F1 91 00 00 00 00       $%  ANS003:7CA 03 22 F1 91 00 00 00 00
  $%  REQ004:74A 03 22 F1 A2 00 00 00 00       $%  ANS004:7CA 03 22 F1 A2 00 00 00 00
  $%  REQ005:74A 03 22 F1 87 00 00 00 00       $%  ANS005:7CA 03 22 F1 87 00 00 00 00
  $%  REQ006:74A 03 22 F1 10 00 00 00 00       $%  ANS006:7CA 03 22 F1 10 00 00 00 00
  $%  REQ007:74A 03 22 F1 92 00 00 00 00       $%  ANS007:7CA 03 22 F1 92 00 00 00 00
  $%  REQ008:74A 03 22 F1 8C 00 00 00 00       $%  ANS008:7CA 03 22 F1 8C 00 00 00 00
  $%  REQ009:74A 03 22 F1 94 00 00 00 00       $%  ANS009:7CA 03 22 F1 94 00 00 00 00
  $%  REQ010:74A 03 22 F1 8A 00 00 00 00       $%  ANS010:7CA 03 22 F1 8A 00 00 00 00
  $%  REQ011:74A 03 22 F1 90 00 00 00 00       $%  ANS011:7CA 03 22 F1 90 00 00 00 00
  $%  REQ012:74A 03 22 F1 A8 00 00 00 00       $%  ANS012:7CA 03 22 F1 A8 00 00 00 00
  $%  REQ013:74A 03 22 F1 8B 00 00 00 00       $%  ANS013:7CA 03 22 F1 8B 00 00 00 00

  $%  000:电控单元应用软件号:              $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  001:电控单元刷写软件参考号:          $%    $%  ANS001.BYTE011  $%  ASCII(X1,X2,X3);
  $%  002:电控单元标定软件号:              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  003:电控单元硬件号:                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  004:电控单元网络文件参考号:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  005:电控单元零件号:                  $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  006:电控单元零件号(上次):            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5);
  $%  007:测试工具参考号(上次):            $%    $%  ANS006.BYTE009  $%  HEX(X1,X2,X3,X4,X5,X6);
  $%  008:里程读数(上次)KM:                $%    $%  ANS006.BYTE015  $%  y=(x1*256*256+x2*256+x3);
  $%  009:供应商电控单元硬件参考号:        $%    $%  ANS007.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  010:车辆零件识别码:                  $%    $%  ANS008.BYTE004  $%  ASCII(X1,X2);
  $%  011:零件号识别码:                    $%    $%  ANS008.BYTE006  $%  ASCII(x1,x2,x3,x4);
  $%  012:供应商识别码:                    $%    $%  ANS008.BYTE010  $%  ASCII(X1,X2,X3,X4,X5,X6);
  $%  013:年:                              $%    $%  ANS008.BYTE016  $%  ASCII(x);
  $%  014:月:                              $%    $%  ANS008.BYTE017  $%  ASCII(x);
  $%  015:日:                              $%    $%  ANS008.BYTE018  $%  ASCII(X1,X2);
  $%  016:供应商电控单元序列号:            $%    $%  ANS008.BYTE020  $%  ASCII(x1,x2,x3,x4);
  $%  017:供应商电控单元软件参考号:        $%    $%  ANS009.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  018:系统供应商识别码:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  019:VIN码:                           $%    $%  ANS011.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  020:车辆特征信息:                    $%    $%  ANS012.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  021:电控单元制造日期:                $%    $%  ANS013.BYTE004  $%  y=SPRINTF([20%02X.%02X.%02X],X1,X2,X3);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.驾驶员选定的灵敏度级
  $  00.驾驶员选定的灵敏度级
  $  REQ000:74A 03 22 C0 03 00 00 00 00       $  ANS000:7CA 03 22 C0 03 00 00 00 00
  $  REQ001:74A 03 22 B0 26 00 00 00 00       $  ANS001:7CA 03 22 B0 26 00 00 00 00

  $  000.FCW(正面碰撞警告)驾驶员选择的敏感级别              $    $       $    $  ANS000.BYTE004  $  if((x&0xF0)==0x00)y=@02ce;else if((x&0xF0)==0x10)y=@06c7;else if((x&0xF0)==0x20)y=@08ce;else if((x&0xF0)==0x30)y=@06cb;else y=@01a9;
  $  001.LDW(车道偏离预警系统)驾驶员选择的敏感级别          $    $       $    $  ANS000.BYTE004  $  if((x&0x0F)==0x00)y=@02ce;else if((x&0x0F)==0x01)y=@06c7;else if((x&0x0F)==0x02)y=@08ce;else if((x&0x0F)==0x03)y=@06cb;else y=@01a9;
  $  002.AEB(自动制动系统)驾驶员选择的敏感级别              $    $       $    $  ANS000.BYTE005  $  if((x&0xF0)==0x00)y=@02ce;else if((x&0xF0)==0x10)y=@06c7;else if((x&0xF0)==0x20)y=@08ce;else if((x&0xF0)==0x30)y=@06cb;else y=@01a9;
  $  003.ACC驾驶员选择的敏感级别                            $    $       $    $  ANS000.BYTE005  $  if((x&0x0F)==0x00)y=@02ce;else if((x&0x0F)==0x01)y=@06c7;else if((x&0x0F)==0x02)y=@08ce;else if((x&0x0F)==0x03)y=@06cb;else y=@01a9;
  $  004.PCW驾驶员选择的敏感级别                            $    $       $    $  ANS000.BYTE006  $  if((x&0xF0)==0x00)y=@02ce;else if((x&0xF0)==0x10)y=@06c7;else if((x&0xF0)==0x20)y=@08ce;else if((x&0xF0)==0x30)y=@06cb;else y=@01a9;
  $  005.AEBP(自动紧急刹车(行人))驾驶员选择的敏感级别       $    $       $    $  ANS000.BYTE006  $  if((x&0x0F)==0x00)y=@02ce;else if((x&0x0F)==0x01)y=@06c7;else if((x&0x0F)==0x02)y=@08ce;else if((x&0x0F)==0x03)y=@06cb;else y=@01a9;
  $  006.PCW前部碰撞警告驱动程序选择的敏感级别              $    $       $    $  ANS001.BYTE005  $  if((x&0xF0)==0x00)y=@02ce;else if((x&0xF0)==0x10)y=@06c7;else if((x&0xF0)==0x20)y=@08ce;else if((x&0xF0)==0x30)y=@06cb;else y=@01a9;
  $  007.LDW(车道偏离预警系统)驾驶员选择的敏感级别          $    $       $    $  ANS001.BYTE005  $  if((x&0x0F)==0x00)y=@02ce;else if((x&0x0F)==0x01)y=@06c7;else if((x&0x0F)==0x02)y=@08ce;else if((x&0x0F)==0x03)y=@06cb;else y=@01a9;
  $  008.AEB(自动制动系统)驾驶员选择的敏感级别              $    $       $    $  ANS001.BYTE006  $  if((x&0xF0)==0x00)y=@02ce;else if((x&0xF0)==0x10)y=@06c7;else if((x&0xF0)==0x20)y=@08ce;else if((x&0xF0)==0x30)y=@06cb;else y=@01a9;
  $  009.ACC驾驶员选择的敏感级别                            $    $       $    $  ANS001.BYTE006  $  if((x&0x0F)==0x00)y=@02ce;else if((x&0x0F)==0x01)y=@06c7;else if((x&0x0F)==0x02)y=@08ce;else if((x&0x0F)==0x03)y=@06cb;else y=@01a9;
  $  010.PCW驾驶员选择的敏感级别                            $    $       $    $  ANS001.BYTE007  $  if((x&0xF0)==0x00)y=@02ce;else if((x&0xF0)==0x10)y=@06c7;else if((x&0xF0)==0x20)y=@08ce;else if((x&0xF0)==0x30)y=@06cb;else y=@01a9;
  $  011.AEBP(自动紧急刹车(行人))驾驶员选择的敏感级别       $    $       $    $  ANS001.BYTE007  $  if((x&0x0F)==0x00)y=@02ce;else if((x&0x0F)==0x01)y=@06c7;else if((x&0x0F)==0x02)y=@08ce;else if((x&0x0F)==0x03)y=@06cb;else y=@01a9;

  $)  01.DTC配置
  $  01.DTC配置
  $  REQ000:74A 03 22 C0 02 00 00 00 00       $  ANS000:7CA 03 22 C0 02 00 00 00 00

  $  000.LKA(车道保持辅助系统)由于受到无效数据而被禁用       $    $       $    $  ANS000.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  001.LDW(车道偏离预警系统)开关指示灯短路                 $    $       $    $  ANS000.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  002.LDW(车道偏离预警系统)开关按键粘滞                   $    $       $    $  ANS000.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  003.DAS驾驶辅助软件版本不匹配                           $    $       $    $  ANS000.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  004.DAS驾驶辅助系统标定异常                             $    $       $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  005.DAS驾驶辅助系统摄像头视野遮挡                       $    $       $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  006.图像处理器温度过高                                  $    $       $    $  ANS000.BYTE005  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  007.DAS驾驶辅助系统内部故障                             $    $       $    $  ANS000.BYTE005  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  008.AHB功能因网络数据无效禁止                           $    $       $    $  ANS000.BYTE005  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  009.TSR功能因网络数据无效禁止                           $    $       $    $  ANS000.BYTE005  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  010.ACC功能因网络数据无效禁止                           $    $       $    $  ANS000.BYTE005  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  011.ARB(自动制动系统)功能因网络数据无效禁止             $    $       $    $  ANS000.BYTE005  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  012.FCW(正面碰撞警告)功能因网络数据无效禁止             $    $       $    $  ANS000.BYTE005  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  013.LDW(车道偏离预警系统)功能因网络数据无效禁止         $    $       $    $  ANS000.BYTE005  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  014.与BCM(车身控制管理系统)通讯丢失                     $    $       $    $  ANS000.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  015.与TCU(变速箱控制单元)通讯丢失                       $    $       $    $  ANS000.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  016.与IPK(仪表)通讯丢失                                 $    $       $    $  ANS000.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  017.与ABS/ESP通讯丢失                                   $    $       $    $  ANS000.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  018.与SAS(方向盘转向角传感器)通讯丢失                   $    $       $    $  ANS000.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  019.控制模块通信总线关闭                                $    $       $    $  ANS000.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;

  $)  02.DAS软件不匹配代码
  $  02.DAS软件不匹配代码
  $  REQ000:74A 03 22 B0 4B 00 00 00 00       $  ANS000:7CA 03 22 B0 4B 00 00 00 00

  $  000.MCU应用版本与MCU标定文件不兼容                $    $       $    $  ANS000.BYTE004  $  if((x&0x04)==0x04)y=@00ca;else y=@00c9;
  $  001.图像处理单元配置文件与MCU标定文件不兼容       $    $       $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@00ca;else y=@00c9;
  $  002.MCU应用版本与图像处理单元不兼容               $    $       $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;

  $)  03.DAS内部故障代码
  $  03.DAS内部故障代码
  $  REQ000:74A 03 22 B0 3E 00 00 00 00       $  ANS000:7CA 03 22 B0 3E 00 00 00 00

  $  000.Sdm25碰撞重叠                                        $    $       $    $  ANS000.BYTE004  $  if((x&0x80)==0x80)y=@00ca;else y=@00c9;
  $  001.Sdm9显着差异，在重叠区域的两个前锋的兴趣指挥车       $    $       $    $  ANS000.BYTE004  $  if((x&0x40)==0x40)y=@00ca;else y=@00c9;
  $  002.Sdm8位置差分之间的区域利益和简单的三角网             $    $       $    $  ANS000.BYTE004  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  003.Sdm7显着差异，在目标的位置                           $    $       $    $  ANS000.BYTE004  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  004.Sdm6TCC显着差异                                      $    $       $    $  ANS000.BYTE004  $  if((x&0x08)==0x08)y=@00ca;else y=@00c9;
  $  005.(轧-帧计数器)误差信号的消息                          $    $       $    $  ANS000.BYTE004  $  if((x&0x04)==0x04)y=@00ca;else y=@00c9;
  $  006.校验的安全输入信号不匹配                             $    $       $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@00ca;else y=@00c9;
  $  007.重复误差重复的挑战与回应                             $    $       $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;
  $  008.Sdm11单片机CRC错误                                   $    $       $    $  ANS000.BYTE005  $  if((x&0x80)==0x80)y=@00ca;else y=@00c9;
  $  009.Sdm29单片机RFC误差                                   $    $       $    $  ANS000.BYTE005  $  if((x&0x40)==0x40)y=@00ca;else y=@00c9;
  $  010.Sdm30图像索引无效                                    $    $       $    $  ANS000.BYTE005  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  011.Sdm4校准                                             $    $       $    $  ANS000.BYTE005  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  012.Sdm18内部图像保护                                    $    $       $    $  ANS000.BYTE005  $  if((x&0x08)==0x08)y=@00ca;else y=@00c9;
  $  013.Sdm13大数据                                          $    $       $    $  ANS000.BYTE005  $  if((x&0x04)==0x04)y=@00ca;else y=@00c9;
  $  014.Sdm挑战响应误差                                      $    $       $    $  ANS000.BYTE005  $  if((x&0x02)==0x02)y=@00ca;else y=@00c9;
  $  015.Sdm32内部腐败的信号                                  $    $       $    $  ANS000.BYTE005  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;
  $  016.Sdm31内部CRC错误                                     $    $       $    $  ANS000.BYTE006  $  if((x&0x80)==0x80)y=@00ca;else y=@00c9;
  $  017.Sdm27AEB型双校验误差                                 $    $       $    $  ANS000.BYTE006  $  if((x&0x40)==0x40)y=@00ca;else y=@00c9;
  $  018.Sdm26CRC错误                                         $    $       $    $  ANS000.BYTE006  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  019.Sdm19图像缺失                                        $    $       $    $  ANS000.BYTE006  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  020.EyeQ(视频驾驶辅助系统)软件诊断失败                   $    $       $    $  ANS000.BYTE006  $  if((x&0x08)==0x08)y=@00ca;else y=@00c9;
  $  021.EyeQ(视频驾驶辅助系统) APP失败                       $    $       $    $  ANS000.BYTE006  $  if((x&0x04)==0x04)y=@00ca;else y=@00c9;
  $  022.EyeQ(视频驾驶辅助系统) 启动失败                      $    $       $    $  ANS000.BYTE006  $  if((x&0x02)==0x02)y=@00ca;else y=@00c9;
  $  023.GPIO10                                               $    $       $    $  ANS000.BYTE006  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;
  $  024.EyeQ(视频驾驶辅助系统)单个启动程序丢失               $    $       $    $  ANS000.BYTE007  $  if((x&0x80)==0x80)y=@00ca;else y=@00c9;
  $  025.MCU EEPROM(电可擦只读存储器)测试失败                 $    $       $    $  ANS000.BYTE007  $  if((x&0x40)==0x40)y=@00ca;else y=@00c9;
  $  026.MCU RAM(随机存取存储器)测试失败                      $    $       $    $  ANS000.BYTE007  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  027.MCU闪存校验失败                                      $    $       $    $  ANS000.BYTE007  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  028.MCU复位异常                                          $    $       $    $  ANS000.BYTE007  $  if((x&0x08)==0x08)y=@00ca;else y=@00c9;
  $  029.MCU PLL失败                                          $    $       $    $  ANS000.BYTE007  $  if((x&0x04)==0x04)y=@00ca;else y=@00c9;
  $  030.DAS(智能驾驶辅助系统) 2.8V欠压                       $    $       $    $  ANS000.BYTE007  $  if((x&0x02)==0x02)y=@00ca;else y=@00c9;
  $  031.DAS(智能驾驶辅助系统) 2.8V过压                       $    $       $    $  ANS000.BYTE007  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;
  $  032.DAS(智能驾驶辅助系统) 1.2V欠压                       $    $       $    $  ANS000.BYTE008  $  if((x&0x80)==0x80)y=@00ca;else y=@00c9;
  $  033.DAS(智能驾驶辅助系统) 1.2V过压                       $    $       $    $  ANS000.BYTE008  $  if((x&0x40)==0x40)y=@00ca;else y=@00c9;
  $  034.DAS(智能驾驶辅助系统) 1.8V欠压                       $    $       $    $  ANS000.BYTE008  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  035.DAS(智能驾驶辅助系统) 1.8V过压                       $    $       $    $  ANS000.BYTE008  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  036.DAS(智能驾驶辅助系统) 3.3V欠压                       $    $       $    $  ANS000.BYTE008  $  if((x&0x08)==0x08)y=@00ca;else y=@00c9;
  $  037.DAS(智能驾驶辅助系统) 3.3V过压                       $    $       $    $  ANS000.BYTE008  $  if((x&0x04)==0x04)y=@00ca;else y=@00c9;
  $  038.DAS(智能驾驶辅助系统) 5V欠压                         $    $       $    $  ANS000.BYTE008  $  if((x&0x02)==0x02)y=@00ca;else y=@00c9;
  $  039.DAS(智能驾驶辅助系统) 5V过压                         $    $       $    $  ANS000.BYTE008  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;

  $)  04.车速
  $  04.车速
  $  REQ000:74A 03 22 B0 00 00 00 00 00       $  ANS000:7CA 03 22 B0 00 00 00 00 00

  $  000.车辆速度       $    $  km/h     $    $  ANS000.BYTE004  $  y=(x1*256+x2)/64.0;

  $)  05.车辆的地区代码
  $  05.车辆的地区代码
  $  REQ000:74A 03 22 C0 05 00 00 00 00       $  ANS000:7CA 03 22 C0 05 00 00 00 00
  $  REQ001:74A 03 22 B0 28 00 00 00 00       $  ANS001:7CA 03 22 B0 28 00 00 00 00

  $  000.车辆区域码       $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@00d9;else if(x==0x02)y=@0b6e;else if(x==0x03)y=@00da;else if(x==0x04)y=@0b6f;else if(x==0x05)y=@08be;else if(x==0x06)y=@00d8;else if(x==0x07)y=@067b;else if(x==0x08)y=@08c3;else if(x==0x09)y=@0671;else if(x==0x0A)y=@0675;else y=@04ec;
  $  001.车辆区域码       $    $       $    $  ANS001.BYTE004  $  if(x==0x01)y=@00d9;else if(x==0x02)y=@0b6e;else if(x==0x03)y=@00da;else if(x==0x04)y=@0b6f;else if(x==0x05)y=@08be;else if(x==0x06)y=@00d8;else if(x==0x07)y=@067b;else if(x==0x08)y=@08c3;else if(x==0x09)y=@0671;else if(x==0x0A)y=@0675;else y=@04ec;

  $)  06.目标速度
  $  06.目标速度
  $  REQ000:74A 03 22 B0 29 00 00 00 00       $  ANS000:7CA 03 22 B0 29 00 00 00 00
  $  REQ001:74A 03 22 C0 06 00 00 00 00       $  ANS001:7CA 03 22 C0 06 00 00 00 00

  $  000.摄像头目标速度需求        $    $       $    $  ANS000.BYTE004  $  y=x1*256+x2;
  $  001.ACC驾驶员选择的速度       $    $       $    $  ANS000.BYTE006  $  y=x1*256+x2;
  $  002.摄像头目标速度需求        $    $       $    $  ANS001.BYTE004  $  y=x1*256+x2;
  $  003.ACC驾驶员选择的速度       $    $       $    $  ANS001.BYTE006  $  y=x1*256+x2;

  $)  07.TSR退出原因状态0
  $  07.TSR退出原因状态0
  $  REQ000:74A 03 22 B0 7A 00 00 00 00       $  ANS000:7CA 03 22 B0 7A 00 00 00 00

  $  000.TSR从激活状态异常退出原因0-7        $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b70;else if(x==0x02)y=@0b21;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  001.TSR从激活状态异常退出原因8-15       $    $       $    $  ANS000.BYTE005  $  y=x;

  $)  08.TSR NRTA原因事件0
  $  08.TSR NRTA原因事件0
  $  REQ000:74A 03 22 B0 78 00 00 00 00       $  ANS000:7CA 03 22 B0 78 00 00 00 00

  $  000.TSR从激活状态异常退出原因0-7        $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b70;else if(x==0x02)y=@0b21;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  001.TSR从激活状态异常退出原因8-15       $    $       $    $  ANS000.BYTE005  $  y=x;
  $  002.TSR异常退出时的年份                 $    $       $    $  ANS000.BYTE006  $  y=x+2000;
  $  003.TSR异常退出时的月份                 $    $       $    $  ANS000.BYTE007  $  y=x;
  $  004.TSR异常退出时的日期                 $    $       $    $  ANS000.BYTE008  $  y=x;
  $  005.TSR异常退出时的时刻                 $    $       $    $  ANS000.BYTE009  $  y=x;
  $  006.TSR异常退出时的分钟                 $    $       $    $  ANS000.BYTE010  $  y=x;
  $  007.TSR异常退出时的秒数                 $    $       $    $  ANS000.BYTE011  $  y=x;
  $  008.TSR异常退出时的年份                 $    $       $    $  ANS000.BYTE012  $  y=x;

  $)  09.功能开关9
  $  09.功能开关9
  $  REQ000:74A 03 22 B0 27 00 00 00 00       $  ANS000:7CA 03 22 B0 27 00 00 00 00

  $  000.AHB功能开关                            $    $       $    $  ANS000.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  001.TSR功能开关                            $    $       $    $  ANS000.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  002.ACC功能开关                            $    $       $    $  ANS000.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  003.AEBP(自动紧急刹车(行人))功能开关       $    $       $    $  ANS000.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  004.AEB(自动制动系统)功能开关              $    $       $    $  ANS000.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  005.PCW功能开关                            $    $       $    $  ANS000.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  006.FCW(正面碰撞警告)功能开关              $    $       $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  007.LDW(车道偏离预警系统)功能开关          $    $       $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  008.LKA(车道保持辅助系统)功能开关          $    $       $    $  ANS000.BYTE005  $  if((x&0x01)==0x01)y=@0028;else y=@000f;

  $)  10.FCW退出原因事件0
  $  10.FCW退出原因事件0
  $  REQ000:74A 03 22 B0 74 00 00 00 00       $  ANS000:7CA 03 22 B0 74 00 00 00 00

  $  000.FCW(正面碰撞警告)从激活状态异常退出原因0-7        $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b71;else if(x==0x02)y=@0b72;else if(x==0x04)y=@0b4c;else if(x==0x08)y=@0b4f;else if(x==0x10)y=@0b50;else if(x==0x20)y=@0b5f;else if(x==0x40)y=@0b61;else if(x==0x80)y=@0b73;else y=@01a9;
  $  001.FCW(正面碰撞警告)从激活状态异常退出原因8-15       $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b47;else if(x==0x02)y=@0b21;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  002.FCW(正面碰撞警告)异常退出时的年份                 $    $         $    $  ANS000.BYTE006  $  y=x+2000;
  $  003.FCW(正面碰撞警告)异常退出时的月份                 $    $         $    $  ANS000.BYTE007  $  y=x;
  $  004.FCW(正面碰撞警告)异常退出时的日期                 $    $         $    $  ANS000.BYTE008  $  y=x;
  $  005.FCW(正面碰撞警告)异常退出时的时刻                 $    $         $    $  ANS000.BYTE009  $  y=x;
  $  006.FCW(正面碰撞警告)异常退出时的分钟                 $    $         $    $  ANS000.BYTE010  $  y=x;
  $  007.FCW(正面碰撞警告)异常退出时的秒数                 $    $         $    $  ANS000.BYTE011  $  y=x;
  $  008.FCW(正面碰撞警告)异常退出时的年份                 $    $  km     $    $  ANS000.BYTE012  $  y=x1*256*256+x2*256+x3;

  $)  11.FCW退出代码
  $  11.FCW退出代码
  $  REQ000:74A 03 22 B0 94 00 00 00 00       $  ANS000:7CA 03 22 B0 94 00 00 00 00

  $  000.FCW(正面碰撞警告)从激活状态异常退出原因0-7        $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b71;else if(x==0x02)y=@0b72;else if(x==0x04)y=@0b4c;else if(x==0x08)y=@0b4f;else if(x==0x10)y=@0b50;else if(x==0x20)y=@0b5f;else if(x==0x40)y=@0b61;else if(x==0x80)y=@0b73;else y=@01a9;
  $  001.FCW(正面碰撞警告)从激活状态异常退出原因8-15       $    $       $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b47;else if(x==0x02)y=@0b21;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;

  $)  12.FCW NRTA原因状态0
  $  12.FCW NRTA原因状态0
  $  REQ000:74A 03 22 B0 77 00 00 00 00       $  ANS000:7CA 03 22 B0 77 00 00 00 00

  $  000.FCW(正面碰撞警告)无法进入的原因0-7        $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b71;else if(x==0x02)y=@0b72;else if(x==0x04)y=@0b4c;else if(x==0x08)y=@0b4f;else if(x==0x10)y=@0b50;else if(x==0x20)y=@0b5f;else if(x==0x40)y=@0b61;else if(x==0x80)y=@0b73;else y=@01a9;
  $  001.FCW(正面碰撞警告)无法进入的原因8-15       $    $       $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b47;else if(x==0x02)y=@0b21;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;

  $)  13.FCW NRTA原因事件0
  $  13.FCW NRTA原因事件0
  $  REQ000:74A 03 22 B0 75 00 00 00 00       $  ANS000:7CA 03 22 B0 75 00 00 00 00

  $  000.FCW(正面碰撞警告)从激活状态异常退出原因0-7        $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b71;else if(x==0x02)y=@0b72;else if(x==0x04)y=@0b4c;else if(x==0x08)y=@0b4f;else if(x==0x10)y=@0b50;else if(x==0x20)y=@0b5f;else if(x==0x40)y=@0b61;else if(x==0x80)y=@0b73;else y=@01a9;
  $  001.FCW(正面碰撞警告)从激活状态异常退出原因8-15       $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b47;else if(x==0x02)y=@0b21;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  002.FCW(正面碰撞警告)异常退出时的年份                 $    $         $    $  ANS000.BYTE006  $  y=x+2000;
  $  003.FCW(正面碰撞警告)异常退出时的月份                 $    $         $    $  ANS000.BYTE007  $  y=x;
  $  004.FCW(正面碰撞警告)异常退出时的日期                 $    $         $    $  ANS000.BYTE008  $  y=x;
  $  005.FCW(正面碰撞警告)异常退出时的时刻                 $    $         $    $  ANS000.BYTE009  $  y=x;
  $  006.FCW(正面碰撞警告)异常退出时的分钟                 $    $         $    $  ANS000.BYTE010  $  y=x;
  $  007.FCW(正面碰撞警告)异常退出时的秒数                 $    $         $    $  ANS000.BYTE011  $  y=x;
  $  008.FCW(正面碰撞警告)异常退出时的年份                 $    $  km     $    $  ANS000.BYTE012  $  y=x1*256*256+x2*256+x3;

  $)  14.EOL校准参数
  $  14.EOL校准参数
  $  REQ000:74A 03 22 B0 2F 00 00 00 00       $  ANS000:7CA 03 22 B0 2F 00 00 00 00

  $  000.摄像头到左侧车轮外缘距离           $    $  m       $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.01;
  $  001.摄像头到右侧车轮外缘距离           $    $  m       $    $  ANS000.BYTE006  $  y=(x1*256+x2)*0.01;
  $  002.摄像头到目标距离                   $    $  m       $    $  ANS000.BYTE008  $  y=(x1*256+x2)*0.001;
  $  003.摄像头高度                         $    $  m       $    $  ANS000.BYTE010  $  y=(x1*256+x2)*0.01;
  $  004.从地面到目标中心左侧高度           $    $  m       $    $  ANS000.BYTE012  $  y=(x1*256+x2)*0.01;
  $  005.从地面到目标中心右侧高度           $    $  m       $    $  ANS000.BYTE014  $  y=(x1*256+x2)*0.01;
  $  006.从车辆中心到目标中心左侧距离       $    $  m       $    $  ANS000.BYTE016  $  y=(x1*256+x2)*0.01;
  $  007.从车辆中心到目标中心右侧距离       $    $  m       $    $  ANS000.BYTE018  $  y=(x1*256+x2)*0.01;
  $  008.目标单个块大小，非整个目标         $    $  rad     $    $  ANS000.BYTE020  $  y=(x1*256+x2)*0.001;

  $)  15.ACC退出原因事件3
  $  15.ACC退出原因事件3
  $  REQ000:74A 03 22 B0 53 00 00 00 00       $  ANS000:7CA 03 22 B0 53 00 00 00 00

  $  000.ACC从激活状态异常退出原因0-7                $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4b;else if(x==0x02)y=@0b4c;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b4d;else if(x==0x40)y=@0b4e;else if(x==0x80)y=@0b4f;else y=@01a9;
  $  001.ACC从激活状态异常退出原因8-15               $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b50;else if(x==0x02)y=@0b51;else if(x==0x04)y=@0b52;else if(x==0x08)y=@0b53;else if(x==0x10)y=@0b54;else if(x==0x20)y=@0b55;else if(x==0x40)y=@0b56;else if(x==0x80)y=@0b57;else y=@01a9;
  $  002.ACC从激活状态异常退出原因16-23              $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b58;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b5b;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b5d;else if(x==0x40)y=@0018;else if(x==0x80)y=@0b5e;else y=@01a9;
  $  003.ACC从激活状态异常退出原因24-31              $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b5f;else if(x==0x02)y=@0b60;else if(x==0x04)y=@0b61;else if(x==0x08)y=@0b62;else if(x==0x10)y=@0b63;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0b64;else y=@01a9;
  $  004.ACC从激活状态异常退出原因32-39              $    $         $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b65;else if(x==0x02)y=@0b66;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b67;else if(x==0x10)y=@0b68;else if(x==0x20)y=@0b69;else if(x==0x40)y=@0b6a;else if(x==0x80)y=@0b6b;else y=@01a9;
  $  005.ACC从激活状态异常退出原因40-47              $    $         $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b21;else if(x==0x02)y=@0b48;else if(x==0x04)y=@0b49;else if(x==0x08)y=@0b4a;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  006.ACC从激活状态异常退出时的故障保险状态       $    $         $    $  ANS000.BYTE010  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  007.ACC异常退出时的年份                         $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.ACC异常退出时的月份                         $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.ACC异常退出时的日期                         $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.ACC异常退出时的时刻                         $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.ACC异常退出时的分钟                         $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.ACC异常退出时的秒数                         $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.ACC异常退出时的年份                         $    $  km     $    $  ANS000.BYTE018  $  y=x1*256*256+x2*256+x3;

  $)  16.IHC退出原因状态0
  $  16.IHC退出原因状态0
  $  REQ000:74A 03 22 B0 7E 00 00 00 00       $  ANS000:7CA 03 22 B0 7E 00 00 00 00

  $  000.IHC(智能远光灯控制)从激活状态异常退出原因0-7        $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b7a;else if(x==0x02)y=@0b7b;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  001.IHC(智能远光灯控制)从激活状态异常退出原因8-15       $    $       $    $  ANS000.BYTE005  $  y=x;

  $)  17.IHC退出原因事件0
  $  17.IHC退出原因事件0
  $  REQ000:74A 03 22 B0 7C 00 00 00 00       $  ANS000:7CA 03 22 B0 7C 00 00 00 00

  $  000.IHC(智能远光灯控制)从激活状态异常退出原因0-7        $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b7a;else if(x==0x02)y=@0b7b;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  001.IHC(智能远光灯控制)从激活状态异常退出原因8-15       $    $         $    $  ANS000.BYTE005  $  y=x;
  $  002.IHC(智能远光灯控制)异常退出时的年份                 $    $         $    $  ANS000.BYTE006  $  y=x+2000;
  $  003.IHC(智能远光灯控制)异常退出时的月份                 $    $         $    $  ANS000.BYTE007  $  y=x;
  $  004.IHC(智能远光灯控制)异常退出时的日期                 $    $         $    $  ANS000.BYTE008  $  y=x;
  $  005.IHC(智能远光灯控制)异常退出时的时刻                 $    $         $    $  ANS000.BYTE009  $  y=x;
  $  006.IHC(智能远光灯控制)异常退出时的分钟                 $    $         $    $  ANS000.BYTE010  $  y=x;
  $  007.IHC(智能远光灯控制)异常退出时的秒数                 $    $         $    $  ANS000.BYTE011  $  y=x;
  $  008.IHC(智能远光灯控制)异常退出时的年份                 $    $  km     $    $  ANS000.BYTE012  $  y=x;

  $)  18.IHC退出代码
  $  18.IHC退出代码
  $  REQ000:74A 03 22 B0 96 00 00 00 00       $  ANS000:7CA 03 22 B0 96 00 00 00 00

  $  000.IHC(智能远光灯控制)从激活状态异常退出原因0-7        $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b7a;else if(x==0x02)y=@0b7b;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  001.IHC(智能远光灯控制)从激活状态异常退出原因8-15       $    $       $    $  ANS000.BYTE005  $  y=x;

  $)  19.IHC NRTA原因事件0
  $  19.IHC NRTA原因事件0
  $  REQ000:74A 03 22 B0 7D 00 00 00 00       $  ANS000:7CA 03 22 B0 7D 00 00 00 00

  $  000.IHC(智能远光灯控制)从激活状态异常退出原因0-7        $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b7a;else if(x==0x02)y=@0b7b;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  001.IHC(智能远光灯控制)从激活状态异常退出原因8-15       $    $         $    $  ANS000.BYTE005  $  y=x;
  $  002.IHC(智能远光灯控制)异常退出时的年份                 $    $         $    $  ANS000.BYTE006  $  y=x+2000;
  $  003.IHC(智能远光灯控制)异常退出时的月份                 $    $         $    $  ANS000.BYTE007  $  y=x;
  $  004.IHC(智能远光灯控制)异常退出时的日期                 $    $         $    $  ANS000.BYTE008  $  y=x;
  $  005.IHC(智能远光灯控制)异常退出时的时刻                 $    $         $    $  ANS000.BYTE009  $  y=x;
  $  006.IHC(智能远光灯控制)异常退出时的分钟                 $    $         $    $  ANS000.BYTE010  $  y=x;
  $  007.IHC(智能远光灯控制)异常退出时的秒数                 $    $         $    $  ANS000.BYTE011  $  y=x;
  $  008.IHC(智能远光灯控制)异常退出时的年份                 $    $  km     $    $  ANS000.BYTE012  $  y=x;

  $)  20.功能开关
  $  20.功能开关
  $  REQ000:74A 03 22 C0 04 00 00 00 00       $  ANS000:7CA 03 22 C0 04 00 00 00 00

  $  000.AHB功能开关                            $    $       $    $  ANS000.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  001.TSR功能开关                            $    $       $    $  ANS000.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  002.ACC功能开关                            $    $       $    $  ANS000.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  003.AEBP(自动紧急刹车(行人))功能开关       $    $       $    $  ANS000.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  004.AEB(自动制动系统)功能开关              $    $       $    $  ANS000.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  005.PCW功能开关                            $    $       $    $  ANS000.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  006.FCW(正面碰撞警告)功能开关              $    $       $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  007.LDW(车道偏离预警系统)功能开关          $    $       $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  008.LKA(车道保持辅助系统)功能开关          $    $       $    $  ANS000.BYTE005  $  if((x&0x01)==0x01)y=@0028;else y=@000f;

  $)  21.AEB NRTA原因事件0
  $  21.AEB NRTA原因事件0
  $  REQ000:74A 03 22 B0 65 00 00 00 00       $  ANS000:7CA 03 22 B0 65 00 00 00 00

  $  000.AEB(自动紧急刹车)无法进入原因0-7                 $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4c;else if(x==0x02)y=@0103;else if(x==0x04)y=@0b50;else if(x==0x08)y=@0b54;else if(x==0x10)y=@0b55;else if(x==0x20)y=@0b51;else if(x==0x40)y=@0b53;else if(x==0x80)y=@0b56;else y=@01a9;
  $  001.AEB(自动紧急刹车)无法进入原因8-15                $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b5b;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b7c;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b73;else if(x==0x40)y=@0b5f;else if(x==0x80)y=@0b61;else y=@01a9;
  $  002.AEB(自动紧急刹车)无法进入原因16-23               $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b63;else if(x==0x02)y=@0b64;else if(x==0x04)y=@0b65;else if(x==0x08)y=@0b7d;else if(x==0x10)y=@0b67;else if(x==0x20)y=@0b6a;else if(x==0x40)y=@0b21;else if(x==0x80)y=@0b48;else y=@01a9;
  $  003.AEB(自动紧急刹车)无法进入原因24-31               $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b49;else if(x==0x02)y=@0b4a;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  004.AEB(自动紧急刹车)无法进入时的故障保障状态1       $    $         $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b7e;else if(x==0x02)y=@0b7f;else if(x==0x04)y=@0b80;else if(x==0x08)y=@0b81;else if(x==0x10)y=@0b82;else if(x==0x20)y=@0b83;else if(x==0x40)y=@0b84;else if(x==0x80)y=@0b85;else y=@01a9;
  $  005.AEB(自动紧急刹车)无法进入时的故障保障状态2       $    $         $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else y=@01a9;
  $  006.AEB(自动紧急刹车)无法进入时的年份                $    $         $    $  ANS000.BYTE010  $  y=x+2000;
  $  007.AEB(自动紧急刹车)无法进入时的月份                $    $         $    $  ANS000.BYTE011  $  y=x;
  $  008.AEB(自动紧急刹车)无法进入时的日期                $    $         $    $  ANS000.BYTE012  $  y=x;
  $  009.AEB(自动紧急刹车)无法进入时的时刻                $    $         $    $  ANS000.BYTE013  $  y=x;
  $  010.AEB(自动紧急刹车)无法进入时的分钟                $    $         $    $  ANS000.BYTE014  $  y=x;
  $  011.AEB(自动紧急刹车)无法进入时的秒数                $    $         $    $  ANS000.BYTE015  $  y=x;
  $  012.AEB(自动紧急刹车)无法进入时的年份                $    $  km     $    $  ANS000.BYTE016  $  y=x1*256+x2;

  $)  22.AEB 事件快照4
  $  22.AEB 事件快照4
  $  REQ000:74A 03 22 B0 84 00 00 00 00       $  ANS000:7CA 03 22 B0 84 00 00 00 00

  $  000.事件功能                            $    $            $    $  ANS000.BYTE004  $  if((x&0xC0)==0x00)y=@023f;else if((x&0xC0)==0x40)y=@0b86;else if((x&0xC0)==0x80)y=@0b87;else y=@0004;
  $  001.AEB(自动紧急刹车)水准               $    $            $    $  ANS000.BYTE004  $  if((x&0x30)==0x00)y=@0b74;else if((x&0x30)==0x10)y=@0b75;else if((x&0x30)==0x20)y=@0b76;else y=@0004;
  $  002.FCW(正面碰撞警告)驾驶员敏感度       $    $            $    $  ANS000.BYTE004  $  if((x&0x0F)==0x00)y=@0629;else if((x&0x0F)==0x01)y=@0b77;else if((x&0x0F)==0x02)y=@0b78;else if((x&0x0F)==0x03)y=@0b79;else y=@01a9;
  $  003.事件车辆速度                        $    $  kPa       $    $  ANS000.BYTE005  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))+2000;
  $  004.事件加速器实际位置                  $    $  %         $    $  ANS000.BYTE007  $  y=(x&0x7F)-(x&0x80);
  $  005.事件刹车板实际位置                  $    $  %         $    $  ANS000.BYTE008  $  y=(x&0x7F)-(x&0x80);
  $  006.事件近光灯打开                      $    $            $    $  ANS000.BYTE009  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  007.事件主光灯打开                      $    $            $    $  ANS000.BYTE009  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  008.事件经线加速性                      $    $  m/s^2     $    $  ANS000.BYTE009  $  y=(((x1*256+x2)&0x07FF)-((x1*256+x2)&0x0800))*0.027162-21.591999;
  $  009.实践偏航角速度                      $    $  rad       $    $  ANS000.BYTE012  $  y=(((x1*256+x2)&0x01FF)-((x1*256+x2)&0x0200))*0.0021333-2.094;
  $  010.事件发送年份                        $    $            $    $  ANS000.BYTE017  $  y=x+2000;
  $  011.事件发送月份                        $    $            $    $  ANS000.BYTE018  $  y=x;
  $  012.事件发送日期                        $    $            $    $  ANS000.BYTE019  $  y=x;
  $  013.事件发送时刻                        $    $            $    $  ANS000.BYTE020  $  y=x;
  $  014.事件发送分钟                        $    $            $    $  ANS000.BYTE021  $  y=x;
  $  015.事件发送秒数                        $    $            $    $  ANS000.BYTE022  $  y=x;
  $  016.事件发送年份                        $    $  km        $    $  ANS000.BYTE023  $  y=x1*256*256+x2*256+x3;

  $)  23.AEB 事件快照3
  $  23.AEB 事件快照3
  $  REQ000:74A 03 22 B0 83 00 00 00 00       $  ANS000:7CA 03 22 B0 83 00 00 00 00

  $  000.事件功能                            $    $            $    $  ANS000.BYTE004  $  if((x&0xC0)==0x00)y=@023f;else if((x&0xC0)==0x40)y=@0b86;else if((x&0xC0)==0x80)y=@0b87;else y=@0004;
  $  001.AEB(自动紧急刹车)水准               $    $            $    $  ANS000.BYTE004  $  if((x&0x30)==0x00)y=@0b74;else if((x&0x30)==0x10)y=@0b75;else if((x&0x30)==0x20)y=@0b76;else y=@0004;
  $  002.FCW(正面碰撞警告)驾驶员敏感度       $    $            $    $  ANS000.BYTE004  $  if((x&0x0F)==0x00)y=@0629;else if((x&0x0F)==0x01)y=@0b77;else if((x&0x0F)==0x02)y=@0b78;else if((x&0x0F)==0x03)y=@0b79;else y=@01a9;
  $  003.事件车辆速度                        $    $  kPa       $    $  ANS000.BYTE005  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))+2000;
  $  004.事件加速器实际位置                  $    $  %         $    $  ANS000.BYTE007  $  y=(x&0x7F)-(x&0x80);
  $  005.事件刹车板实际位置                  $    $  %         $    $  ANS000.BYTE008  $  y=(x&0x7F)-(x&0x80);
  $  006.事件近光灯打开                      $    $            $    $  ANS000.BYTE009  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  007.事件主光灯打开                      $    $            $    $  ANS000.BYTE009  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  008.事件经线加速性                      $    $  m/s^2     $    $  ANS000.BYTE009  $  y=(((x1*256+x2)&0x07FF)-((x1*256+x2)&0x0800))*0.027162-21.591999;
  $  009.实践偏航角速度                      $    $  rad       $    $  ANS000.BYTE012  $  y=(((x1*256+x2)&0x01FF)-((x1*256+x2)&0x0200))*0.0021333-2.094;
  $  010.事件发送年份                        $    $            $    $  ANS000.BYTE017  $  y=x+2000;
  $  011.事件发送月份                        $    $            $    $  ANS000.BYTE018  $  y=x;
  $  012.事件发送日期                        $    $            $    $  ANS000.BYTE019  $  y=x;
  $  013.事件发送时刻                        $    $            $    $  ANS000.BYTE020  $  y=x;
  $  014.事件发送分钟                        $    $            $    $  ANS000.BYTE021  $  y=x;
  $  015.事件发送秒数                        $    $            $    $  ANS000.BYTE022  $  y=x;
  $  016.事件发送年份                        $    $  km        $    $  ANS000.BYTE023  $  y=x1*256*256+x2*256+x3;

  $)  24.AEB 事件快照2
  $  24.AEB 事件快照2
  $  REQ000:74A 03 22 B0 82 00 00 00 00       $  ANS000:7CA 03 22 B0 82 00 00 00 00

  $  000.事件功能                            $    $            $    $  ANS000.BYTE004  $  if((x&0xC0)==0x00)y=@023f;else if((x&0xC0)==0x40)y=@0b86;else if((x&0xC0)==0x80)y=@0b87;else y=@0004;
  $  001.AEB(自动紧急刹车)水准               $    $            $    $  ANS000.BYTE004  $  if((x&0x30)==0x00)y=@0b74;else if((x&0x30)==0x10)y=@0b75;else if((x&0x30)==0x20)y=@0b76;else y=@0004;
  $  002.FCW(正面碰撞警告)驾驶员敏感度       $    $            $    $  ANS000.BYTE004  $  if((x&0x0F)==0x00)y=@0629;else if((x&0x0F)==0x01)y=@0b77;else if((x&0x0F)==0x02)y=@0b78;else if((x&0x0F)==0x03)y=@0b79;else y=@01a9;
  $  003.事件车辆速度                        $    $  kPa       $    $  ANS000.BYTE005  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))+2000;
  $  004.事件加速器实际位置                  $    $  %         $    $  ANS000.BYTE007  $  y=(x&0x7F)-(x&0x80);
  $  005.事件刹车板实际位置                  $    $  %         $    $  ANS000.BYTE008  $  y=(x&0x7F)-(x&0x80);
  $  006.事件近光灯打开                      $    $            $    $  ANS000.BYTE009  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  007.事件主光灯打开                      $    $            $    $  ANS000.BYTE009  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  008.事件经线加速性                      $    $  m/s^2     $    $  ANS000.BYTE009  $  y=(((x1*256+x2)&0x07FF)-((x1*256+x2)&0x0800))*0.027162-21.591999;
  $  009.实践偏航角速度                      $    $  rad       $    $  ANS000.BYTE012  $  y=(((x1*256+x2)&0x01FF)-((x1*256+x2)&0x0200))*0.0021333-2.094;
  $  010.事件发送年份                        $    $            $    $  ANS000.BYTE017  $  y=x+2000;
  $  011.事件发送月份                        $    $            $    $  ANS000.BYTE018  $  y=x;
  $  012.事件发送日期                        $    $            $    $  ANS000.BYTE019  $  y=x;
  $  013.事件发送时刻                        $    $            $    $  ANS000.BYTE020  $  y=x;
  $  014.事件发送分钟                        $    $            $    $  ANS000.BYTE021  $  y=x;
  $  015.事件发送秒数                        $    $            $    $  ANS000.BYTE022  $  y=x;
  $  016.事件发送年份                        $    $  km        $    $  ANS000.BYTE023  $  y=x1*256*256+x2*256+x3;

  $)  25.LDW 退出代码
  $  25.LDW 退出代码
  $  REQ000:74A 03 22 B0 93 00 00 00 00       $  ANS000:7CA 03 22 B0 93 00 00 00 00

  $  000.LDW无法进入的原因0-7        $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b71;else if(x==0x02)y=@0b72;else if(x==0x04)y=@0b4c;else if(x==0x08)y=@0b4f;else if(x==0x10)y=@0b50;else if(x==0x20)y=@0b5f;else if(x==0x40)y=@0b61;else if(x==0x80)y=@0b73;else y=@01a9;
  $  001.LDW无法进入的原因8-15       $    $       $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b47;else if(x==0x02)y=@0b21;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;

  $)  26.AEB 事件快照1
  $  26.AEB 事件快照1
  $  REQ000:74A 03 22 B0 81 00 00 00 00       $  ANS000:7CA 03 22 B0 81 00 00 00 00

  $  000.事件功能                            $    $            $    $  ANS000.BYTE004  $  if((x&0xC0)==0x00)y=@023f;else if((x&0xC0)==0x40)y=@0b86;else if((x&0xC0)==0x80)y=@0b87;else y=@0004;
  $  001.AEB(自动紧急刹车)水准               $    $            $    $  ANS000.BYTE004  $  if((x&0x30)==0x00)y=@0b74;else if((x&0x30)==0x10)y=@0b75;else if((x&0x30)==0x20)y=@0b76;else y=@0004;
  $  002.FCW(正面碰撞警告)驾驶员敏感度       $    $            $    $  ANS000.BYTE004  $  if((x&0x0F)==0x00)y=@0629;else if((x&0x0F)==0x01)y=@0b77;else if((x&0x0F)==0x02)y=@0b78;else if((x&0x0F)==0x03)y=@0b79;else y=@01a9;
  $  003.事件车辆速度                        $    $  kPa       $    $  ANS000.BYTE005  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))+2000;
  $  004.事件加速器实际位置                  $    $  %         $    $  ANS000.BYTE007  $  y=(x&0x7F)-(x&0x80);
  $  005.事件刹车板实际位置                  $    $  %         $    $  ANS000.BYTE008  $  y=(x&0x7F)-(x&0x80);
  $  006.事件近光灯打开                      $    $            $    $  ANS000.BYTE009  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  007.事件主光灯打开                      $    $            $    $  ANS000.BYTE009  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  008.事件经线加速性                      $    $  m/s^2     $    $  ANS000.BYTE009  $  y=(((x1*256+x2)&0x07FF)-((x1*256+x2)&0x0800))*0.027162-21.591999;
  $  009.实践偏航角速度                      $    $  rad       $    $  ANS000.BYTE012  $  y=(((x1*256+x2)&0x01FF)-((x1*256+x2)&0x0200))*0.0021333-2.094;
  $  010.事件发送年份                        $    $            $    $  ANS000.BYTE017  $  y=x+2000;
  $  011.事件发送月份                        $    $            $    $  ANS000.BYTE018  $  y=x;
  $  012.事件发送日期                        $    $            $    $  ANS000.BYTE019  $  y=x;
  $  013.事件发送时刻                        $    $            $    $  ANS000.BYTE020  $  y=x;
  $  014.事件发送分钟                        $    $            $    $  ANS000.BYTE021  $  y=x;
  $  015.事件发送秒数                        $    $            $    $  ANS000.BYTE022  $  y=x;
  $  016.事件发送年份                        $    $  km        $    $  ANS000.BYTE023  $  y=x1*256*256+x2*256+x3;

  $)  27.LDW NRTA原因事件0
  $  27.LDW NRTA原因事件0
  $  REQ000:74A 03 22 B0 71 00 00 00 00       $  ANS000:7CA 03 22 B0 71 00 00 00 00

  $  000.LDW从激活状态异常退出原因0-7        $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b71;else if(x==0x02)y=@0b72;else if(x==0x04)y=@0b4c;else if(x==0x08)y=@0b4f;else if(x==0x10)y=@0b50;else if(x==0x20)y=@0b5f;else if(x==0x40)y=@0b61;else if(x==0x80)y=@0b73;else y=@01a9;
  $  001.LDW从激活状态异常退出原因8-15       $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b47;else if(x==0x02)y=@0b21;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  002.LDW异常退出时的年份                 $    $         $    $  ANS000.BYTE006  $  y=x+2000;
  $  003.LDW异常退出时的月份                 $    $         $    $  ANS000.BYTE007  $  y=x;
  $  004.LDW异常退出时的日期                 $    $         $    $  ANS000.BYTE008  $  y=x;
  $  005.LDW异常退出时的时刻                 $    $         $    $  ANS000.BYTE009  $  y=x;
  $  006.LDW异常退出时的分钟                 $    $         $    $  ANS000.BYTE010  $  y=x;
  $  007.LDW异常退出时的秒数                 $    $         $    $  ANS000.BYTE011  $  y=x;
  $  008.LDW异常退出时的年份                 $    $  km     $    $  ANS000.BYTE012  $  y=x1*256*256+x2*256+x3;

  $)  28.AEB 事件快照0
  $  28.AEB 事件快照0
  $  REQ000:74A 03 22 B0 80 00 00 00 00       $  ANS000:7CA 03 22 B0 80 00 00 00 00

  $  000.事件功能                            $    $            $    $  ANS000.BYTE004  $  if((x&0xC0)==0x00)y=@023f;else if((x&0xC0)==0x40)y=@0b86;else if((x&0xC0)==0x80)y=@0b87;else y=@0004;
  $  001.AEB(自动紧急刹车)水准               $    $            $    $  ANS000.BYTE004  $  if((x&0x30)==0x00)y=@0b74;else if((x&0x30)==0x10)y=@0b75;else if((x&0x30)==0x20)y=@0b76;else y=@0004;
  $  002.FCW(正面碰撞警告)驾驶员敏感度       $    $            $    $  ANS000.BYTE004  $  if((x&0x0F)==0x00)y=@0629;else if((x&0x0F)==0x01)y=@0b77;else if((x&0x0F)==0x02)y=@0b78;else if((x&0x0F)==0x03)y=@0b79;else y=@01a9;
  $  003.事件车辆速度                        $    $  kPa       $    $  ANS000.BYTE005  $  y=(((x1*256+x2)&0x7FFF)-((x1*256+x2)&0x8000))+2000;
  $  004.事件加速器实际位置                  $    $  %         $    $  ANS000.BYTE007  $  y=(x&0x7F)-(x&0x80);
  $  005.事件刹车板实际位置                  $    $  %         $    $  ANS000.BYTE008  $  y=(x&0x7F)-(x&0x80);
  $  006.事件近光灯打开                      $    $            $    $  ANS000.BYTE009  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  007.事件主光灯打开                      $    $            $    $  ANS000.BYTE009  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  008.事件经线加速性                      $    $  m/s^2     $    $  ANS000.BYTE009  $  y=(((x1*256+x2)&0x07FF)-((x1*256+x2)&0x0800))*0.027162-21.591999;
  $  009.实践偏航角速度                      $    $  rad       $    $  ANS000.BYTE012  $  y=(((x1*256+x2)&0x01FF)-((x1*256+x2)&0x0200))*0.0021333-2.094;
  $  010.事件发送年份                        $    $            $    $  ANS000.BYTE017  $  y=x+2000;
  $  011.事件发送月份                        $    $            $    $  ANS000.BYTE018  $  y=x;
  $  012.事件发送日期                        $    $            $    $  ANS000.BYTE019  $  y=x;
  $  013.事件发送时刻                        $    $            $    $  ANS000.BYTE020  $  y=x;
  $  014.事件发送分钟                        $    $            $    $  ANS000.BYTE021  $  y=x;
  $  015.事件发送秒数                        $    $            $    $  ANS000.BYTE022  $  y=x;
  $  016.事件发送年份                        $    $  km        $    $  ANS000.BYTE023  $  y=x1*256*256+x2*256+x3;

  $)  29.LDW NRTA原因状态0
  $  29.LDW NRTA原因状态0
  $  REQ000:74A 03 22 B0 73 00 00 00 00       $  ANS000:7CA 03 22 B0 73 00 00 00 00

  $  000.LDW无法进入的原因0-7        $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b71;else if(x==0x02)y=@0b72;else if(x==0x04)y=@0b4c;else if(x==0x08)y=@0b4f;else if(x==0x10)y=@0b50;else if(x==0x20)y=@0b5f;else if(x==0x40)y=@0b61;else if(x==0x80)y=@0b73;else y=@01a9;
  $  001.LDW无法进入的原因8-15       $    $       $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b47;else if(x==0x02)y=@0b21;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;

  $)  30.ACC退出原因状态
  $  30.ACC退出原因状态
  $  REQ000:74A 03 22 B0 5A 00 00 00 00       $  ANS000:7CA 03 22 B0 5A 00 00 00 00

  $  000.ACC从激活状态异常退出原因0-7         $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4b;else if(x==0x02)y=@0b4c;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b4d;else if(x==0x40)y=@0b4e;else if(x==0x80)y=@0b4f;else y=@01a9;
  $  001.ACC从激活状态异常退出原因8-15        $    $       $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b50;else if(x==0x02)y=@0b51;else if(x==0x04)y=@0b52;else if(x==0x08)y=@0b53;else if(x==0x10)y=@0b54;else if(x==0x20)y=@0b55;else if(x==0x40)y=@0b56;else if(x==0x80)y=@0b57;else y=@01a9;
  $  002.ACC从激活状态异常退出原因16-23       $    $       $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b58;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b5b;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b5d;else if(x==0x40)y=@0018;else if(x==0x80)y=@0b5e;else y=@01a9;
  $  003.ACC从激活状态异常退出原因24-31       $    $       $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b5f;else if(x==0x02)y=@0b60;else if(x==0x04)y=@0b61;else if(x==0x08)y=@0b62;else if(x==0x10)y=@0b63;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0b64;else y=@01a9;
  $  004.ACC从激活状态异常退出原因32-39       $    $       $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b65;else if(x==0x02)y=@0b66;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b67;else if(x==0x10)y=@0b68;else if(x==0x20)y=@0b69;else if(x==0x40)y=@0b6a;else if(x==0x80)y=@0b6b;else y=@01a9;
  $  005.ACC从激活状态异常退出原因40-47       $    $       $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b21;else if(x==0x02)y=@0b48;else if(x==0x04)y=@0b49;else if(x==0x08)y=@0b4a;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;

  $)  31.图像处理单元
  $  31.图像处理单元
  $  REQ000:74A 03 22 B0 31 00 00 00 00       $  ANS000:7CA 03 22 B0 31 00 00 00 00

  $  000.图像处理单元温度       $    $  degree C     $    $  ANS000.BYTE004  $  y=(x1*256+x2)-40;

  $)  32.ACC退出原因事件4
  $  32.ACC退出原因事件4
  $  REQ000:74A 03 22 B0 54 00 00 00 00       $  ANS000:7CA 03 22 B0 54 00 00 00 00

  $  000.ACC从激活状态异常退出原因0-7                $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4b;else if(x==0x02)y=@0b4c;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b4d;else if(x==0x40)y=@0b4e;else if(x==0x80)y=@0b4f;else y=@01a9;
  $  001.ACC从激活状态异常退出原因8-15               $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b50;else if(x==0x02)y=@0b51;else if(x==0x04)y=@0b52;else if(x==0x08)y=@0b53;else if(x==0x10)y=@0b54;else if(x==0x20)y=@0b55;else if(x==0x40)y=@0b56;else if(x==0x80)y=@0b57;else y=@01a9;
  $  002.ACC从激活状态异常退出原因16-23              $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b58;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b5b;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b5d;else if(x==0x40)y=@0018;else if(x==0x80)y=@0b5e;else y=@01a9;
  $  003.ACC从激活状态异常退出原因24-31              $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b5f;else if(x==0x02)y=@0b60;else if(x==0x04)y=@0b61;else if(x==0x08)y=@0b62;else if(x==0x10)y=@0b63;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0b64;else y=@01a9;
  $  004.ACC从激活状态异常退出原因32-39              $    $         $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b65;else if(x==0x02)y=@0b66;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b67;else if(x==0x10)y=@0b68;else if(x==0x20)y=@0b69;else if(x==0x40)y=@0b6a;else if(x==0x80)y=@0b6b;else y=@01a9;
  $  005.ACC从激活状态异常退出原因40-47              $    $         $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b21;else if(x==0x02)y=@0b48;else if(x==0x04)y=@0b49;else if(x==0x08)y=@0b4a;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  006.ACC从激活状态异常退出时的故障保险状态       $    $         $    $  ANS000.BYTE010  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  007.ACC异常退出时的年份                         $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.ACC异常退出时的月份                         $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.ACC异常退出时的日期                         $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.ACC异常退出时的时刻                         $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.ACC异常退出时的分钟                         $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.ACC异常退出时的秒数                         $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.ACC异常退出时的年份                         $    $  km     $    $  ANS000.BYTE018  $  y=x1*256*256+x2*256+x3;

  $)  33.点火状态
  $  33.点火状态
  $  REQ000:74A 03 22 D0 01 00 00 00 00       $  ANS000:7CA 03 22 D0 01 00 00 00 00

  $  000.全局KL.50状态            $    $       $    $  ANS000.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  001.全局发动机运行状态       $    $       $    $  ANS000.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  002.全局KL.15状态            $    $       $    $  ANS000.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  003.全局KL.R状态             $    $       $    $  ANS000.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  004.系统KL.50状态            $    $       $    $  ANS000.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  005.系统发动机运行状态       $    $       $    $  ANS000.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  006.系统KL.15状态            $    $       $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  007.系统KL.R状态             $    $       $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;

  $)  34.AEB NRTA原因事件1
  $  34.AEB NRTA原因事件1
  $  REQ000:74A 03 22 B0 66 00 00 00 00       $  ANS000:7CA 03 22 B0 66 00 00 00 00

  $  000.AEB(自动紧急刹车)无法进入原因0-7                 $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4c;else if(x==0x02)y=@0103;else if(x==0x04)y=@0b50;else if(x==0x08)y=@0b54;else if(x==0x10)y=@0b55;else if(x==0x20)y=@0b51;else if(x==0x40)y=@0b53;else if(x==0x80)y=@0b56;else y=@01a9;
  $  001.AEB(自动紧急刹车)无法进入原因8-15                $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b5b;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b7c;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b73;else if(x==0x40)y=@0b5f;else if(x==0x80)y=@0b61;else y=@01a9;
  $  002.AEB(自动紧急刹车)无法进入原因16-23               $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b63;else if(x==0x02)y=@0b64;else if(x==0x04)y=@0b65;else if(x==0x08)y=@0b7d;else if(x==0x10)y=@0b67;else if(x==0x20)y=@0b6a;else if(x==0x40)y=@0b21;else if(x==0x80)y=@0b48;else y=@01a9;
  $  003.AEB(自动紧急刹车)无法进入原因24-31               $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b49;else if(x==0x02)y=@0b4a;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  004.AEB(自动紧急刹车)无法进入时的故障保障状态1       $    $         $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b7e;else if(x==0x02)y=@0b7f;else if(x==0x04)y=@0b80;else if(x==0x08)y=@0b81;else if(x==0x10)y=@0b82;else if(x==0x20)y=@0b83;else if(x==0x40)y=@0b84;else if(x==0x80)y=@0b85;else y=@01a9;
  $  005.AEB(自动紧急刹车)无法进入时的故障保障状态2       $    $         $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else y=@01a9;
  $  006.AEB(自动紧急刹车)无法进入时的年份                $    $         $    $  ANS000.BYTE010  $  y=x+2000;
  $  007.AEB(自动紧急刹车)无法进入时的月份                $    $         $    $  ANS000.BYTE011  $  y=x;
  $  008.AEB(自动紧急刹车)无法进入时的日期                $    $         $    $  ANS000.BYTE012  $  y=x;
  $  009.AEB(自动紧急刹车)无法进入时的时刻                $    $         $    $  ANS000.BYTE013  $  y=x;
  $  010.AEB(自动紧急刹车)无法进入时的分钟                $    $         $    $  ANS000.BYTE014  $  y=x;
  $  011.AEB(自动紧急刹车)无法进入时的秒数                $    $         $    $  ANS000.BYTE015  $  y=x;
  $  012.AEB(自动紧急刹车)无法进入时的年份                $    $  km     $    $  ANS000.BYTE016  $  y=x1*256+x2;

  $)  35.阅读ACC NRTA原因事件3
  $  35.阅读ACC NRTA原因事件3
  $  REQ000:74A 03 22 B0 58 00 00 00 00       $  ANS000:7CA 03 22 B0 58 00 00 00 00

  $  000.ACC无法进入原因0-7                $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4b;else if(x==0x02)y=@0b4c;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b4d;else if(x==0x40)y=@0b4e;else if(x==0x80)y=@0b4f;else y=@01a9;
  $  001.ACC无法进入原因8-15               $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b50;else if(x==0x02)y=@0b51;else if(x==0x04)y=@0b52;else if(x==0x08)y=@0b53;else if(x==0x10)y=@0b54;else if(x==0x20)y=@0b55;else if(x==0x40)y=@0b56;else if(x==0x80)y=@0b57;else y=@01a9;
  $  002.ACC无法进入原因16-23              $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b58;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b5b;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b5d;else if(x==0x40)y=@0018;else if(x==0x80)y=@0b5e;else y=@01a9;
  $  003.ACC无法进入原因24-31              $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b5f;else if(x==0x02)y=@0b60;else if(x==0x04)y=@0b61;else if(x==0x08)y=@0b62;else if(x==0x10)y=@0b63;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0b64;else y=@01a9;
  $  004.ACC无法进入原因32-39              $    $         $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b65;else if(x==0x02)y=@0b66;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b67;else if(x==0x10)y=@0b68;else if(x==0x20)y=@0b69;else if(x==0x40)y=@0b6a;else if(x==0x80)y=@0b6b;else y=@01a9;
  $  005.ACC无法进入原因40-47              $    $         $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b21;else if(x==0x02)y=@0b48;else if(x==0x04)y=@0b49;else if(x==0x08)y=@0b4a;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  006.ACC无法进入时的故障保障状态       $    $         $    $  ANS000.BYTE010  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  007.ACC无法进入时的年份               $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.ACC无法进入时的月份               $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.ACC无法进入时的日期               $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.ACC无法进入时的时刻               $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.ACC无法进入时的分钟               $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.ACC无法进入时的秒数               $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.ACC无法进入时的年份               $    $  km     $    $  ANS000.BYTE018  $  y=x1*256*256+x2*256+x3;

  $)  36.AEB NRTA原因事件3
  $  36.AEB NRTA原因事件3
  $  REQ000:74A 03 22 B0 68 00 00 00 00       $  ANS000:7CA 03 22 B0 68 00 00 00 00

  $  000.AEB(自动紧急刹车)无法进入原因0-7                 $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4c;else if(x==0x02)y=@0103;else if(x==0x04)y=@0b50;else if(x==0x08)y=@0b54;else if(x==0x10)y=@0b55;else if(x==0x20)y=@0b51;else if(x==0x40)y=@0b53;else if(x==0x80)y=@0b56;else y=@01a9;
  $  001.AEB(自动紧急刹车)无法进入原因8-15                $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b5b;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b7c;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b73;else if(x==0x40)y=@0b5f;else if(x==0x80)y=@0b61;else y=@01a9;
  $  002.AEB(自动紧急刹车)无法进入原因16-23               $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b63;else if(x==0x02)y=@0b64;else if(x==0x04)y=@0b65;else if(x==0x08)y=@0b7d;else if(x==0x10)y=@0b67;else if(x==0x20)y=@0b6a;else if(x==0x40)y=@0b21;else if(x==0x80)y=@0b48;else y=@01a9;
  $  003.AEB(自动紧急刹车)无法进入原因24-31               $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b49;else if(x==0x02)y=@0b4a;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  004.AEB(自动紧急刹车)无法进入时的故障保障状态1       $    $         $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b7e;else if(x==0x02)y=@0b7f;else if(x==0x04)y=@0b80;else if(x==0x08)y=@0b81;else if(x==0x10)y=@0b82;else if(x==0x20)y=@0b83;else if(x==0x40)y=@0b84;else if(x==0x80)y=@0b85;else y=@01a9;
  $  005.AEB(自动紧急刹车)无法进入时的故障保障状态2       $    $         $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else y=@01a9;
  $  006.AEB(自动紧急刹车)无法进入时的年份                $    $         $    $  ANS000.BYTE010  $  y=x+2000;
  $  007.AEB(自动紧急刹车)无法进入时的月份                $    $         $    $  ANS000.BYTE011  $  y=x;
  $  008.AEB(自动紧急刹车)无法进入时的日期                $    $         $    $  ANS000.BYTE012  $  y=x;
  $  009.AEB(自动紧急刹车)无法进入时的时刻                $    $         $    $  ANS000.BYTE013  $  y=x;
  $  010.AEB(自动紧急刹车)无法进入时的分钟                $    $         $    $  ANS000.BYTE014  $  y=x;
  $  011.AEB(自动紧急刹车)无法进入时的秒数                $    $         $    $  ANS000.BYTE015  $  y=x;
  $  012.AEB(自动紧急刹车)无法进入时的年份                $    $  km     $    $  ANS000.BYTE016  $  y=x1*256+x2;

  $)  37.LKA NRTA原因事件3
  $  37.LKA NRTA原因事件3
  $  REQ000:74A 03 22 B0 A8 00 00 00 00       $  ANS000:7CA 03 22 B0 A8 00 00 00 00

  $  000.LKA(车道保持辅助系统)未准备好激活原因0-7         $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b2d;else if(x==0x02)y=@0b2e;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b2f;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b30;else if(x==0x40)y=@0b19;else if(x==0x80)y=@0b31;else y=@01a9;
  $  001.LKA(车道保持辅助系统)未准备好激活原因8-15        $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b1b;else if(x==0x02)y=@0b1c;else if(x==0x04)y=@0b1d;else if(x==0x08)y=@0b1e;else if(x==0x10)y=@0b32;else if(x==0x20)y=@0b33;else if(x==0x40)y=@0b1f;else if(x==0x80)y=@0b21;else y=@01a9;
  $  002.LKA(车道保持辅助系统)未准备好激活原因16-23       $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b34;else if(x==0x02)y=@0b35;else if(x==0x04)y=@0b36;else if(x==0x08)y=@0b37;else if(x==0x10)y=@0b38;else if(x==0x20)y=@0b39;else if(x==0x40)y=@0b3a;else if(x==0x80)y=@0b3b;else y=@01a9;
  $  003.LKA(车道保持辅助系统)未准备好激活原因24-31       $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b3c;else if(x==0x02)y=@0b3d;else if(x==0x04)y=@0b3e;else if(x==0x08)y=@0b3f;else if(x==0x10)y=@0b40;else if(x==0x20)y=@0b41;else if(x==0x40)y=@0004;else if(x==0x80)y=@0004;else y=@01a9;
  $  004.LKA(车道保持辅助系统)未准备好激活原因32-39       $    $         $    $  ANS000.BYTE008  $  y=@0b42;
  $  005.LKA(车道保持辅助系统)未准备好激活原因40-47       $    $         $    $  ANS000.BYTE009  $  y=@0b42;
  $  006.LKA(车道保持辅助系统)失控状态未准备好激活        $    $         $    $  ANS000.BYTE010  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  007.LKA(车道保持辅助系统)异常退出时的年份            $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.LKA(车道保持辅助系统)异常退出时的月份            $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.LKA(车道保持辅助系统)异常退出时的日期            $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.LKA(车道保持辅助系统)异常退出时的时刻            $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.LKA(车道保持辅助系统)异常退出时的分钟            $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.LKA(车道保持辅助系统)异常退出时的秒数            $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.LKA(车道保持辅助系统)异常退出时的年份            $    $  km     $    $  ANS000.BYTE018  $  y=x1*256*256+x2*256+x3;

  $)  38.阅读ACC NRTA原因事件2
  $  38.阅读ACC NRTA原因事件2
  $  REQ000:74A 03 22 B0 57 00 00 00 00       $  ANS000:7CA 03 22 B0 57 00 00 00 00

  $  000.ACC无法进入原因0-7                $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4b;else if(x==0x02)y=@0b4c;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b4d;else if(x==0x40)y=@0b4e;else if(x==0x80)y=@0b4f;else y=@01a9;
  $  001.ACC无法进入原因8-15               $    $       $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b50;else if(x==0x02)y=@0b51;else if(x==0x04)y=@0b52;else if(x==0x08)y=@0b53;else if(x==0x10)y=@0b54;else if(x==0x20)y=@0b55;else if(x==0x40)y=@0b56;else if(x==0x80)y=@0b57;else y=@01a9;
  $  002.ACC无法进入原因16-23              $    $       $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b58;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b5b;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b5d;else if(x==0x40)y=@0018;else if(x==0x80)y=@0b5e;else y=@01a9;
  $  003.ACC无法进入原因24-31              $    $       $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b5f;else if(x==0x02)y=@0b60;else if(x==0x04)y=@0b61;else if(x==0x08)y=@0b62;else if(x==0x10)y=@0b63;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0b64;else y=@01a9;
  $  004.ACC无法进入原因32-39              $    $       $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b65;else if(x==0x02)y=@0b66;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b67;else if(x==0x10)y=@0b68;else if(x==0x20)y=@0b69;else if(x==0x40)y=@0b6a;else if(x==0x80)y=@0b6b;else y=@01a9;
  $  005.ACC无法进入原因40-47              $    $       $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b21;else if(x==0x02)y=@0b48;else if(x==0x04)y=@0b49;else if(x==0x08)y=@0b4a;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  006.ACC无法进入时的故障保障状态       $    $       $    $  ANS000.BYTE010  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  007.ACC无法进入时的年份               $    $       $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.ACC无法进入时的月份               $    $       $    $  ANS000.BYTE013  $  y=x;
  $  009.ACC无法进入时的日期               $    $       $    $  ANS000.BYTE014  $  y=x;
  $  010.ACC无法进入时的时刻               $    $       $    $  ANS000.BYTE015  $  y=x;
  $  011.ACC无法进入时的分钟               $    $       $    $  ANS000.BYTE016  $  y=x;
  $  012.ACC无法进入时的秒数               $    $       $    $  ANS000.BYTE017  $  y=x;
  $  013.ACC无法进入时的年份               $    $       $    $  ANS000.BYTE018  $  y=x1*256*256+x2*256+x3;

  $)  39.AEB NRTA原因事件2
  $  39.AEB NRTA原因事件2
  $  REQ000:74A 03 22 B0 67 00 00 00 00       $  ANS000:7CA 03 22 B0 67 00 00 00 00

  $  000.AEB(自动紧急刹车)无法进入原因0-7                 $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4c;else if(x==0x02)y=@0103;else if(x==0x04)y=@0b50;else if(x==0x08)y=@0b54;else if(x==0x10)y=@0b55;else if(x==0x20)y=@0b51;else if(x==0x40)y=@0b53;else if(x==0x80)y=@0b56;else y=@01a9;
  $  001.AEB(自动紧急刹车)无法进入原因8-15                $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b5b;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b7c;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b73;else if(x==0x40)y=@0b5f;else if(x==0x80)y=@0b61;else y=@01a9;
  $  002.AEB(自动紧急刹车)无法进入原因16-23               $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b63;else if(x==0x02)y=@0b64;else if(x==0x04)y=@0b65;else if(x==0x08)y=@0b7d;else if(x==0x10)y=@0b67;else if(x==0x20)y=@0b6a;else if(x==0x40)y=@0b21;else if(x==0x80)y=@0b48;else y=@01a9;
  $  003.AEB(自动紧急刹车)无法进入原因24-31               $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b49;else if(x==0x02)y=@0b4a;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  004.AEB(自动紧急刹车)无法进入时的故障保障状态1       $    $         $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b7e;else if(x==0x02)y=@0b7f;else if(x==0x04)y=@0b80;else if(x==0x08)y=@0b81;else if(x==0x10)y=@0b82;else if(x==0x20)y=@0b83;else if(x==0x40)y=@0b84;else if(x==0x80)y=@0b85;else y=@01a9;
  $  005.AEB(自动紧急刹车)无法进入时的故障保障状态2       $    $         $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else y=@01a9;
  $  006.AEB(自动紧急刹车)无法进入时的年份                $    $         $    $  ANS000.BYTE010  $  y=x+2000;
  $  007.AEB(自动紧急刹车)无法进入时的月份                $    $         $    $  ANS000.BYTE011  $  y=x;
  $  008.AEB(自动紧急刹车)无法进入时的日期                $    $         $    $  ANS000.BYTE012  $  y=x;
  $  009.AEB(自动紧急刹车)无法进入时的时刻                $    $         $    $  ANS000.BYTE013  $  y=x;
  $  010.AEB(自动紧急刹车)无法进入时的分钟                $    $         $    $  ANS000.BYTE014  $  y=x;
  $  011.AEB(自动紧急刹车)无法进入时的秒数                $    $         $    $  ANS000.BYTE015  $  y=x;
  $  012.AEB(自动紧急刹车)无法进入时的年份                $    $  km     $    $  ANS000.BYTE016  $  y=x1*256+x2;

  $)  40.LKA NRTA原因事件2
  $  40.LKA NRTA原因事件2
  $  REQ000:74A 03 22 B0 A7 00 00 00 00       $  ANS000:7CA 03 22 B0 A7 00 00 00 00

  $  000.LKA(车道保持辅助系统)未准备好激活原因0-7         $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b2d;else if(x==0x02)y=@0b2e;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b2f;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b30;else if(x==0x40)y=@0b19;else if(x==0x80)y=@0b31;else y=@01a9;
  $  001.LKA(车道保持辅助系统)未准备好激活原因8-15        $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b1b;else if(x==0x02)y=@0b1c;else if(x==0x04)y=@0b1d;else if(x==0x08)y=@0b1e;else if(x==0x10)y=@0b32;else if(x==0x20)y=@0b33;else if(x==0x40)y=@0b1f;else if(x==0x80)y=@0b21;else y=@01a9;
  $  002.LKA(车道保持辅助系统)未准备好激活原因16-23       $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b34;else if(x==0x02)y=@0b35;else if(x==0x04)y=@0b36;else if(x==0x08)y=@0b37;else if(x==0x10)y=@0b38;else if(x==0x20)y=@0b39;else if(x==0x40)y=@0b3a;else if(x==0x80)y=@0b3b;else y=@01a9;
  $  003.LKA(车道保持辅助系统)未准备好激活原因24-31       $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b3c;else if(x==0x02)y=@0b3d;else if(x==0x04)y=@0b3e;else if(x==0x08)y=@0b3f;else if(x==0x10)y=@0b40;else if(x==0x20)y=@0b41;else if(x==0x40)y=@0004;else if(x==0x80)y=@0004;else y=@01a9;
  $  004.LKA(车道保持辅助系统)未准备好激活原因32-39       $    $         $    $  ANS000.BYTE008  $  y=@0b42;
  $  005.LKA(车道保持辅助系统)未准备好激活原因40-47       $    $         $    $  ANS000.BYTE009  $  y=@0b42;
  $  006.LKA(车道保持辅助系统)失控状态未准备好激活        $    $         $    $  ANS000.BYTE010  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  007.LKA(车道保持辅助系统)异常退出时的年份            $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.LKA(车道保持辅助系统)异常退出时的月份            $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.LKA(车道保持辅助系统)异常退出时的日期            $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.LKA(车道保持辅助系统)异常退出时的时刻            $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.LKA(车道保持辅助系统)异常退出时的分钟            $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.LKA(车道保持辅助系统)异常退出时的秒数            $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.LKA(车道保持辅助系统)异常退出时的年份            $    $  km     $    $  ANS000.BYTE018  $  y=x1*256*256+x2*256+x3;

  $)  41.阅读ACC NRTA原因事件1
  $  41.阅读ACC NRTA原因事件1
  $  REQ000:74A 03 22 B0 56 00 00 00 00       $  ANS000:7CA 03 22 B0 56 00 00 00 00

  $  000.ACC无法进入原因0-7                $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4b;else if(x==0x02)y=@0b4c;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b4d;else if(x==0x40)y=@0b4e;else if(x==0x80)y=@0b4f;else y=@01a9;
  $  001.ACC无法进入原因8-15               $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b50;else if(x==0x02)y=@0b51;else if(x==0x04)y=@0b52;else if(x==0x08)y=@0b53;else if(x==0x10)y=@0b54;else if(x==0x20)y=@0b55;else if(x==0x40)y=@0b56;else if(x==0x80)y=@0b57;else y=@01a9;
  $  002.ACC无法进入原因16-23              $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b58;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b5b;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b5d;else if(x==0x40)y=@0018;else if(x==0x80)y=@0b5e;else y=@01a9;
  $  003.ACC无法进入原因24-31              $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b5f;else if(x==0x02)y=@0b60;else if(x==0x04)y=@0b61;else if(x==0x08)y=@0b62;else if(x==0x10)y=@0b63;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0b64;else y=@01a9;
  $  004.ACC无法进入原因32-39              $    $         $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b65;else if(x==0x02)y=@0b66;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b67;else if(x==0x10)y=@0b68;else if(x==0x20)y=@0b69;else if(x==0x40)y=@0b6a;else if(x==0x80)y=@0b6b;else y=@01a9;
  $  005.ACC无法进入原因40-47              $    $         $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b21;else if(x==0x02)y=@0b48;else if(x==0x04)y=@0b49;else if(x==0x08)y=@0b4a;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  006.ACC无法进入时的故障保障状态       $    $         $    $  ANS000.BYTE010  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  007.ACC无法进入时的年份               $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.ACC无法进入时的月份               $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.ACC无法进入时的日期               $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.ACC无法进入时的时刻               $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.ACC无法进入时的分钟               $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.ACC无法进入时的秒数               $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.ACC无法进入时的年份               $    $  km     $    $  ANS000.BYTE018  $  y=x1*256*256+x2*256+x3;

  $)  42.LKA NRTA原因事件1
  $  42.LKA NRTA原因事件1
  $  REQ000:74A 03 22 B0 A6 00 00 00 00       $  ANS000:7CA 03 22 B0 A6 00 00 00 00

  $  000.LKA(车道保持辅助系统)未准备好激活原因0-7         $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b2d;else if(x==0x02)y=@0b2e;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b2f;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b30;else if(x==0x40)y=@0b19;else if(x==0x80)y=@0b31;else y=@01a9;
  $  001.LKA(车道保持辅助系统)未准备好激活原因8-15        $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b1b;else if(x==0x02)y=@0b1c;else if(x==0x04)y=@0b1d;else if(x==0x08)y=@0b1e;else if(x==0x10)y=@0b32;else if(x==0x20)y=@0b33;else if(x==0x40)y=@0b1f;else if(x==0x80)y=@0b21;else y=@01a9;
  $  002.LKA(车道保持辅助系统)未准备好激活原因16-23       $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b34;else if(x==0x02)y=@0b35;else if(x==0x04)y=@0b36;else if(x==0x08)y=@0b37;else if(x==0x10)y=@0b38;else if(x==0x20)y=@0b39;else if(x==0x40)y=@0b3a;else if(x==0x80)y=@0b3b;else y=@01a9;
  $  003.LKA(车道保持辅助系统)未准备好激活原因24-31       $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b3c;else if(x==0x02)y=@0b3d;else if(x==0x04)y=@0b3e;else if(x==0x08)y=@0b3f;else if(x==0x10)y=@0b40;else if(x==0x20)y=@0b41;else if(x==0x40)y=@0004;else if(x==0x80)y=@0004;else y=@01a9;
  $  004.LKA(车道保持辅助系统)未准备好激活原因32-39       $    $         $    $  ANS000.BYTE008  $  y=@0b42;
  $  005.LKA(车道保持辅助系统)未准备好激活原因40-47       $    $         $    $  ANS000.BYTE009  $  y=@0b42;
  $  006.LKA(车道保持辅助系统)失控状态未准备好激活        $    $         $    $  ANS000.BYTE010  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  007.LKA(车道保持辅助系统)异常退出时的年份            $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.LKA(车道保持辅助系统)异常退出时的月份            $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.LKA(车道保持辅助系统)异常退出时的日期            $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.LKA(车道保持辅助系统)异常退出时的时刻            $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.LKA(车道保持辅助系统)异常退出时的分钟            $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.LKA(车道保持辅助系统)异常退出时的秒数            $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.LKA(车道保持辅助系统)异常退出时的年份            $    $  km     $    $  ANS000.BYTE018  $  y=x1*256*256+x2*256+x3;

  $)  43.阅读ACC NRTA原因事件0
  $  43.阅读ACC NRTA原因事件0
  $  REQ000:74A 03 22 B0 55 00 00 00 00       $  ANS000:7CA 03 22 B0 55 00 00 00 00

  $  000.ACC无法进入原因0-7                $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4b;else if(x==0x02)y=@0b4c;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b4d;else if(x==0x40)y=@0b4e;else if(x==0x80)y=@0b4f;else y=@01a9;
  $  001.ACC无法进入原因8-15               $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b50;else if(x==0x02)y=@0b51;else if(x==0x04)y=@0b52;else if(x==0x08)y=@0b53;else if(x==0x10)y=@0b54;else if(x==0x20)y=@0b55;else if(x==0x40)y=@0b56;else if(x==0x80)y=@0b57;else y=@01a9;
  $  002.ACC无法进入原因16-23              $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b58;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b5b;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b5d;else if(x==0x40)y=@0018;else if(x==0x80)y=@0b5e;else y=@01a9;
  $  003.ACC无法进入原因24-31              $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b5f;else if(x==0x02)y=@0b60;else if(x==0x04)y=@0b61;else if(x==0x08)y=@0b62;else if(x==0x10)y=@0b63;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0b64;else y=@01a9;
  $  004.ACC无法进入原因32-39              $    $         $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b65;else if(x==0x02)y=@0b66;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b67;else if(x==0x10)y=@0b68;else if(x==0x20)y=@0b69;else if(x==0x40)y=@0b6a;else if(x==0x80)y=@0b6b;else y=@01a9;
  $  005.ACC无法进入原因40-47              $    $         $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b21;else if(x==0x02)y=@0b48;else if(x==0x04)y=@0b49;else if(x==0x08)y=@0b4a;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  006.ACC无法进入时的故障保障状态       $    $         $    $  ANS000.BYTE010  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  007.ACC无法进入时的年份               $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.ACC无法进入时的月份               $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.ACC无法进入时的日期               $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.ACC无法进入时的时刻               $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.ACC无法进入时的分钟               $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.ACC无法进入时的秒数               $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.ACC无法进入时的年份               $    $  km     $    $  ANS000.BYTE018  $  y=x1*256*256+x2*256+x3;

  $)  44.LDW开关
  $  44.LDW开关
  $  REQ000:74A 03 22 D0 03 00 00 00 00       $  ANS000:7CA 03 22 D0 03 00 00 00 00
  $  REQ001:74A 03 22 D0 02 00 00 00 00       $  ANS001:7CA 03 22 D0 02 00 00 00 00

  $  000.LDW开关             $    $       $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  001.LDW开关指示灯       $    $       $    $  ANS001.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;

  $)  45.ACC退出原因事件0
  $  45.ACC退出原因事件0
  $  REQ000:74A 03 22 B0 50 00 00 00 00       $  ANS000:7CA 03 22 B0 50 00 00 00 00

  $  000.ACC从激活状态异常退出原因0-7                $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4b;else if(x==0x02)y=@0b4c;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b4d;else if(x==0x40)y=@0b4e;else if(x==0x80)y=@0b4f;else y=@01a9;
  $  001.ACC从激活状态异常退出原因8-15               $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b50;else if(x==0x02)y=@0b51;else if(x==0x04)y=@0b52;else if(x==0x08)y=@0b53;else if(x==0x10)y=@0b54;else if(x==0x20)y=@0b55;else if(x==0x40)y=@0b56;else if(x==0x80)y=@0b57;else y=@01a9;
  $  002.ACC从激活状态异常退出原因16-23              $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b58;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b5b;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b5d;else if(x==0x40)y=@0018;else if(x==0x80)y=@0b5e;else y=@01a9;
  $  003.ACC从激活状态异常退出原因24-31              $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b5f;else if(x==0x02)y=@0b60;else if(x==0x04)y=@0b61;else if(x==0x08)y=@0b62;else if(x==0x10)y=@0b63;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0b64;else y=@01a9;
  $  004.ACC从激活状态异常退出原因32-39              $    $         $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b65;else if(x==0x02)y=@0b66;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b67;else if(x==0x10)y=@0b68;else if(x==0x20)y=@0b69;else if(x==0x40)y=@0b6a;else if(x==0x80)y=@0b6b;else y=@01a9;
  $  005.ACC从激活状态异常退出原因40-47              $    $         $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b21;else if(x==0x02)y=@0b48;else if(x==0x04)y=@0b49;else if(x==0x08)y=@0b4a;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  006.ACC从激活状态异常退出时的故障保险状态       $    $         $    $  ANS000.BYTE010  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  007.ACC异常退出时的年份                         $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.ACC异常退出时的月份                         $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.ACC异常退出时的日期                         $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.ACC异常退出时的时刻                         $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.ACC异常退出时的分钟                         $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.ACC异常退出时的秒数                         $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.ACC异常退出时的年份                         $    $  km     $    $  ANS000.BYTE018  $  y=x1*256*256+x2*256+x3;

  $)  46.LDW退出原因状态0
  $  46.LDW退出原因状态0
  $  REQ000:74A 03 22 B0 72 00 00 00 00       $  ANS000:7CA 03 22 B0 72 00 00 00 00

  $  000.LDW从激活状态异常退出原因0-7        $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b71;else if(x==0x02)y=@0b72;else if(x==0x04)y=@0b4c;else if(x==0x08)y=@0b4f;else if(x==0x10)y=@0b50;else if(x==0x20)y=@0b5f;else if(x==0x40)y=@0b61;else if(x==0x80)y=@0b73;else y=@01a9;
  $  001.LDW从激活状态异常退出原因8-15       $    $       $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b47;else if(x==0x02)y=@0b21;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;

  $)  47.ACC退出代码
  $  47.ACC退出代码
  $  REQ000:74A 03 22 B0 91 00 00 00 00       $  ANS000:7CA 03 22 B0 91 00 00 00 00

  $  000.ACC从激活状态异常退出原因0-7         $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4b;else if(x==0x02)y=@0b4c;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b4d;else if(x==0x40)y=@0b4e;else if(x==0x80)y=@0b4f;else y=@01a9;
  $  001.ACC从激活状态异常退出原因8-15        $    $       $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b50;else if(x==0x02)y=@0b51;else if(x==0x04)y=@0b52;else if(x==0x08)y=@0b53;else if(x==0x10)y=@0b54;else if(x==0x20)y=@0b55;else if(x==0x40)y=@0b56;else if(x==0x80)y=@0b57;else y=@01a9;
  $  002.ACC从激活状态异常退出原因16-23       $    $       $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b58;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b5b;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b5d;else if(x==0x40)y=@0018;else if(x==0x80)y=@0b5e;else y=@01a9;
  $  003.ACC从激活状态异常退出原因24-31       $    $       $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b5f;else if(x==0x02)y=@0b60;else if(x==0x04)y=@0b61;else if(x==0x08)y=@0b62;else if(x==0x10)y=@0b63;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0b64;else y=@01a9;
  $  004.ACC从激活状态异常退出原因32-39       $    $       $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b65;else if(x==0x02)y=@0b66;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b67;else if(x==0x10)y=@0b68;else if(x==0x20)y=@0b69;else if(x==0x40)y=@0b6a;else if(x==0x80)y=@0b6b;else y=@01a9;
  $  005.ACC从激活状态异常退出原因40-47       $    $       $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b21;else if(x==0x02)y=@0b48;else if(x==0x04)y=@0b49;else if(x==0x08)y=@0b4a;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;

  $)  48.LDW退出原因事件0
  $  48.LDW退出原因事件0
  $  REQ000:74A 03 22 B0 70 00 00 00 00       $  ANS000:7CA 03 22 B0 70 00 00 00 00

  $  000.LDW从激活状态异常退出原因0-7        $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b71;else if(x==0x02)y=@0b72;else if(x==0x04)y=@0b4c;else if(x==0x08)y=@0b4f;else if(x==0x10)y=@0b50;else if(x==0x20)y=@0b5f;else if(x==0x40)y=@0b61;else if(x==0x80)y=@0b73;else y=@01a9;
  $  001.LDW从激活状态异常退出原因8-15       $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b47;else if(x==0x02)y=@0b21;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  002.LDW异常退出时的年份                 $    $         $    $  ANS000.BYTE006  $  y=x+2000;
  $  003.LDW异常退出时的月份                 $    $         $    $  ANS000.BYTE007  $  y=x;
  $  004.LDW异常退出时的日期                 $    $         $    $  ANS000.BYTE008  $  y=x;
  $  005.LDW异常退出时的时刻                 $    $         $    $  ANS000.BYTE009  $  y=x;
  $  006.LDW异常退出时的分钟                 $    $         $    $  ANS000.BYTE010  $  y=x;
  $  007.LDW异常退出时的秒数                 $    $         $    $  ANS000.BYTE011  $  y=x;
  $  008.LDW异常退出时的年份                 $    $  km     $    $  ANS000.BYTE012  $  y=x1*256*256+x2*256+x3;

  $)  49.ACC NRTA原因状态
  $  49.ACC NRTA原因状态
  $  REQ000:74A 03 22 B0 5B 00 00 00 00       $  ANS000:7CA 03 22 B0 5B 00 00 00 00

  $  000.ACC无法进入原因0-7         $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4b;else if(x==0x02)y=@0b4c;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b4d;else if(x==0x40)y=@0b4e;else if(x==0x80)y=@0b4f;else y=@01a9;
  $  001.ACC无法进入原因8-15        $    $       $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b50;else if(x==0x02)y=@0b51;else if(x==0x04)y=@0b52;else if(x==0x08)y=@0b53;else if(x==0x10)y=@0b54;else if(x==0x20)y=@0b55;else if(x==0x40)y=@0b56;else if(x==0x80)y=@0b57;else y=@01a9;
  $  002.ACC无法进入原因16-23       $    $       $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b58;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b5b;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b5d;else if(x==0x40)y=@0018;else if(x==0x80)y=@0b5e;else y=@01a9;
  $  003.ACC无法进入原因24-31       $    $       $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b5f;else if(x==0x02)y=@0b60;else if(x==0x04)y=@0b61;else if(x==0x08)y=@0b62;else if(x==0x10)y=@0b63;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0b64;else y=@01a9;
  $  004.ACC无法进入原因32-39       $    $       $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b65;else if(x==0x02)y=@0b66;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b67;else if(x==0x10)y=@0b68;else if(x==0x20)y=@0b69;else if(x==0x40)y=@0b6a;else if(x==0x80)y=@0b6b;else y=@01a9;
  $  005.ACC无法进入原因40-47       $    $       $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b21;else if(x==0x02)y=@0b48;else if(x==0x04)y=@0b49;else if(x==0x08)y=@0b4a;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;

  $)  50.阅读ACC NRTA原因事件4
  $  50.阅读ACC NRTA原因事件4
  $  REQ000:74A 03 22 B0 59 00 00 00 00       $  ANS000:7CA 03 22 B0 59 00 00 00 00

  $  000.ACC无法进入原因0-7                $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4b;else if(x==0x02)y=@0b4c;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b4d;else if(x==0x40)y=@0b4e;else if(x==0x80)y=@0b4f;else y=@01a9;
  $  001.ACC无法进入原因8-15               $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b50;else if(x==0x02)y=@0b51;else if(x==0x04)y=@0b52;else if(x==0x08)y=@0b53;else if(x==0x10)y=@0b54;else if(x==0x20)y=@0b55;else if(x==0x40)y=@0b56;else if(x==0x80)y=@0b57;else y=@01a9;
  $  002.ACC无法进入原因16-23              $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b58;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b5b;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b5d;else if(x==0x40)y=@0018;else if(x==0x80)y=@0b5e;else y=@01a9;
  $  003.ACC无法进入原因24-31              $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b5f;else if(x==0x02)y=@0b60;else if(x==0x04)y=@0b61;else if(x==0x08)y=@0b62;else if(x==0x10)y=@0b63;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0b64;else y=@01a9;
  $  004.ACC无法进入原因32-39              $    $         $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b65;else if(x==0x02)y=@0b66;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b67;else if(x==0x10)y=@0b68;else if(x==0x20)y=@0b69;else if(x==0x40)y=@0b6a;else if(x==0x80)y=@0b6b;else y=@01a9;
  $  005.ACC无法进入原因40-47              $    $         $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b21;else if(x==0x02)y=@0b48;else if(x==0x04)y=@0b49;else if(x==0x08)y=@0b4a;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  006.ACC无法进入时的故障保障状态       $    $         $    $  ANS000.BYTE010  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  007.ACC无法进入时的年份               $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.ACC无法进入时的月份               $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.ACC无法进入时的日期               $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.ACC无法进入时的时刻               $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.ACC无法进入时的分钟               $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.ACC无法进入时的秒数               $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.ACC无法进入时的年份               $    $  km     $    $  ANS000.BYTE018  $  y=x1*256*256+x2*256+x3;

  $)  51.AEB退出代码
  $  51.AEB退出代码
  $  REQ000:74A 03 22 B0 92 00 00 00 00       $  ANS000:7CA 03 22 B0 92 00 00 00 00

  $  000.AEB(自动紧急刹车)从激活状态异常退出原因0-7         $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4c;else if(x==0x02)y=@0103;else if(x==0x04)y=@0b50;else if(x==0x08)y=@0b54;else if(x==0x10)y=@0b55;else if(x==0x20)y=@0b51;else if(x==0x40)y=@0b53;else if(x==0x80)y=@0b56;else y=@01a9;
  $  001.AEB(自动紧急刹车)从激活状态异常退出原因8-15        $    $       $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b5b;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b7c;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b73;else if(x==0x40)y=@0b5f;else if(x==0x80)y=@0b61;else y=@01a9;
  $  002.AEB(自动紧急刹车)从激活状态异常退出原因16-23       $    $       $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b63;else if(x==0x02)y=@0b64;else if(x==0x04)y=@0b65;else if(x==0x08)y=@0b7d;else if(x==0x10)y=@0b67;else if(x==0x20)y=@0b6a;else if(x==0x40)y=@0b21;else if(x==0x80)y=@0b48;else y=@01a9;
  $  003.AEB(自动紧急刹车)从激活状态异常退出原因24-31       $    $       $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b49;else if(x==0x02)y=@0b4a;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;

  $)  52.LKA退出原因事件0
  $  52.LKA退出原因事件0
  $  REQ000:74A 03 22 B0 A0 00 00 00 00       $  ANS000:7CA 03 22 B0 A0 00 00 00 00

  $  000.LKA(车道保持辅助系统)退出激活状态原因0-7         $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b2e;else if(x==0x02)y=@0b1f;else if(x==0x04)y=@0b43;else if(x==0x08)y=@0b44;else if(x==0x10)y=@0b45;else if(x==0x20)y=@091c;else if(x==0x40)y=@0b46;else if(x==0x80)y=@0abc;else y=@01a9;
  $  001.LKA(车道保持辅助系统)退出激活状态原因8-15        $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0103;else if(x==0x02)y=@0b17;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b18;else if(x==0x10)y=@0b19;else if(x==0x20)y=@0b1a;else if(x==0x40)y=@0b1b;else if(x==0x80)y=@0b1c;else y=@01a9;
  $  002.LKA(车道保持辅助系统)退出激活状态原因16-23       $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b1d;else if(x==0x02)y=@0b1e;else if(x==0x04)y=@0b1f;else if(x==0x08)y=@0b20;else if(x==0x10)y=@0b21;else if(x==0x20)y=@0b22;else if(x==0x40)y=@0b23;else if(x==0x80)y=@0b24;else y=@01a9;
  $  003.LKA(车道保持辅助系统)退出激活状态原因24-31       $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b25;else if(x==0x02)y=@0b26;else if(x==0x04)y=@0b27;else if(x==0x08)y=@0b28;else if(x==0x10)y=@0b29;else if(x==0x20)y=@0004;else if(x==0x40)y=@0004;else if(x==0x80)y=@0004;else y=@01a9;
  $  004.LKA(车道保持辅助系统)退出激活状态原因32-39       $    $         $    $  ANS000.BYTE008  $  y=@0b42;
  $  005.LKA(车道保持辅助系统)退出激活状态原因40-47       $    $         $    $  ANS000.BYTE009  $  y=@0b42;
  $  006.LKA(车道保持辅助系统)失控状态退出激活状态        $    $         $    $  ANS000.BYTE010  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  007.LKA(车道保持辅助系统)异常退出时的年份            $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.LKA(车道保持辅助系统)异常退出时的月份            $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.LKA(车道保持辅助系统)异常退出时的日期            $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.LKA(车道保持辅助系统)异常退出时的时刻            $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.LKA(车道保持辅助系统)异常退出时的分钟            $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.LKA(车道保持辅助系统)异常退出时的秒数            $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.LKA(车道保持辅助系统)异常退出时的年份            $    $  km     $    $  ANS000.BYTE018  $  y=x1*256*256+x2*256+x3;

  $)  53.LKA退出代码
  $  53.LKA退出代码
  $  REQ000:74A 03 22 B0 97 00 00 00 00       $  ANS000:7CA 03 22 B0 97 00 00 00 00

  $  000.LKA(车道保持辅助系统)退出激活状态原因0-7         $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b2e;else if(x==0x02)y=@0b1f;else if(x==0x04)y=@0b43;else if(x==0x08)y=@0b44;else if(x==0x10)y=@0b45;else if(x==0x20)y=@091c;else if(x==0x40)y=@0b46;else if(x==0x80)y=@0abc;else y=@01a9;
  $  001.LKA(车道保持辅助系统)退出激活状态原因8-15        $    $       $    $  ANS000.BYTE005  $  if(x==0x01)y=@0103;else if(x==0x02)y=@0b17;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b18;else if(x==0x10)y=@0b19;else if(x==0x20)y=@0b1a;else if(x==0x40)y=@0b1b;else if(x==0x80)y=@0b1c;else y=@01a9;
  $  002.LKA(车道保持辅助系统)退出激活状态原因16-23       $    $       $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b1d;else if(x==0x02)y=@0b1e;else if(x==0x04)y=@0b1f;else if(x==0x08)y=@0b20;else if(x==0x10)y=@0b21;else if(x==0x20)y=@0b22;else if(x==0x40)y=@0b23;else if(x==0x80)y=@0b24;else y=@01a9;
  $  003.LKA(车道保持辅助系统)退出激活状态原因24-31       $    $       $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b25;else if(x==0x02)y=@0b26;else if(x==0x04)y=@0b27;else if(x==0x08)y=@0b28;else if(x==0x10)y=@0b29;else if(x==0x20)y=@0004;else if(x==0x40)y=@0004;else if(x==0x80)y=@0004;else y=@01a9;
  $  004.LKA(车道保持辅助系统)退出激活状态原因32-39       $    $       $    $  ANS000.BYTE008  $  y=@0b42;
  $  005.LKA(车道保持辅助系统)退出激活状态原因40-47       $    $       $    $  ANS000.BYTE009  $  y=@0b42;

  $)  54.LKA NRTA原因状态
  $  54.LKA NRTA原因状态
  $  REQ000:74A 03 22 B0 AB 00 00 00 00       $  ANS000:7CA 03 22 B0 AB 00 00 00 00

  $  000.LKA(车道保持辅助系统)未准备好激活原因0-7         $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b2d;else if(x==0x02)y=@0b2e;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b2f;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b30;else if(x==0x40)y=@0b19;else if(x==0x80)y=@0b31;else y=@01a9;
  $  001.LKA(车道保持辅助系统)未准备好激活原因8-15        $    $       $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b1b;else if(x==0x02)y=@0b1c;else if(x==0x04)y=@0b1d;else if(x==0x08)y=@0b1e;else if(x==0x10)y=@0b32;else if(x==0x20)y=@0b33;else if(x==0x40)y=@0b1f;else if(x==0x80)y=@0b21;else y=@01a9;
  $  002.LKA(车道保持辅助系统)未准备好激活原因16-23       $    $       $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b34;else if(x==0x02)y=@0b35;else if(x==0x04)y=@0b36;else if(x==0x08)y=@0b37;else if(x==0x10)y=@0b38;else if(x==0x20)y=@0b39;else if(x==0x40)y=@0b3a;else if(x==0x80)y=@0b3b;else y=@01a9;
  $  003.LKA(车道保持辅助系统)未准备好激活原因24-31       $    $       $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b3c;else if(x==0x02)y=@0b3d;else if(x==0x04)y=@0b3e;else if(x==0x08)y=@0b3f;else if(x==0x10)y=@0b40;else if(x==0x20)y=@0b41;else if(x==0x40)y=@0004;else if(x==0x80)y=@0004;else y=@01a9;
  $  004.LKA(车道保持辅助系统)未准备好激活原因32-39       $    $       $    $  ANS000.BYTE008  $  y=@0b42;
  $  005.LKA(车道保持辅助系统)未准备好激活原因40-47       $    $       $    $  ANS000.BYTE009  $  y=@0b42;

  $)  55.AEB NRTA原因事件4
  $  55.AEB NRTA原因事件4
  $  REQ000:74A 03 22 B0 69 00 00 00 00       $  ANS000:7CA 03 22 B0 69 00 00 00 00

  $  000.AEB(自动紧急刹车)无法进入原因0-7                 $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4c;else if(x==0x02)y=@0103;else if(x==0x04)y=@0b50;else if(x==0x08)y=@0b54;else if(x==0x10)y=@0b55;else if(x==0x20)y=@0b51;else if(x==0x40)y=@0b53;else if(x==0x80)y=@0b56;else y=@01a9;
  $  001.AEB(自动紧急刹车)无法进入原因8-15                $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b5b;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b7c;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b73;else if(x==0x40)y=@0b5f;else if(x==0x80)y=@0b61;else y=@01a9;
  $  002.AEB(自动紧急刹车)无法进入原因16-23               $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b63;else if(x==0x02)y=@0b64;else if(x==0x04)y=@0b65;else if(x==0x08)y=@0b7d;else if(x==0x10)y=@0b67;else if(x==0x20)y=@0b6a;else if(x==0x40)y=@0b21;else if(x==0x80)y=@0b48;else y=@01a9;
  $  003.AEB(自动紧急刹车)无法进入原因24-31               $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b49;else if(x==0x02)y=@0b4a;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  004.AEB(自动紧急刹车)无法进入时的故障保障状态1       $    $         $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b7e;else if(x==0x02)y=@0b7f;else if(x==0x04)y=@0b80;else if(x==0x08)y=@0b81;else if(x==0x10)y=@0b82;else if(x==0x20)y=@0b83;else if(x==0x40)y=@0b84;else if(x==0x80)y=@0b85;else y=@01a9;
  $  005.AEB(自动紧急刹车)无法进入时的故障保障状态2       $    $         $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else y=@01a9;
  $  006.AEB(自动紧急刹车)无法进入时的年份                $    $         $    $  ANS000.BYTE010  $  y=x+2000;
  $  007.AEB(自动紧急刹车)无法进入时的月份                $    $         $    $  ANS000.BYTE011  $  y=x;
  $  008.AEB(自动紧急刹车)无法进入时的日期                $    $         $    $  ANS000.BYTE012  $  y=x;
  $  009.AEB(自动紧急刹车)无法进入时的时刻                $    $         $    $  ANS000.BYTE013  $  y=x;
  $  010.AEB(自动紧急刹车)无法进入时的分钟                $    $         $    $  ANS000.BYTE014  $  y=x;
  $  011.AEB(自动紧急刹车)无法进入时的秒数                $    $         $    $  ANS000.BYTE015  $  y=x;
  $  012.AEB(自动紧急刹车)无法进入时的年份                $    $  km     $    $  ANS000.BYTE016  $  y=x1*256+x2;

  $)  56.LKA NRTA原因事件4
  $  56.LKA NRTA原因事件4
  $  REQ000:74A 03 22 B0 A9 00 00 00 00       $  ANS000:7CA 03 22 B0 A9 00 00 00 00

  $  000.LKA(车道保持辅助系统)未准备好激活原因0-7         $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b2d;else if(x==0x02)y=@0b2e;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b2f;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b30;else if(x==0x40)y=@0b19;else if(x==0x80)y=@0b31;else y=@01a9;
  $  001.LKA(车道保持辅助系统)未准备好激活原因8-15        $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b1b;else if(x==0x02)y=@0b1c;else if(x==0x04)y=@0b1d;else if(x==0x08)y=@0b1e;else if(x==0x10)y=@0b32;else if(x==0x20)y=@0b33;else if(x==0x40)y=@0b1f;else if(x==0x80)y=@0b21;else y=@01a9;
  $  002.LKA(车道保持辅助系统)未准备好激活原因16-23       $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b34;else if(x==0x02)y=@0b35;else if(x==0x04)y=@0b36;else if(x==0x08)y=@0b37;else if(x==0x10)y=@0b38;else if(x==0x20)y=@0b39;else if(x==0x40)y=@0b3a;else if(x==0x80)y=@0b3b;else y=@01a9;
  $  003.LKA(车道保持辅助系统)未准备好激活原因24-31       $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b3c;else if(x==0x02)y=@0b3d;else if(x==0x04)y=@0b3e;else if(x==0x08)y=@0b3f;else if(x==0x10)y=@0b40;else if(x==0x20)y=@0b41;else if(x==0x40)y=@0004;else if(x==0x80)y=@0004;else y=@01a9;
  $  004.LKA(车道保持辅助系统)未准备好激活原因32-39       $    $         $    $  ANS000.BYTE008  $  y=@0b42;
  $  005.LKA(车道保持辅助系统)未准备好激活原因40-47       $    $         $    $  ANS000.BYTE009  $  y=@0b42;
  $  006.LKA(车道保持辅助系统)失控状态未准备好激活        $    $         $    $  ANS000.BYTE010  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  007.LKA(车道保持辅助系统)异常退出时的年份            $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.LKA(车道保持辅助系统)异常退出时的月份            $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.LKA(车道保持辅助系统)异常退出时的日期            $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.LKA(车道保持辅助系统)异常退出时的时刻            $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.LKA(车道保持辅助系统)异常退出时的分钟            $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.LKA(车道保持辅助系统)异常退出时的秒数            $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.LKA(车道保持辅助系统)异常退出时的年份            $    $  km     $    $  ANS000.BYTE018  $  y=x1*256*256+x2*256+x3;

  $)  57.ACC退出原因事件2
  $  57.ACC退出原因事件2
  $  REQ000:74A 03 22 B0 52 00 00 00 00       $  ANS000:7CA 03 22 B0 52 00 00 00 00

  $  000.ACC从激活状态异常退出原因0-7                $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4b;else if(x==0x02)y=@0b4c;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b4d;else if(x==0x40)y=@0b4e;else if(x==0x80)y=@0b4f;else y=@01a9;
  $  001.ACC从激活状态异常退出原因8-15               $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b50;else if(x==0x02)y=@0b51;else if(x==0x04)y=@0b52;else if(x==0x08)y=@0b53;else if(x==0x10)y=@0b54;else if(x==0x20)y=@0b55;else if(x==0x40)y=@0b56;else if(x==0x80)y=@0b57;else y=@01a9;
  $  002.ACC从激活状态异常退出原因16-23              $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b58;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b5b;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b5d;else if(x==0x40)y=@0018;else if(x==0x80)y=@0b5e;else y=@01a9;
  $  003.ACC从激活状态异常退出原因24-31              $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b5f;else if(x==0x02)y=@0b60;else if(x==0x04)y=@0b61;else if(x==0x08)y=@0b62;else if(x==0x10)y=@0b63;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0b64;else y=@01a9;
  $  004.ACC从激活状态异常退出原因32-39              $    $         $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b65;else if(x==0x02)y=@0b66;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b67;else if(x==0x10)y=@0b68;else if(x==0x20)y=@0b69;else if(x==0x40)y=@0b6a;else if(x==0x80)y=@0b6b;else y=@01a9;
  $  005.ACC从激活状态异常退出原因40-47              $    $         $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b21;else if(x==0x02)y=@0b48;else if(x==0x04)y=@0b49;else if(x==0x08)y=@0b4a;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  006.ACC从激活状态异常退出时的故障保险状态       $    $         $    $  ANS000.BYTE010  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  007.ACC异常退出时的年份                         $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.ACC异常退出时的月份                         $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.ACC异常退出时的日期                         $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.ACC异常退出时的时刻                         $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.ACC异常退出时的分钟                         $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.ACC异常退出时的秒数                         $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.ACC异常退出时的年份                         $    $  km     $    $  ANS000.BYTE018  $  y=x1*256*256+x2*256+x3;

  $)  58.ACC退出原因事件1
  $  58.ACC退出原因事件1
  $  REQ000:74A 03 22 B0 51 00 00 00 00       $  ANS000:7CA 03 22 B0 51 00 00 00 00

  $  000.ACC从激活状态异常退出原因0-7                $    $         $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4b;else if(x==0x02)y=@0b4c;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0b4d;else if(x==0x40)y=@0b4e;else if(x==0x80)y=@0b4f;else y=@01a9;
  $  001.ACC从激活状态异常退出原因8-15               $    $         $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b50;else if(x==0x02)y=@0b51;else if(x==0x04)y=@0b52;else if(x==0x08)y=@0b53;else if(x==0x10)y=@0b54;else if(x==0x20)y=@0b55;else if(x==0x40)y=@0b56;else if(x==0x80)y=@0b57;else y=@01a9;
  $  002.ACC从激活状态异常退出原因16-23              $    $         $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b58;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b5b;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b5d;else if(x==0x40)y=@0018;else if(x==0x80)y=@0b5e;else y=@01a9;
  $  003.ACC从激活状态异常退出原因24-31              $    $         $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b5f;else if(x==0x02)y=@0b60;else if(x==0x04)y=@0b61;else if(x==0x08)y=@0b62;else if(x==0x10)y=@0b63;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0b64;else y=@01a9;
  $  004.ACC从激活状态异常退出原因32-39              $    $         $    $  ANS000.BYTE008  $  if(x==0x01)y=@0b65;else if(x==0x02)y=@0b66;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b67;else if(x==0x10)y=@0b68;else if(x==0x20)y=@0b69;else if(x==0x40)y=@0b6a;else if(x==0x80)y=@0b6b;else y=@01a9;
  $  005.ACC从激活状态异常退出原因40-47              $    $         $    $  ANS000.BYTE009  $  if(x==0x01)y=@0b21;else if(x==0x02)y=@0b48;else if(x==0x04)y=@0b49;else if(x==0x08)y=@0b4a;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  006.ACC从激活状态异常退出时的故障保险状态       $    $         $    $  ANS000.BYTE010  $  if(x==0x01)y=@0b6c;else if(x==0x02)y=@0b6d;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  007.ACC异常退出时的年份                         $    $         $    $  ANS000.BYTE012  $  y=x+2000;
  $  008.ACC异常退出时的月份                         $    $         $    $  ANS000.BYTE013  $  y=x;
  $  009.ACC异常退出时的日期                         $    $         $    $  ANS000.BYTE014  $  y=x;
  $  010.ACC异常退出时的时刻                         $    $         $    $  ANS000.BYTE015  $  y=x;
  $  011.ACC异常退出时的分钟                         $    $         $    $  ANS000.BYTE016  $  y=x;
  $  012.ACC异常退出时的秒数                         $    $         $    $  ANS000.BYTE017  $  y=x;
  $  013.ACC异常退出时的年份                         $    $  km     $    $  ANS000.BYTE018  $  y=x1*256*256+x2*256+x3;

  $)  59.里程表读数
  $  59.里程表读数
  $  REQ000:74A 03 22 E1 01 00 00 00 00       $  ANS000:7CA 03 22 E1 01 00 00 00 00

  $  000.里程表读数       $    $  km     $    $  ANS000.BYTE004  $  y=x1*256*256+x2*256+x3;

  $)  60.许可功能配置
  $  60.许可功能配置
  $  REQ000:74A 03 22 B0 30 00 00 00 00       $  ANS000:7CA 03 22 B0 30 00 00 00 00

  $  000.AHB启用                            $    $       $    $  ANS000.BYTE004  $  if((x&0x80)==0x80)y=@00dc;else y=@00db;
  $  001.TSR启用                            $    $       $    $  ANS000.BYTE004  $  if((x&0x40)==0x40)y=@00dc;else y=@00db;
  $  002.ACC启用                            $    $       $    $  ANS000.BYTE004  $  if((x&0x20)==0x20)y=@00dc;else y=@00db;
  $  003.AEBP(自动紧急刹车(行人))启用       $    $       $    $  ANS000.BYTE004  $  if((x&0x10)==0x10)y=@00dc;else y=@00db;
  $  004.AEB(自动制动系统)启用              $    $       $    $  ANS000.BYTE004  $  if((x&0x08)==0x08)y=@00dc;else y=@00db;
  $  005.PCW启用                            $    $       $    $  ANS000.BYTE004  $  if((x&0x04)==0x04)y=@00dc;else y=@00db;
  $  006.FCW(正面碰撞警告)启用              $    $       $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@00dc;else y=@00db;
  $  007.LDW(车道偏离预警系统)启用          $    $       $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@00dc;else y=@00db;
  $  008.LKA(车道保持辅助系统)启用          $    $       $    $  ANS000.BYTE005  $  if((x&0x02)==0x02)y=@00dc;else y=@00db;
  $  009.功能启用信号校验                   $    $       $    $  ANS000.BYTE006  $  HEX(X);

  $)  61.LKA退出原因状态
  $  61.LKA退出原因状态
  $  REQ000:74A 03 22 B0 AA 00 00 00 00       $  ANS000:7CA 03 22 B0 AA 00 00 00 00

  $  000.LKA(车道保持辅助系统)退出激活状态原因0-7         $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b2e;else if(x==0x02)y=@0b1f;else if(x==0x04)y=@0b43;else if(x==0x08)y=@0b44;else if(x==0x10)y=@0b45;else if(x==0x20)y=@091c;else if(x==0x40)y=@0b46;else if(x==0x80)y=@0abc;else y=@01a9;
  $  001.LKA(车道保持辅助系统)退出激活状态原因8-15        $    $       $    $  ANS000.BYTE005  $  if(x==0x01)y=@0103;else if(x==0x02)y=@0b17;else if(x==0x04)y=@0103;else if(x==0x08)y=@0b18;else if(x==0x10)y=@0b19;else if(x==0x20)y=@0b1a;else if(x==0x40)y=@0b1b;else if(x==0x80)y=@0b1c;else y=@01a9;
  $  002.LKA(车道保持辅助系统)退出激活状态原因16-23       $    $       $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b1d;else if(x==0x02)y=@0b1e;else if(x==0x04)y=@0b1f;else if(x==0x08)y=@0b20;else if(x==0x10)y=@0b21;else if(x==0x20)y=@0b22;else if(x==0x40)y=@0b23;else if(x==0x80)y=@0b24;else y=@01a9;
  $  003.LKA(车道保持辅助系统)退出激活状态原因24-31       $    $       $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b25;else if(x==0x02)y=@0b26;else if(x==0x04)y=@0b27;else if(x==0x08)y=@0b28;else if(x==0x10)y=@0b29;else if(x==0x20)y=@0004;else if(x==0x40)y=@0004;else if(x==0x80)y=@0004;else y=@01a9;
  $  004.LKA(车道保持辅助系统)退出激活状态原因32-39       $    $       $    $  ANS000.BYTE008  $  y=@0b42;
  $  005.LKA(车道保持辅助系统)退出激活状态原因40-47       $    $       $    $  ANS000.BYTE009  $  y=@0b42;

  $)  62.DAS功能配置
  $  62.DAS功能配置
  $  REQ000:74A 03 22 C0 01 00 00 00 00       $  ANS000:7CA 03 22 C0 01 00 00 00 00

  $  000.AHB启用                            $    $       $    $  ANS000.BYTE004  $  if((x&0x80)==0x80)y=@0028;else y=@000f;
  $  001.TSR启用                            $    $       $    $  ANS000.BYTE004  $  if((x&0x40)==0x40)y=@0028;else y=@000f;
  $  002.ACC启用                            $    $       $    $  ANS000.BYTE004  $  if((x&0x20)==0x20)y=@0028;else y=@000f;
  $  003.AEBP(自动紧急刹车(行人))启用       $    $       $    $  ANS000.BYTE004  $  if((x&0x10)==0x10)y=@0028;else y=@000f;
  $  004.AEB(自动制动系统)启用              $    $       $    $  ANS000.BYTE004  $  if((x&0x08)==0x08)y=@0028;else y=@000f;
  $  005.PCW启用                            $    $       $    $  ANS000.BYTE004  $  if((x&0x04)==0x04)y=@0028;else y=@000f;
  $  006.FCW(正面碰撞警告)启用              $    $       $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  007.LDW(车道偏离预警系统)启用          $    $       $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;
  $  008.LKA(车道保持辅助系统)启用          $    $       $    $  ANS000.BYTE005  $  if((x&0x01)==0x01)y=@0028;else y=@000f;

  $)  63.相机试图阻止的代码
  $  63.相机试图阻止的代码
  $  REQ000:74A 03 22 B0 3B 00 00 00 00       $  ANS000:7CA 03 22 B0 3B 00 00 00 00

  $  000.摄像头视野遮挡原因_眩光           $    $       $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@00ca;else y=@00c9;
  $  001.摄像头视野遮挡原因_光线太强       $    $       $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;
  $  002.摄像头视野遮挡原因_散色           $    $       $    $  ANS000.BYTE004  $  if((x&0x80)==0x80)y=@00ca;else y=@00c9;
  $  003.摄像头视野遮挡原因_图像模糊       $    $       $    $  ANS000.BYTE004  $  if((x&0x40)==0x40)y=@00ca;else y=@00c9;
  $  004.摄像头视野遮挡原因_光线不足       $    $       $    $  ANS000.BYTE004  $  if((x&0x20)==0x20)y=@00ca;else y=@00c9;
  $  005.摄像头视野遮挡原因_斑点           $    $       $    $  ANS000.BYTE004  $  if((x&0x10)==0x10)y=@00ca;else y=@00c9;
  $  006.摄像头视野遮挡原因_部分遮挡       $    $       $    $  ANS000.BYTE004  $  if((x&0x08)==0x08)y=@00ca;else y=@00c9;
  $  007.摄像头视野遮挡原因_完全遮挡       $    $       $    $  ANS000.BYTE004  $  if((x&0x04)==0x04)y=@00ca;else y=@00c9;
  $  008.摄像头视野遮挡原因_结冰           $    $       $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@00ca;else y=@00c9;
  $  009.摄像头视野遮挡原因_起雾           $    $       $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;

  $)  64.校准可追溯性领域
  $  64.校准可追溯性领域
  $  REQ000:74A 03 22 B0 38 00 00 00 00       $  ANS000:7CA 03 22 B0 38 00 00 00 00

  $  000.校准年               $    $       $    $  ANS000.BYTE004  $  y=2000+x;
  $  001.校准月               $    $       $    $  ANS000.BYTE005  $  y=x;
  $  002.校准天               $    $       $    $  ANS000.BYTE006  $  y=x;
  $  003.校准小时             $    $       $    $  ANS000.BYTE007  $  y=x;
  $  004.校准分钟             $    $       $    $  ANS000.BYTE008  $  y=x;
  $  005.校准秒               $    $       $    $  ANS000.BYTE009  $  y=x;
  $  006.里程表读数           $    $       $    $  ANS000.BYTE010  $  y=x1*256*256+x2*256+x3;
  $  007.测试工具参考号       $    $       $    $  ANS000.BYTE013  $  HEX(X1,X2,X3,X4);

  $)  65.校准结果
  $  65.校准结果
  $  REQ000:74A 03 22 B0 2E 00 00 00 00       $  ANS000:7CA 03 22 B0 2E 00 00 00 00

  $  000.EOL(下线检测)标定状态           $    $       $    $  ANS000.BYTE004  $  if(x==0x00)y=@004a;else if(x==0x01)y=@0b2a;else if(x==0x02)y=@0b2b;else if(x==0x03)y=@0b2c;else y=@01a9;
  $  001.EOL(下线检测)标定错误原因       $    $       $    $  ANS000.BYTE005  $  if(x==0x00)y=@023f;else if(x==0x01)y=@0096;else if(x==0x02)y=@0910;else if(x==0x03)y=@0911;else if(x==0x04)y=@0912;else if(x==0x05)y=@0913;else if(x==0x06)y=@0914;else if(x==0x07)y=@0915;else if(x==0x08)y=@0916;else if(x==0x09)y=@0917;else if(x==0x0A)y=@0918;else if(x==0x0B)y=@0919;else if(x==0x0C)y=@091a;else if(x==0x0D)y=@091b;else if(x==0x0E)y=@091c;else if(x==0x0F)y=@091d;else if(x==0x10)y=@091e;else if(x==0x11)y=@091f;else if(x==0x12)y=@0920;else if(x==0x13)y=@0921;else if(x==0x14)y=@0922;else if(x==0x15)y=@0923;else y=@01a9;
  $  002.摄像头校准横摆角值              $    $       $    $  ANS000.BYTE006  $  y=(x1*256+x2)-190;
  $  003.摄像头校准俯仰角值              $    $       $    $  ANS000.BYTE008  $  y=(x1*256+x2)-160;
  $  004.摄像头校准侧倾角值              $    $       $    $  ANS000.BYTE010  $  y=(x1*256+x2)/256-1;
  $  005.摄像头自动调整横摆角值          $    $       $    $  ANS000.BYTE012  $  y=x-40;
  $  006.摄像头自动调整俯仰角值          $    $       $    $  ANS000.BYTE013  $  y=x-40;

  $)  66.校准失败代码
  $  66.校准失败代码
  $  REQ000:74A 03 22 B0 3D 00 00 00 00       $  ANS000:7CA 03 22 B0 3D 00 00 00 00

  $  000.超出自动调整范围             $    $       $    $  ANS000.BYTE004  $  if((x&0x04)==0x04)y=@00ca;else y=@00c9;
  $  001.软件故障(不在标定范围)       $    $       $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@00ca;else y=@00c9;
  $  002.未标定                       $    $       $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@00ca;else y=@00c9;

  $)  67.TSR退出代码
  $  67.TSR退出代码
  $  REQ000:74A 03 22 B0 95 00 00 00 00       $  ANS000:7CA 03 22 B0 95 00 00 00 00

  $  000.TSR从激活状态异常退出原因0-7        $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b70;else if(x==0x02)y=@0b21;else if(x==0x04)y=@0b48;else if(x==0x08)y=@0b49;else if(x==0x10)y=@0b4a;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;
  $  001.TSR从激活状态异常退出原因8-15       $    $       $    $  ANS000.BYTE005  $  y=x;

  $)  68.电池电压
  $  68.电池电压
  $  REQ000:74A 03 22 01 12 00 00 00 00       $  ANS000:7CA 03 22 01 12 00 00 00 00
  $  REQ001:74A 03 22 C0 02 00 00 00 00       $  ANS001:7CA 03 22 C0 02 00 00 00 00

  $  000.电池电压           $    $  V     $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.电池电压过低       $    $        $    $  ANS001.BYTE004  $  if((x&0x02)==0x02)y=@0028;else y=@000f;
  $  002.电池电压过高       $    $        $    $  ANS001.BYTE004  $  if((x&0x01)==0x01)y=@0028;else y=@000f;

  $)  69.供应商可追溯性领域
  $  69.供应商可追溯性领域
  $  REQ000:74A 03 22 B0 47 00 00 00 00       $  ANS000:7CA 03 22 B0 47 00 00 00 00

  $  000.供应商芯片跟踪号       $    $       $    $  ANS000.BYTE004  $  HEX(X1,X2,X3,X4,X5,X6,X7,X8);

  $)  70.AEB退出原因状态
  $  70.AEB退出原因状态
  $  REQ000:74A 03 22 B0 6A 00 00 00 00       $  ANS000:7CA 03 22 B0 6A 00 00 00 00

  $  000.AEB(自动紧急刹车)从激活状态异常退出原因0-7         $    $       $    $  ANS000.BYTE004  $  if(x==0x01)y=@0b4c;else if(x==0x02)y=@0103;else if(x==0x04)y=@0b50;else if(x==0x08)y=@0b54;else if(x==0x10)y=@0b55;else if(x==0x20)y=@0b51;else if(x==0x40)y=@0b53;else if(x==0x80)y=@0b56;else y=@01a9;
  $  001.AEB(自动紧急刹车)从激活状态异常退出原因8-15        $    $       $    $  ANS000.BYTE005  $  if(x==0x01)y=@0b5b;else if(x==0x02)y=@0b59;else if(x==0x04)y=@0b5a;else if(x==0x08)y=@0b7c;else if(x==0x10)y=@0b5c;else if(x==0x20)y=@0b73;else if(x==0x40)y=@0b5f;else if(x==0x80)y=@0b61;else y=@01a9;
  $  002.AEB(自动紧急刹车)从激活状态异常退出原因16-23       $    $       $    $  ANS000.BYTE006  $  if(x==0x01)y=@0b63;else if(x==0x02)y=@0b64;else if(x==0x04)y=@0b65;else if(x==0x08)y=@0b7d;else if(x==0x10)y=@0b67;else if(x==0x20)y=@0b6a;else if(x==0x40)y=@0b21;else if(x==0x80)y=@0b48;else y=@01a9;
  $  003.AEB(自动紧急刹车)从激活状态异常退出原因24-31       $    $       $    $  ANS000.BYTE007  $  if(x==0x01)y=@0b49;else if(x==0x02)y=@0b4a;else if(x==0x04)y=@0103;else if(x==0x08)y=@0103;else if(x==0x10)y=@0103;else if(x==0x20)y=@0103;else if(x==0x40)y=@0103;else if(x==0x80)y=@0103;else y=@01a9;

  $)  71.可靠性数据记录
  $  71.可靠性数据记录
  $  REQ000:74A 03 22 B0 09 00 00 00 00       $  ANS000:7CA 03 22 B0 09 00 00 00 00

  $  000.刷写检测错误                 $    $       $    $  ANS000.BYTE006  $  if(x==0x00)y=@012a;else if(x==0x01)y=@0119;else y=@01a9;
  $  001.PLL检测错误                  $    $       $    $  ANS000.BYTE007  $  if(x==0x00)y=@012a;else if(x==0x01)y=@0119;else y=@01a9;
  $  002.随机存取存储器检测故障       $    $       $    $  ANS000.BYTE008  $  if(x==0x00)y=@012a;else if(x==0x01)y=@0119;else y=@01a9;
  $  003.堆栈检测错误                 $    $       $    $  ANS000.BYTE009  $  if(x==0x00)y=@012a;else if(x==0x01)y=@0119;else y=@01a9;
  $  004.未使用内存检测错误           $    $       $    $  ANS000.BYTE010  $  if(x==0x00)y=@012a;else if(x==0x01)y=@0119;else y=@01a9;
  $  005.ECC检测错误                  $    $       $    $  ANS000.BYTE011  $  if(x==0x00)y=@012a;else if(x==0x01)y=@0119;else y=@01a9;
  $  006.常量寄存器检测错误           $    $       $    $  ANS000.BYTE012  $  if(x==0x00)y=@012a;else if(x==0x01)y=@0119;else y=@01a9;
  $  007.Spi超时                      $    $       $    $  ANS000.BYTE013  $  if(x==0x00)y=@012a;else if(x==0x01)y=@0119;else y=@01a9;
  $  008.ESR0重置次数                 $    $       $    $  ANS000.BYTE014  $  y=x;
  $  009.ESR1重置次数                 $    $       $    $  ANS000.BYTE015  $  y=x;
  $  010.SMU重置次数                  $    $       $    $  ANS000.BYTE016  $  y=x;
  $  011.SoftReset重置次数            $    $       $    $  ANS000.BYTE017  $  y=x;
  $  012.STM0重置次数                 $    $       $    $  ANS000.BYTE018  $  y=x;
  $  013.STM1重置次数                 $    $       $    $  ANS000.BYTE019  $  y=x;
  $  014.STM2重置次数                 $    $       $    $  ANS000.BYTE020  $  y=x;
  $  015.MultipleReset重置次数        $    $       $    $  ANS000.BYTE021  $  y=x;
  $  016.CB0重置次数                  $    $       $    $  ANS000.BYTE022  $  y=x;
  $  017.CB1重置次数                  $    $       $    $  ANS000.BYTE023  $  y=x;
  $  018.CB3重置次数                  $    $       $    $  ANS000.BYTE024  $  y=x;
  $  019.TuningProtect重置次数        $    $       $    $  ANS000.BYTE025  $  y=x;
  $  020.EVR13重置次数                $    $       $    $  ANS000.BYTE026  $  y=x;
  $  021.EVR33重置次数                $    $       $    $  ANS000.BYTE027  $  y=x;
  $  022.SupplyWdg重置次数            $    $       $    $  ANS000.BYTE028  $  y=x;
  $  023.StandbyWdg重置次数           $    $       $    $  ANS000.BYTE029  $  y=x;
  $  024.可靠性数据年份               $    $       $    $  ANS000.BYTE030  $  y=x+2000;
  $  025.可靠性数据月份               $    $       $    $  ANS000.BYTE031  $  y=x;
  $  026.可靠性数据日期               $    $       $    $  ANS000.BYTE032  $  y=x;
  $  027.可靠性数据时刻               $    $       $    $  ANS000.BYTE033  $  y=x;
  $  028.可靠性数据分钟               $    $       $    $  ANS000.BYTE034  $  y=x;
  $  029.可靠性数据秒数               $    $       $    $  ANS000.BYTE035  $  y=x;
  $  030.可靠性数据年份               $    $       $    $  ANS000.BYTE036  $  y=x1*256+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:74A 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
