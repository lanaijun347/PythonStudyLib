
    车型ID：3c52

    模拟：协议模拟-->3c52

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E9

进入命令:

  $~  REQ000:7E1 02 10 01 00 00 00 00 00       $~  ANS000:7E9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E1 02 3E 00 00 00 00 00 00       $!  ANS000:7E9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E1 03 19 02 09 00 00 00 00       $#  ANS000:7E9 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/2c000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E1 04 14 FF FF FF 00 00 00       $$  ANS000:7E9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E1 03 22 F1 83 00 00 00 00       $%  ANS000:7E9 03 22 F1 83 00 00 00 00
  $%  REQ001:7E1 03 22 F1 87 00 00 00 00       $%  ANS001:7E9 03 22 F1 87 00 00 00 00
  $%  REQ002:7E1 03 22 F1 8A 00 00 00 00       $%  ANS002:7E9 03 22 F1 8A 00 00 00 00
  $%  REQ003:7E1 03 22 F1 8B 00 00 00 00       $%  ANS003:7E9 03 22 F1 8B 00 00 00 00
  $%  REQ004:7E1 03 22 F1 8C 00 00 00 00       $%  ANS004:7E9 03 22 F1 8C 00 00 00 00
  $%  REQ005:7E1 03 22 F1 90 00 00 00 00       $%  ANS005:7E9 03 22 F1 90 00 00 00 00
  $%  REQ006:7E1 03 22 F1 94 00 00 00 00       $%  ANS006:7E9 03 22 F1 94 00 00 00 00
  $%  REQ007:7E1 03 22 F1 95 00 00 00 00       $%  ANS007:7E9 03 22 F1 95 00 00 00 00
  $%  REQ008:7E1 03 22 F1 97 00 00 00 00       $%  ANS008:7E9 03 22 F1 97 00 00 00 00
  $%  REQ009:7E1 03 22 F1 98 00 00 00 00       $%  ANS009:7E9 03 22 F1 98 00 00 00 00
  $%  REQ010:7E1 03 22 F1 99 00 00 00 00       $%  ANS010:7E9 03 22 F1 99 00 00 00 00

  $%  000:供应商电控单元(ECU)引导加载软件参考号:        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:整车厂定义零件编号:                           $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  002:供应商标志信息:                               $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  003:供应商生产线电控单元(ECU)生产日期:            $%    $%  ANS003.BYTE004  $%  HEX(x1,x2,x3);
  $%  004:电控单元(ECU)序列号:                          $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  005:车辆识别码:                                   $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  006:电控单元(ECU)软件号:                          $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  007:供应商电控单元(ECU)软件版本号:                $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  008:系统名称:                                     $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:测试者序列号:                                 $%    $%  ANS009.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  010:编程日期:                                     $%    $%  ANS010.BYTE004  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E1 03 22 F1 00 00 00 00 00       $  ANS000:7E9 03 22 F1 00 00 00 00 00
  $  REQ001:7E1 03 22 F1 01 00 00 00 00       $  ANS001:7E9 03 22 F1 01 00 00 00 00
  $  REQ002:7E1 03 22 F1 02 00 00 00 00       $  ANS002:7E9 03 22 F1 02 00 00 00 00
  $  REQ003:7E1 03 22 F1 03 00 00 00 00       $  ANS003:7E9 03 22 F1 03 00 00 00 00
  $  REQ004:7E1 03 22 F1 04 00 00 00 00       $  ANS004:7E9 03 22 F1 04 00 00 00 00
  $  REQ005:7E1 03 22 F1 05 00 00 00 00       $  ANS005:7E9 03 22 F1 05 00 00 00 00
  $  REQ006:7E1 03 22 F1 06 00 00 00 00       $  ANS006:7E9 03 22 F1 06 00 00 00 00
  $  REQ007:7E1 03 22 F1 07 00 00 00 00       $  ANS007:7E9 03 22 F1 07 00 00 00 00
  $  REQ008:7E1 03 22 F1 08 00 00 00 00       $  ANS008:7E9 03 22 F1 08 00 00 00 00
  $  REQ009:7E1 03 22 F1 09 00 00 00 00       $  ANS009:7E9 03 22 F1 09 00 00 00 00
  $  REQ010:7E1 03 22 F1 10 00 00 00 00       $  ANS010:7E9 03 22 F1 10 00 00 00 00
  $  REQ011:7E1 03 22 F1 11 00 00 00 00       $  ANS011:7E9 03 22 F1 11 00 00 00 00
  $  REQ012:7E1 03 22 F1 12 00 00 00 00       $  ANS012:7E9 03 22 F1 12 00 00 00 00
  $  REQ013:7E1 03 22 F1 13 00 00 00 00       $  ANS013:7E9 03 22 F1 13 00 00 00 00
  $  REQ014:7E1 03 22 F1 14 00 00 00 00       $  ANS014:7E9 03 22 F1 14 00 00 00 00
  $  REQ015:7E1 03 22 F1 15 00 00 00 00       $  ANS015:7E9 03 22 F1 15 00 00 00 00
  $  REQ016:7E1 03 22 F1 16 00 00 00 00       $  ANS016:7E9 03 22 F1 16 00 00 00 00
  $  REQ017:7E1 03 22 F1 17 00 00 00 00       $  ANS017:7E9 03 22 F1 17 00 00 00 00
  $  REQ018:7E1 03 22 F1 18 00 00 00 00       $  ANS018:7E9 03 22 F1 18 00 00 00 00
  $  REQ019:7E1 03 22 F1 19 00 00 00 00       $  ANS019:7E9 03 22 F1 19 00 00 00 00
  $  REQ020:7E1 03 22 F1 20 00 00 00 00       $  ANS020:7E9 03 22 F1 20 00 00 00 00
  $  REQ021:7E1 03 22 F1 21 00 00 00 00       $  ANS021:7E9 03 22 F1 21 00 00 00 00
  $  REQ022:7E1 03 22 F1 22 00 00 00 00       $  ANS022:7E9 03 22 F1 22 00 00 00 00
  $  REQ023:7E1 03 22 F1 23 00 00 00 00       $  ANS023:7E9 03 22 F1 23 00 00 00 00
  $  REQ024:7E1 03 22 F1 24 00 00 00 00       $  ANS024:7E9 03 22 F1 24 00 00 00 00
  $  REQ025:7E1 03 22 F1 25 00 00 00 00       $  ANS025:7E9 03 22 F1 25 00 00 00 00
  $  REQ026:7E1 03 22 F1 26 00 00 00 00       $  ANS026:7E9 03 22 F1 26 00 00 00 00
  $  REQ027:7E1 03 22 F1 27 00 00 00 00       $  ANS027:7E9 03 22 F1 27 00 00 00 00
  $  REQ028:7E1 03 22 F1 28 00 00 00 00       $  ANS028:7E9 03 22 F1 28 00 00 00 00
  $  REQ029:7E1 03 22 F1 29 00 00 00 00       $  ANS029:7E9 03 22 F1 29 00 00 00 00
  $  REQ030:7E1 03 22 F1 30 00 00 00 00       $  ANS030:7E9 03 22 F1 30 00 00 00 00
  $  REQ031:7E1 03 22 F1 31 00 00 00 00       $  ANS031:7E9 03 22 F1 31 00 00 00 00
  $  REQ032:7E1 03 22 F1 32 00 00 00 00       $  ANS032:7E9 03 22 F1 32 00 00 00 00
  $  REQ033:7E1 03 22 F1 33 00 00 00 00       $  ANS033:7E9 03 22 F1 33 00 00 00 00
  $  REQ034:7E1 03 22 F1 34 00 00 00 00       $  ANS034:7E9 03 22 F1 34 00 00 00 00
  $  REQ035:7E1 03 22 F1 35 00 00 00 00       $  ANS035:7E9 03 22 F1 35 00 00 00 00
  $  REQ036:7E1 03 22 F1 36 00 00 00 00       $  ANS036:7E9 03 22 F1 36 00 00 00 00
  $  REQ037:7E1 03 22 F1 37 00 00 00 00       $  ANS037:7E9 03 22 F1 37 00 00 00 00
  $  REQ038:7E1 03 22 F1 38 00 00 00 00       $  ANS038:7E9 03 22 F1 38 00 00 00 00

  $  000.换挡杆位置                        $    $           $    $  ANS000.BYTE004  $  switxh(x) 0:y=@0185;1:y=@0186;2:y=@0187;3:y=@0188;7:y=@0189;default:y=@001b;
  $  001.实际挡位                          $    $           $    $  ANS001.BYTE004  $  switxh(x) 0:y=@0181;1:y=@002e;2:y=@002f;3:y=@0030;4:y=@0031;5:y=@0032;6:y=@0182;7:y=@0183;8:y=@0184;default:y=@0105;
  $  002.目标挡位                          $    $           $    $  ANS002.BYTE004  $  switxh(x) 0:y=@0181;1:y=@002e;2:y=@002f;3:y=@0030;4:y=@0031;5:y=@0032;6:y=@0182;7:y=@0183;8:y=@0184;default:y=@0105;
  $  003.发动机转速                        $    $  rpm      $    $  ANS003.BYTE004  $  y=0.25*(x1*0x100+x2);
  $  004.输入轴速度                        $    $  rpm      $    $  ANS004.BYTE004  $  y=0.25*(x1*0x100+x2);
  $  005.输出轴速度                        $    $  rpm      $    $  ANS005.BYTE004  $  y=0.25*(x1*0x100+x2);
  $  006.车速                              $    $  km/h     $    $  ANS006.BYTE004  $  y=0.0078125*(x1*0x100+x2);
  $  007.变速箱油温                        $    $  degC     $    $  ANS007.BYTE004  $  y=(x-48)*0.75;
  $  008.油门踏板位置                      $    $  %        $    $  ANS008.BYTE004  $  y=x*0.39215686;
  $  009.发动机实际扭矩                    $    $  %        $    $  ANS009.BYTE004  $  y=(x1*0x100+x2)*0.0015258789;
  $  010.换挡结束标志                      $    $           $    $  ANS010.BYTE004  $  switxh(x) 0:y=@017f;1:y=@0180;default:y=@0105;
  $  011.实际传动比                        $    $           $    $  ANS011.BYTE004  $  y=(x1*0x100+x2)*0.001;
  $  012.跛行回家状态                      $    $           $    $  ANS012.BYTE004  $  switxh(x) 0:y=@017c;1:y=@0026;2:y=@017d;3:y=@0024;4:y=@0026;5:y=@017e;default:y=@0105;
  $  013.驱动模式                          $    $           $    $  ANS013.BYTE004  $  switxh(x) 0:y=@0004;1:y=@0178;2:y=@0179;3:y=@017a;4:y=@017b;default:y=@0105;
  $  014.SLC1控制占空比                    $    $           $    $  ANS014.BYTE004  $  y=(x1*0x100+x2)*0.0015258789;
  $  015.SLC2控制占空比                    $    $           $    $  ANS015.BYTE004  $  y=(x1*0x100+x2)*0.0015258789;
  $  016.SLC3控制占空比                    $    $           $    $  ANS016.BYTE004  $  y=(x1*0x100+x2)*0.0015258789;
  $  017.SLB1控制占空比                    $    $           $    $  ANS017.BYTE004  $  y=(x1*0x100+x2)*0.0015258789;
  $  018.SLB1反馈电流                      $    $           $    $  ANS018.BYTE004  $  y=(x1*0x100+x2)*0.5;
  $  019.SLC1反馈电流                      $    $           $    $  ANS019.BYTE004  $  y=(x1*0x100+x2)*0.5;
  $  020.SLC2反馈电流                      $    $           $    $  ANS020.BYTE004  $  y=(x1*0x100+x2)*0.5;
  $  021.SLC3反馈电流                      $    $           $    $  ANS021.BYTE004  $  y=(x1*0x100+x2)*0.5;
  $  022.SLT反馈电流                       $    $           $    $  ANS022.BYTE004  $  y=(x1*0x100+x2)*0.5;
  $  023.SLU反馈电流                       $    $           $    $  ANS023.BYTE004  $  y=(x1*0x100+x2)*0.5;
  $  024.S1电磁阀控制状态                  $    $           $    $  ANS024.BYTE004  $  switxh(x) 0:y=@00b4;1:y=@00b3;default:y=@0105;
  $  025.S2电磁阀控制状态                  $    $           $    $  ANS025.BYTE004  $  switxh(x) 0:y=@00b4;1:y=@00b3;default:y=@0105;
  $  026.M 激活信号                        $    $           $    $  ANS026.BYTE004  $  switxh(x) 0:y=@0177;1:y=@002c;default:y=@0105;
  $  027.M+激活信号                        $    $           $    $  ANS027.BYTE004  $  switxh(x) 0:y=@0177;1:y=@002c;default:y=@0105;
  $  028.M-激活信号                        $    $           $    $  ANS028.BYTE004  $  switxh(x) 0:y=@0177;1:y=@002c;default:y=@0105;
  $  029.TCC(变矩离合器)控制状态           $    $           $    $  ANS029.BYTE004  $  switxh(x) 0:y=@0173;1:y=@0174;2:y=@0175;3:y=@0176;default:y=@0105;
  $  030.扭矩限制                          $    $  %        $    $  ANS030.BYTE004  $  y=(x1*0x100+x2)*0.0015258789;
  $  031.扭矩减小                          $    $  %        $    $  ANS031.BYTE004  $  y=(x1*0x100+x2)*0.0015258789;
  $  032.扭矩增大                          $    $  %        $    $  ANS032.BYTE004  $  y=(x1*0x100+x2)*0.0015258789;
  $  033.电瓶电压                          $    $  V        $    $  ANS033.BYTE004  $  y=(x1*0x100+x2)*0.0681;
  $  034.变速箱故障状态                    $    $           $    $  ANS034.BYTE004  $  switxh(x) 0:y=@0170;1:y=@0171;2:y=@0172;default:y=@0105;
  $  035.驾驶员指令发动机-扭矩百分比       $    $  %        $    $  ANS035.BYTE004  $  y=(x1*0x100+x2)*0.0015258789;
  $  036.制动踏板状态                      $    $           $    $  ANS036.BYTE004  $  switxh(x) 0:y=@016e;1:y=@016f;default:y=@0105;
  $  037.扭矩常数                          $    $  Nm       $    $  ANS037.BYTE004  $  y=x*10;
  $  038.摩擦扭矩                          $    $  %        $    $  ANS038.BYTE004  $  y=(x1*0x100+x2)*0.0015258789;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
