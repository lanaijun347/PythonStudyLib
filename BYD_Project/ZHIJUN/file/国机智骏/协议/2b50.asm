
    车型ID：2b50

    模拟：协议模拟-->2b50

;******************************************************************************************************************************************************

    通讯线: $~02$~10$~500k$~708

进入命令:

  $~  REQ000:700 02 10 03 00 00 00 00 00       $~  ANS000:708 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:700 02 3E 00 00 00 00 00 00       $!  ANS000:708 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:700 03 19 02 09 00 00 00 00       $#  ANS000:708 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ef000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:700 04 14 FF FF FF 00 00 00       $$  ANS000:708 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:700 03 22 F0 89 00 00 00 00       $%  ANS000:708 03 22 F0 89 00 00 00 00
  $%  REQ001:700 03 22 F1 84 00 00 00 00       $%  ANS001:708 03 22 F1 84 00 00 00 00
  $%  REQ002:700 03 22 F1 89 00 00 00 00       $%  ANS002:708 03 22 F1 89 00 00 00 00
  $%  REQ003:700 03 22 F1 87 00 00 00 00       $%  ANS003:708 03 22 F1 87 00 00 00 00
  $%  REQ004:700 03 22 F1 8A 00 00 00 00       $%  ANS004:708 03 22 F1 8A 00 00 00 00
  $%  REQ005:700 03 22 F1 8C 00 00 00 00       $%  ANS005:708 03 22 F1 8C 00 00 00 00
  $%  REQ006:700 03 22 F1 90 00 00 00 00       $%  ANS006:708 03 22 F1 90 00 00 00 00
  $%  REQ007:700 03 22 F1 A2 00 00 00 00       $%  ANS007:708 03 22 F1 A2 00 00 00 00
  $%  REQ008:700 03 22 F1 20 00 00 00 00       $%  ANS008:708 03 22 F1 20 00 00 00 00
  $%  REQ009:700 03 22 F1 21 00 00 00 00       $%  ANS009:708 03 22 F1 21 00 00 00 00
  $%  REQ010:700 03 22 F1 22 00 00 00 00       $%  ANS010:708 03 22 F1 22 00 00 00 00
  $%  REQ011:700 03 22 F0 83 00 00 00 00       $%  ANS011:708 03 22 F0 83 00 00 00 00
  $%  REQ012:700 03 22 F0 84 00 00 00 00       $%  ANS012:708 03 22 F0 84 00 00 00 00
  $%  REQ013:700 03 22 F0 85 00 00 00 00       $%  ANS013:708 03 22 F0 85 00 00 00 00
  $%  REQ014:700 03 22 F1 93 00 00 00 00       $%  ANS014:708 03 22 F1 93 00 00 00 00
  $%  REQ015:700 03 22 F1 95 00 00 00 00       $%  ANS015:708 03 22 F1 95 00 00 00 00

  $%  000:国机智骏ECU(电子控制器)硬件版本编号:                $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12); 
  $%  001:应用数据指纹数据标识:                               $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02d%02d%02d%s],x1+2000,x2,x3,ASCII(x4,x5,x6,x7));   
  $%  002:国机智骏ECU(电子控制器)软件版本编号:                $%    $%  ANS002.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12); 
  $%  003:ECU(电子控制器)零件号:                              $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21);     
  $%  004:ECU(电子控制器)供应商ID:                            $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);           
  $%  005:ECU(电子控制器)串码:                                $%    $%  ANS005.BYTE004  $%  y=SPRINTF([%u %s %02d-%02d-%02d],(x1*0x1000000+x2*0x10000+x3*0x100+x4),ASCII(x5,x6,x7,x8,x9,x10),0x7D0+x11,x12,x13);    
  $%  006:车辆标识码(VIN):                                    $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);   
  $%  007:整车在厂家生产线生产日期:                           $%    $%  ANS007.BYTE004  $%  y=SPRINTF([%02x%02x-%02x-%02x],x1,x2,x3,x4);   
  $%  008:网络协议版本信息:                                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4);  
  $%  009:功能定义版本信息:                                   $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4);  
  $%  010:诊断定义版本信息:                                   $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4);  
  $%  011:供应商定义的ECU(电子控制器)应用软件版本编号:        $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);           
  $%  012:供应商ECU(电子控制器)底层软件版本编号：             $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%s%02d%02d%02d%02d%02d%02d],ASCII(x1,x2),x3,x4,x5,x6,x7,x8);
  $%  013:供应商定义的ECU(电子控制器)标定软件版本编号:        $%    $%  ANS013.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);           
  $%  014:供应商ECU(电子控制器)硬件版本编号：                 $%    $%  ANS014.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);           
  $%  015:供应商ECU(电子控制器)软件版本编号：                 $%    $%  ANS015.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);           

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:700 03 22 0A 00 00 00 00 00       $  ANS000:708 03 22 0A 00 00 00 00 00
  $  REQ001:700 03 22 0A 01 00 00 00 00       $  ANS001:708 03 22 0A 01 00 00 00 00
  $  REQ002:700 03 22 0A 02 00 00 00 00       $  ANS002:708 03 22 0A 02 00 00 00 00
  $  REQ003:700 03 22 0A 03 00 00 00 00       $  ANS003:708 03 22 0A 03 00 00 00 00
  $  REQ004:700 03 22 0A 04 00 00 00 00       $  ANS004:708 03 22 0A 04 00 00 00 00
  $  REQ005:700 03 22 0A 05 00 00 00 00       $  ANS005:708 03 22 0A 05 00 00 00 00
  $  REQ006:700 03 22 0A 06 00 00 00 00       $  ANS006:708 03 22 0A 06 00 00 00 00
  $  REQ007:700 03 22 0A 07 00 00 00 00       $  ANS007:708 03 22 0A 07 00 00 00 00
  $  REQ008:700 03 22 0A 08 00 00 00 00       $  ANS008:708 03 22 0A 08 00 00 00 00
  $  REQ009:700 03 22 0A 09 00 00 00 00       $  ANS009:708 03 22 0A 09 00 00 00 00
  $  REQ010:700 03 22 0A 0A 00 00 00 00       $  ANS010:708 03 22 0A 0A 00 00 00 00
  $  REQ011:700 03 22 0A 0B 00 00 00 00       $  ANS011:708 03 22 0A 0B 00 00 00 00
  $  REQ012:700 03 22 0A 0C 00 00 00 00       $  ANS012:708 03 22 0A 0C 00 00 00 00
  $  REQ013:700 03 22 0A 0D 00 00 00 00       $  ANS013:708 03 22 0A 0D 00 00 00 00
  $  REQ014:700 03 22 0A 0E 00 00 00 00       $  ANS014:708 03 22 0A 0E 00 00 00 00
  $  REQ015:700 03 22 0A 0F 00 00 00 00       $  ANS015:708 03 22 0A 0F 00 00 00 00
  $  REQ016:700 03 22 0A 10 00 00 00 00       $  ANS016:708 03 22 0A 10 00 00 00 00
  $  REQ017:700 03 22 0A 11 00 00 00 00       $  ANS017:708 03 22 0A 11 00 00 00 00
  $  REQ018:700 03 22 0A 12 00 00 00 00       $  ANS018:708 03 22 0A 12 00 00 00 00
  $  REQ019:700 03 22 0A 17 00 00 00 00       $  ANS019:708 03 22 0A 17 00 00 00 00
  $  REQ020:700 03 22 0A 18 00 00 00 00       $  ANS020:708 03 22 0A 18 00 00 00 00
  $  REQ021:700 03 22 0A 19 00 00 00 00       $  ANS021:708 03 22 0A 19 00 00 00 00
  $  REQ022:700 03 22 0A 1A 00 00 00 00       $  ANS022:708 03 22 0A 1A 00 00 00 00
  $  REQ023:700 03 22 0A 1B 00 00 00 00       $  ANS023:708 03 22 0A 1B 00 00 00 00
  $  REQ024:700 03 22 0A 1C 00 00 00 00       $  ANS024:708 03 22 0A 1C 00 00 00 00
  $  REQ025:700 03 22 0A 1D 00 00 00 00       $  ANS025:708 03 22 0A 1D 00 00 00 00
  $  REQ026:700 03 22 0A 1E 00 00 00 00       $  ANS026:708 03 22 0A 1E 00 00 00 00
  $  REQ027:700 03 22 0A 20 00 00 00 00       $  ANS027:708 03 22 0A 20 00 00 00 00
  $  REQ028:700 03 22 0A 21 00 00 00 00       $  ANS028:708 03 22 0A 21 00 00 00 00
  $  REQ029:700 03 22 0A 22 00 00 00 00       $  ANS029:708 03 22 0A 22 00 00 00 00
  $  REQ030:700 03 22 0A 23 00 00 00 00       $  ANS030:708 03 22 0A 23 00 00 00 00
  $  REQ031:700 03 22 0A 24 00 00 00 00       $  ANS031:708 03 22 0A 24 00 00 00 00
  $  REQ032:700 03 22 0A 25 00 00 00 00       $  ANS032:708 03 22 0A 25 00 00 00 00
  $  REQ033:700 03 22 0A 26 00 00 00 00       $  ANS033:708 03 22 0A 26 00 00 00 00
  $  REQ034:700 03 22 0A 27 00 00 00 00       $  ANS034:708 03 22 0A 27 00 00 00 00
  $  REQ035:700 03 22 0A 28 00 00 00 00       $  ANS035:708 03 22 0A 28 00 00 00 00
  $  REQ036:700 03 22 0A 29 00 00 00 00       $  ANS036:708 03 22 0A 29 00 00 00 00
  $  REQ037:700 03 22 0A 2A 00 00 00 00       $  ANS037:708 03 22 0A 2A 00 00 00 00
  $  REQ038:700 03 22 0A 2B 00 00 00 00       $  ANS038:708 03 22 0A 2B 00 00 00 00
  $  REQ039:700 03 22 0A 2C 00 00 00 00       $  ANS039:708 03 22 0A 2C 00 00 00 00
  $  REQ040:700 03 22 0A 2D 00 00 00 00       $  ANS040:708 03 22 0A 2D 00 00 00 00
  $  REQ041:700 03 22 0A 2E 00 00 00 00       $  ANS041:708 03 22 0A 2E 00 00 00 00
  $  REQ042:700 03 22 0A 2F 00 00 00 00       $  ANS042:708 03 22 0A 2F 00 00 00 00
  $  REQ043:700 03 22 0A 30 00 00 00 00       $  ANS043:708 03 22 0A 30 00 00 00 00
  $  REQ044:700 03 22 0A 31 00 00 00 00       $  ANS044:708 03 22 0A 31 00 00 00 00
  $  REQ045:700 03 22 0A 32 00 00 00 00       $  ANS045:708 03 22 0A 32 00 00 00 00
  $  REQ046:700 03 22 0A 33 00 00 00 00       $  ANS046:708 03 22 0A 33 00 00 00 00
  $  REQ047:700 03 22 0A 34 00 00 00 00       $  ANS047:708 03 22 0A 34 00 00 00 00
  $  REQ048:700 03 22 0A 35 00 00 00 00       $  ANS048:708 03 22 0A 35 00 00 00 00
  $  REQ049:700 03 22 0A 36 00 00 00 00       $  ANS049:708 03 22 0A 36 00 00 00 00
  $  REQ050:700 03 22 0A 37 00 00 00 00       $  ANS050:708 03 22 0A 37 00 00 00 00
  $  REQ051:700 03 22 0A 38 00 00 00 00       $  ANS051:708 03 22 0A 38 00 00 00 00
  $  REQ052:700 03 22 0A 39 00 00 00 00       $  ANS052:708 03 22 0A 39 00 00 00 00
  $  REQ053:700 03 22 0A 3A 00 00 00 00       $  ANS053:708 03 22 0A 3A 00 00 00 00
  $  REQ054:700 03 22 0A 3B 00 00 00 00       $  ANS054:708 03 22 0A 3B 00 00 00 00
  $  REQ055:700 03 22 0A 3C 00 00 00 00       $  ANS055:708 03 22 0A 3C 00 00 00 00
  $  REQ056:700 03 22 0A 3D 00 00 00 00       $  ANS056:708 03 22 0A 3D 00 00 00 00
  $  REQ057:700 03 22 0A 3E 00 00 00 00       $  ANS057:708 03 22 0A 3E 00 00 00 00
  $  REQ058:700 03 22 0A 3F 00 00 00 00       $  ANS058:708 03 22 0A 3F 00 00 00 00
  $  REQ059:700 03 22 0A 40 00 00 00 00       $  ANS059:708 03 22 0A 40 00 00 00 00
  $  REQ060:700 03 22 0A 41 00 00 00 00       $  ANS060:708 03 22 0A 41 00 00 00 00
  $  REQ061:700 03 22 0A 42 00 00 00 00       $  ANS061:708 03 22 0A 42 00 00 00 00
  $  REQ062:700 03 22 0A 43 00 00 00 00       $  ANS062:708 03 22 0A 43 00 00 00 00
  $  REQ063:700 03 22 0A 44 00 00 00 00       $  ANS063:708 03 22 0A 44 00 00 00 00
  $  REQ064:700 03 22 0A 45 00 00 00 00       $  ANS064:708 03 22 0A 45 00 00 00 00
  $  REQ065:700 03 22 0A 46 00 00 00 00       $  ANS065:708 03 22 0A 46 00 00 00 00
  $  REQ066:700 03 22 0A 47 00 00 00 00       $  ANS066:708 03 22 0A 47 00 00 00 00
  $  REQ067:700 03 22 0A 48 00 00 00 00       $  ANS067:708 03 22 0A 48 00 00 00 00
  $  REQ068:700 03 22 0A 49 00 00 00 00       $  ANS068:708 03 22 0A 49 00 00 00 00
  $  REQ069:700 03 22 0A 4A 00 00 00 00       $  ANS069:708 03 22 0A 4A 00 00 00 00
  $  REQ070:700 03 22 0A 4B 00 00 00 00       $  ANS070:708 03 22 0A 4B 00 00 00 00

  $  000.整车系统状态                                          $    $           $    $  ANS000.BYTE004  $  switxh(x)1:y=@005c;2:y=@005d;3:y=@004a;4:y=@005e;default:y=@0012;
  $  001.车辆钥匙位置                                          $    $           $    $  ANS001.BYTE004  $  switxh(x)0:y=@0026;1:y=@0059;2:y=@005a;default:y=@005b;
  $  002.车辆档位                                              $    $           $    $  ANS002.BYTE004  $  switxh(x)0:y=@005f;1:y=@0060;2:y=@0061;3:y=@0062;4:y=@0063;default:y=@005b;
  $  003.电子油门踏板幅值                                      $    $  %        $    $  ANS003.BYTE004  $  y=x;
  $  004.制动踏板状态                                          $    $           $    $  ANS004.BYTE004  $  switxh(x)0:y=@0064;1:y=@0065;default:y=@005b;
  $  005.车辆总里程数                                          $    $  km       $    $  ANS005.BYTE004  $  y=(x1<<16)+(x2<<8)+x3;
  $  006.车速                                                  $    $  km/h     $    $  ANS006.BYTE004  $  y=SPRINTF([%.0f],((x1*0x100+x2)*0.05625));
  $  007.低压电池电压                                          $    $  V        $    $  ANS007.BYTE004  $  if(x<255)y=x*0.1;elsey=@005b;
  $  008.车辆充电状态                                          $    $           $    $  ANS008.BYTE004  $  switxh(x)0:y=@0066;1:y=@0067;2:y=@0068;3:y=@0069;default:y=@005b;
  $  009.电机目标转矩                                          $    $  Nm       $    $  ANS009.BYTE004  $  y=(x1*0x100+x2)*0.1-300;
  $  010.电机实际转矩                                          $    $  Nm       $    $  ANS010.BYTE004  $  y=(x1*0x100+x2)*0.1-300;
  $  011.电机逆变器（IGBT）温度                                $    $  degC     $    $  ANS011.BYTE004  $  if(x==0xff)y=@005b;else y=x-50;
  $  012.电机本体温度                                          $    $  degC     $    $  ANS012.BYTE004  $  if(x==0xff)y=@005b;else y=x-50;
  $  013.电机实际转速                                          $    $  rpm      $    $  ANS013.BYTE004  $  y=x1*0x100+x2-12000;
  $  014.电池系统SOC(电池剩余电量)                             $    $  %        $    $  ANS014.BYTE004  $  y=((x1*0x100)+x2)*0.1;
  $  015.高压电池包电压                                        $    $  V        $    $  ANS015.BYTE004  $  y=((x1*0x100)+x2)*0.1;
  $  016.高压电池包电流                                        $    $  A        $    $  ANS016.BYTE004  $  if((x1*0x100+x2)!=0xFFFF)y=((x1*0x100)+x2)*0.1-600;elsey=@005b;
  $  017.高压电池包（平均）温度                                $    $  degC     $    $  ANS017.BYTE004  $  if(x<0xff)y=x-40;elsey=@005b;
  $  018.DCDC(直流控制系统)温度                                $    $  degC     $    $  ANS018.BYTE004  $  if(x<0xff)y=x-40;elsey=@005b;
  $  019.冻结帧时间信息-年                                     $    $  年       $    $  ANS019.BYTE004  $  y=SPRINTF([%02d],x+2017);
  $  020.冻结帧时间信息-月                                     $    $  月       $    $  ANS020.BYTE004  $  y=SPRINTF([%02d],x);
  $  021.冻结帧时间信息-日                                     $    $  日       $    $  ANS021.BYTE004  $  y=SPRINTF([%02d],x);
  $  022.冻结帧时间信息-时                                     $    $  时       $    $  ANS022.BYTE004  $  y=SPRINTF([%02d],x);
  $  023.冻结帧时间信息-分                                     $    $  分       $    $  ANS023.BYTE004  $  y=SPRINTF([%02d],x);
  $  024.冻结帧时间信息-秒                                     $    $  秒       $    $  ANS024.BYTE004  $  y=SPRINTF([%02d],x);
  $  025.BMS(电池控制器)故障代码                               $    $           $    $  ANS025.BYTE004  $  y=(x1*0x100)+x2;
  $  026.MCU(电机控制器)故障代码                               $    $           $    $  ANS026.BYTE004  $  y=(x1*0x100)+x2;
  $  027.制动开关信号1,2状态                                   $    $           $    $  ANS027.BYTE004  $  switxh(x)0:y=@006e;1:y=@006f;2:y=@0070;3:y=@0071;default:y=@0005;
  $  028.档位霍尔组合信号                                      $    $           $    $  ANS028.BYTE004  $  switxh(x)1:y=@006a;2:y=@006b;4:y=@006c;8:y=@006d;default:y=@0005;
  $  029.加速踏板位置1传感器电压H                              $    $           $    $  ANS029.BYTE004  $  y=SPRINTF([%.0f],((x1*0x100+x2)*0.001));
  $  030.加速踏板位置2传感器电压L                              $    $           $    $  ANS030.BYTE004  $  y=SPRINTF([%.0f],((x1*0x100+x2)*0.001));
  $  031.水泵反馈信号占空比                                    $    $           $    $  ANS031.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  032.真空泵反馈信号频率                                    $    $           $    $  ANS032.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  033.SRS(安全气囊系统)碰撞信号占空比                       $    $           $    $  ANS033.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  034.SRS(安全气囊系统)碰撞信号频率                         $    $           $    $  ANS034.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  035.高压互锁信号频率                                      $    $           $    $  ANS035.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  036.冷却风扇驱动电路状态                                  $    $           $    $  ANS036.BYTE004  $  switxh(x) 0:y=@0016;1:y=@0044;2:y=@0045;3:y=@0046;default:y=@0005;
  $  037.TM电机冷却泵继电器控制电路状态                        $    $           $    $  ANS037.BYTE004  $  if(x) y=@0015;else y=@0016;
  $  038.电子驻车制动（EPB）状态                               $    $           $    $  ANS038.BYTE004  $  switxh(x) 0:y=@0047;1:y=@0043;2:y=@0048;3:y=@0049;4:y=@004a;5:y=@004b;6:y=@004b;7:y=@004b;default:y=@0005;
  $  039.电子驻车制动（EPB）夹驻请求                           $    $           $    $  ANS039.BYTE004  $  if(x) y=@0042;else y=@0043;
  $  040.快充唤醒信号                                          $    $           $    $  ANS040.BYTE004  $  if(x) y=@0040;else y=@0041;
  $  041.慢充唤醒信号                                          $    $           $    $  ANS041.BYTE004  $  if(x) y=@0040;else y=@0041;
  $  042.请求主继电器状态                                      $    $           $    $  ANS042.BYTE004  $  if(x) y=@0015;else y=@0016;
  $  043.加速踏板传感器1供电电压                               $    $  V        $    $  ANS043.BYTE004  $  y=SPRINTF([%.0f],((x1*0x100+x2)*0.001));
  $  044.加速踏板传感器2供电电压                               $    $  V        $    $  ANS044.BYTE004  $  y=SPRINTF([%.0f],((x1*0x100+x2)*0.001));
  $  045.快充口传感器1温度                                     $    $  degC     $    $  ANS045.BYTE004  $  y=x-50;
  $  046.快充口传感器2温度                                     $    $  degC     $    $  ANS046.BYTE004  $  y=x-50;
  $  047.VCU(直流转换直流)-BMS(电池管理系统)工作模式请求       $    $           $    $  ANS047.BYTE004  $  switxh(x)0:y=@000b;1:y=@0050;2:y=@0036;3:y=@0051;4:y=@0052;5:y=@004a;default:y=@0005;
  $  048.BMS(电池管理系统)运行状态                             $    $           $    $  ANS048.BYTE004  $  switxh(x)0:y=@000b;1:y=@0050;2:y=@0036;3:y=@0051;4:y=@0052;5:y=@004a;7:y=@0053;default:y=@0005;
  $  049.高压电池最大放电功率                                  $    $  kW       $    $  ANS049.BYTE004  $  y=(x1*0x100+x2)*0.5;
  $  050.高压电池最大充电功率                                  $    $  kW       $    $  ANS050.BYTE004  $  y=(x1*0x100+x2)*0.5;
  $  051.高压电池包最大放电电流                                $    $  A        $    $  ANS051.BYTE004  $  y=(x1*0x100)+x2;
  $  052.高压电池包最大充电电流                                $    $  A        $    $  ANS052.BYTE004  $  y=(x1*0x100)+x2;
  $  053.高压电池包快充充电插头插入状态                        $    $           $    $  ANS053.BYTE004  $  y=(x1*0x100)+x2;
  $  054.高压电池包慢充充电插头插入状态                        $    $           $    $  ANS054.BYTE004  $  y=(x1*0x100)+x2;
  $  055.DCDC(直流转换直流)模式请求                            $    $           $    $  ANS055.BYTE004  $  if(x==0x00) y=@0026;else if(x==0x01) y=@004f;else y=@0005
  $  056.实际DCDC(直流转换直流)工作模式                        $    $           $    $  ANS056.BYTE004  $  switxh(x)0:y=@004c;1:y=@004d;2:y=@004e;default:y=@0012;
  $  057.DCDC(直流转换直流)输出电压                            $    $  V        $    $  ANS057.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  058.DCDC(直流转换直流)输出电流                            $    $  A        $    $  ANS058.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  059.DCDC(直流转换直流)输入电压                            $    $  V        $    $  ANS059.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  060.DCDC(直流转换直流)输入电流                            $    $  A        $    $  ANS060.BYTE004  $  y=x*0.1;
  $  061.VCU(直流转换直流)-TM模式请求                          $    $           $    $  ANS061.BYTE004  $  switxh(x)0x00:y=@0034;0x01:y=@0050;0x02:y=@0036;0x03:y=@0051;0x04:y=@0054;0x05:y=@0056;0x06:y=@003a;0x07:y=@0057;0x0f:y=@0058;default:y=@0005;
  $  062.实际TM电机控制器工作模式                              $    $           $    $  ANS062.BYTE004  $  switxh(x)0x00:y=@0034;0x01:y=@0050;0x03:y=@0051;0x04:y=@0054;0x05:y=@0039;0x06:y=@003a;0x07:y=@0055;0x0F:y=@004a;default:y=@0005;
  $  063.TM电机故障灯点亮状态                                  $    $           $    $  ANS063.BYTE004  $  if(x==0x00) y=@0026;else if(x==0x01) y=@004f;else y=@0005
  $  064.TM电机目标转速                                        $    $  rpm      $    $  ANS064.BYTE004  $  y=x1*0x100+x2-12000;
  $  065.TM电机最大可用扭矩                                    $    $  Nm       $    $  ANS065.BYTE004  $  y=(x1*0x100)+x2;
  $  066.TM电机最小可用扭矩                                    $    $  Nm       $    $  ANS066.BYTE004  $  y=(x1*0x100+x2)-300;
  $  067.BMS(电池管理系统)绝缘电阻                             $    $  Kohm     $    $  ANS067.BYTE004  $  y=(x1*0x100)+x2;
  $  068.请求MCU(电机控制单元)继电器状态                       $    $           $    $  ANS068.BYTE004  $  if(x==0x00) y=@0016;else if(x==0x01) y=@0015;else y=@0005
  $  069.请求制动灯状态                                        $    $           $    $  ANS069.BYTE004  $  if(x==0x00) y=@0016;else if(x==0x01) y=@0015;else y=@0005
  $  070.非法访问函数编号                                      $    $           $    $  ANS070.BYTE004  $  HEX(x);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:700 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
