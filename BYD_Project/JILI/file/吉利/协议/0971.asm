
    车型ID：0971

    模拟：协议模拟-->0971

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~73C

进入命令:

  $~  REQ000:734 02 10 01 00 00 00 00 00       $~  ANS000:73C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:734 02 3E 00 00 00 00 00 00       $!  ANS000:73C 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:734 03 19 02 09 00 00 00 00       $#  ANS000:73C 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/97000000


  $#  01.读故障码库
  $#  REQ000:734 02 19 0A 00 00 00 00 00       $#  ANS000:73C 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/97000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:734 04 14 FF FF FF 00 00 00       $$  ANS000:73C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:734 03 22 F1 12 00 00 00 00       $%  ANS000:73C 03 22 F1 12 00 00 00 00
  $%  REQ001:734 03 22 F1 87 00 00 00 00       $%  ANS001:73C 03 22 F1 87 00 00 00 00
  $%  REQ002:734 03 22 F1 89 00 00 00 00       $%  ANS002:73C 03 22 F1 89 00 00 00 00
  $%  REQ003:734 03 22 F1 8A 00 00 00 00       $%  ANS003:73C 03 22 F1 8A 00 00 00 00
  $%  REQ004:734 03 22 F1 8B 00 00 00 00       $%  ANS004:73C 03 22 F1 8B 00 00 00 00
  $%  REQ005:734 03 22 F1 8C 00 00 00 00       $%  ANS005:73C 03 22 F1 8C 00 00 00 00
  $%  REQ006:734 03 22 F1 90 00 00 00 00       $%  ANS006:73C 03 22 F1 90 00 00 00 00
  $%  REQ007:734 03 22 F1 93 00 00 00 00       $%  ANS007:73C 03 22 F1 93 00 00 00 00
  $%  REQ008:734 03 22 F1 95 00 00 00 00       $%  ANS008:73C 03 22 F1 95 00 00 00 00
  $%  REQ009:734 03 22 F1 9D 00 00 00 00       $%  ANS009:73C 03 22 F1 9D 00 00 00 00
  $%  REQ010:734 03 22 F1 99 00 00 00 00       $%  ANS010:73C 03 22 F1 99 00 00 00 00
  $%  REQ011:734 03 22 F1 82 00 00 00 00       $%  ANS011:73C 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                         $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                           $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                  $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                       $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:          $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:            $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:              $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:        $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:        $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:          $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:ECU(电子控制器)刷写日期:          $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:标定软件版本号:                   $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:734 03 22 DF 00 00 00 00 00       $  ANS000:73C 03 22 DF 00 00 00 00 00
  $  REQ001:734 03 22 DF 01 00 00 00 00       $  ANS001:73C 03 22 DF 01 00 00 00 00
  $  REQ002:734 03 22 4F 52 00 00 00 00       $  ANS002:73C 03 22 4F 52 00 00 00 00
  $  REQ003:734 03 22 4F 55 00 00 00 00       $  ANS003:73C 03 22 4F 55 00 00 00 00
  $  REQ004:734 03 22 4F 56 00 00 00 00       $  ANS004:73C 03 22 4F 56 00 00 00 00
  $  REQ005:734 03 22 4F 57 00 00 00 00       $  ANS005:73C 03 22 4F 57 00 00 00 00
  $  REQ006:734 03 22 4F 58 00 00 00 00       $  ANS006:73C 03 22 4F 58 00 00 00 00
  $  REQ007:734 03 22 4F 59 00 00 00 00       $  ANS007:73C 03 22 4F 59 00 00 00 00
  $  REQ008:734 03 22 4F 5A 00 00 00 00       $  ANS008:73C 03 22 4F 5A 00 00 00 00
  $  REQ009:734 03 22 4F 5B 00 00 00 00       $  ANS009:73C 03 22 4F 5B 00 00 00 00
  $  REQ010:734 03 22 4F 5C 00 00 00 00       $  ANS010:73C 03 22 4F 5C 00 00 00 00
  $  REQ011:734 03 22 4F 5D 00 00 00 00       $  ANS011:73C 03 22 4F 5D 00 00 00 00
  $  REQ012:734 03 22 4F 5E 00 00 00 00       $  ANS012:73C 03 22 4F 5E 00 00 00 00
  $  REQ013:734 03 22 4F 5F 00 00 00 00       $  ANS013:73C 03 22 4F 5F 00 00 00 00
  $  REQ014:734 03 22 4F 61 00 00 00 00       $  ANS014:73C 03 22 4F 61 00 00 00 00
  $  REQ015:734 03 22 4F 62 00 00 00 00       $  ANS015:73C 03 22 4F 62 00 00 00 00
  $  REQ016:734 03 22 4F 63 00 00 00 00       $  ANS016:73C 03 22 4F 63 00 00 00 00
  $  REQ017:734 03 22 4F 64 00 00 00 00       $  ANS017:73C 03 22 4F 64 00 00 00 00
  $  REQ018:734 03 22 4F 65 00 00 00 00       $  ANS018:73C 03 22 4F 65 00 00 00 00
  $  REQ019:734 03 22 4F 66 00 00 00 00       $  ANS019:73C 03 22 4F 66 00 00 00 00
  $  REQ020:734 03 22 4F 67 00 00 00 00       $  ANS020:73C 03 22 4F 67 00 00 00 00
  $  REQ021:734 03 22 4F 69 00 00 00 00       $  ANS021:73C 03 22 4F 69 00 00 00 00
  $  REQ022:734 03 22 4F 6A 00 00 00 00       $  ANS022:73C 03 22 4F 6A 00 00 00 00
  $  REQ023:734 03 22 4F 6B 00 00 00 00       $  ANS023:73C 03 22 4F 6B 00 00 00 00
  $  REQ024:734 03 22 4F 6C 00 00 00 00       $  ANS024:73C 03 22 4F 6C 00 00 00 00
  $  REQ025:734 03 22 4F 6D 00 00 00 00       $  ANS025:73C 03 22 4F 6D 00 00 00 00
  $  REQ026:734 03 22 4F 6E 00 00 00 00       $  ANS026:73C 03 22 4F 6E 00 00 00 00
  $  REQ027:734 03 22 4F 6F 00 00 00 00       $  ANS027:73C 03 22 4F 6F 00 00 00 00
  $  REQ028:734 03 22 4F 70 00 00 00 00       $  ANS028:73C 03 22 4F 70 00 00 00 00
  $  REQ029:734 03 22 4F 71 00 00 00 00       $  ANS029:73C 03 22 4F 71 00 00 00 00
  $  REQ030:734 03 22 4F 72 00 00 00 00       $  ANS030:73C 03 22 4F 72 00 00 00 00
  $  REQ031:734 03 22 4F 73 00 00 00 00       $  ANS031:73C 03 22 4F 73 00 00 00 00
  $  REQ032:734 03 22 4F 74 00 00 00 00       $  ANS032:73C 03 22 4F 74 00 00 00 00
  $  REQ033:734 03 22 4F 75 00 00 00 00       $  ANS033:73C 03 22 4F 75 00 00 00 00
  $  REQ034:734 03 22 4F 76 00 00 00 00       $  ANS034:73C 03 22 4F 76 00 00 00 00
  $  REQ035:734 03 22 4F 77 00 00 00 00       $  ANS035:73C 03 22 4F 77 00 00 00 00
  $  REQ036:734 03 22 4F 78 00 00 00 00       $  ANS036:73C 03 22 4F 78 00 00 00 00
  $  REQ037:734 03 22 4F 79 00 00 00 00       $  ANS037:73C 03 22 4F 79 00 00 00 00
  $  REQ038:734 03 22 4F 7A 00 00 00 00       $  ANS038:73C 03 22 4F 7A 00 00 00 00
  $  REQ039:734 03 22 4F 7B 00 00 00 00       $  ANS039:73C 03 22 4F 7B 00 00 00 00
  $  REQ040:734 03 22 4F 53 00 00 00 00       $  ANS040:73C 03 22 4F 53 00 00 00 00

  $  000.蓄电池电压                                    $    $  V         $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.车速信号                                      $    $  km/h      $    $  ANS001.BYTE004  $  y=INT((x1*256+x2)*0.05625);
  $  002.开关故障状态信号                              $    $  /         $    $  ANS002.BYTE004  $  if(x1==0x00)y=@0dc2;else if(x1==0x01)y=@0dc3;else y=@0209;
  $  003.IPU(集成动力控制器)冷却液流量                 $    $  L/Min     $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.05;
  $  004.IPU(集成动力控制器)冷却液温度                 $    $  degC      $    $  ANS004.BYTE004  $  y=x-40;
  $  005.发动机冷却液温度                              $    $  degC      $    $  ANS005.BYTE004  $  y=x*0.75-36.8;
  $  006.DCDC(DC-DC转换控制器)温度                     $    $  degC      $    $  ANS006.BYTE004  $  y=x-40;
  $  007.A相瞬时电流                                   $    $  A         $    $  ANS007.BYTE004  $  y=(x1*256+x2)-753;
  $  008.B相瞬时电流                                   $    $  A         $    $  ANS008.BYTE004  $  y=(x1*256+x2)-753;
  $  009.C相瞬时电流                                   $    $  A         $    $  ANS009.BYTE004  $  y=(x1*256+x2)-753;
  $  010.半导体开关管状态                              $    $  /         $    $  ANS010.BYTE004  $  if(x1==0x0)y=@0dc4;else if(x1==0x2)y=@010f;else if(x1==0x3)y=@0dc5;else y=@0209;
  $  011.真实时间                                      $    $  /         $    $  ANS011.BYTE004  $  SPRINTF([%d%s%d%s%d%s%d%s%d%s%d%s],2000+x6,@0cca,x5,@0c93,x4,@0c94,x3,@0c95,x2,@0c96,x1,@09d5);
  $  012.DCDC(DC-DC转换控制器)高压端电流               $    $  A         $    $  ANS012.BYTE004  $  y=(x1*256+x2)-410;
  $  013.电机初始角度                                  $    $  deg       $    $  ANS013.BYTE004  $  if(x1>=0x80)y=(x1*256+x2-0x10000)*0.00549;else y=(x1*256+x2)*0.00549;
  $  014.高压电池电压                                  $    $  V         $    $  ANS014.BYTE004  $  y=x1*256+x2;
  $  015.电池电量                                      $    $  %         $    $  ANS015.BYTE004  $  y=(x1*256+x2)*0.1;
  $  016.电机本体温度                                  $    $  degC      $    $  ANS016.BYTE004  $  y=x-50;
  $  017.电机转速                                      $    $  rpm       $    $  ANS017.BYTE004  $  if(x1>0x80) y=x1*0x100+x2-65535;else y=x1*0x100+x2;
  $  018.电机温度采集1路                               $    $  degC      $    $  ANS018.BYTE004  $  y=x-40;
  $  019.电机温度采集2路                               $    $  degC      $    $  ANS019.BYTE004  $  y=x-40;
  $  020.实际扭矩                                      $    $  Nm        $    $  ANS020.BYTE004  $  y=(x1*256+x2)-1024;
  $  021.DCDC(DC-DC转换控制器)电气故障                 $    $  /         $    $  ANS021.BYTE004  $  if(x1==0x0)y=@01ac;else if(x1==0x1)y=@01b0;else y=@0209;
  $  022.VCU(整车控制器)扭矩请求指令                   $    $  Nm        $    $  ANS022.BYTE004  $  y=(x1*256+x2)-1024;
  $  023.电机控制器工作模式                            $    $  /         $    $  ANS023.BYTE004  $  if(x1==0x0)y=@0318;else if(x1==0x1)y=@0dc6;else if(x1==0x2)y=@0949;else if(x1==0x3)y=@094a;else if(x1==0x4)y=@094b;else if(x1==0x5)y=@0dc7;else if(x1==0x6)y=@0dc8;else if(x1==0x7)y=@01b0;else y=@0209;
  $  024.VCU(整车控制器)请求电机模式                   $    $  /         $    $  ANS024.BYTE004  $  if(x1==0x0)y=@0318;else if(x1==0x1)y=@0dc6;else if(x1==0x2)y=@0949;else if(x1==0x3)y=@094a;else if(x1==0x4)y=@094b;else if(x1==0x5)y=@0dc7;else if(x1==0x6)y=@0dc8;else if(x1==0x7)y=@01b0;else y=@0209;
  $  025.IPU(集成动力控制器)控制器温度                 $    $  degC      $    $  ANS025.BYTE004  $  y=x-50;
  $  026.三相电流有效值                                $    $  A         $    $  ANS026.BYTE004  $  y=(x1*256+x2)*0.625;
  $  027.请求扭矩                                      $    $  Nm        $    $  ANS027.BYTE004  $  y=(x1*256+x2)-1024;
  $  028.直流母线电流值                                $    $  A         $    $  ANS028.BYTE004  $  y=(x1*256+x2)*0.1-410;
  $  029.发动机转速                                    $    $  rpm       $    $  ANS029.BYTE004  $  y=INT((x1*256+x2)*0.25);
  $  030.电机转矩                                      $    $  Nm        $    $  ANS030.BYTE004  $  y=(x1*256+x2)-1024;
  $  031.电机扭矩形式请求                              $    $  /         $    $  ANS031.BYTE004  $  if(x1==0x0)y=@0dc9;else if(x1==0x1)y=@0dca;else if(x1==0x2)y=@0dcb;else if(x1==0x3)y=@0dcc;else y=@0209;
  $  032.TCU(自动变速器控制单元)请求电机目标转速       $    $  rpm       $    $  ANS032.BYTE004  $  y=(x1*256+x2)-16384;
  $  033.TCU(自动变速器控制单元)请求电机运行模式       $    $  /         $    $  ANS033.BYTE004  $  if(x1==0x0)y=@0430;else if(x1==0x1)y=@0dc6;else if(x1==0x2)y=@0949;else if(x1==0x3)y=@094a;else if(x1==0x4)y=@094b;else if(x1==0x5)y=@0dc7;else if(x1==0x6)y=@0dc8;else if(x1==0x7)y=@01b0;else y=@0209;
  $  034.DCDC(DC-DC转换控制器)输入功率限制             $    $  W         $    $  ANS034.BYTE004  $  y=(x1*256+x2)*20;
  $  035.电机功率最大限值                              $    $  W         $    $  ANS035.BYTE004  $  y=x1*256+x2;
  $  036.电机功率最小限值                              $    $  W         $    $  ANS036.BYTE004  $  y=(x1*256+x2)-511;
  $  037.DCDC(DC-DC转换控制器)输出电压                 $    $  V         $    $  ANS037.BYTE004  $  y=x1*0.1;
  $  038.DCDC(DC-DC转换控制器)输出电流                 $    $  A         $    $  ANS038.BYTE004  $  y=x;
  $  039.防盗失败原因                                  $    $  /         $    $  ANS039.BYTE004  $  switxh(x)00:y=@0dba;01:y=@0dbb;02:y=@0dbc;03:y=@0dbd;04:y=@0dbe;05:y=@0dbf;06:y=@0dc0;07:y=@0dc1;default:y=@0162;
  $  040.ESK写入状态                                   $    $  /         $    $  ANS040.BYTE004  $  switxh(x)01:y=@0db9;02:y=@06eb;default:y=@0132;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:734 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
