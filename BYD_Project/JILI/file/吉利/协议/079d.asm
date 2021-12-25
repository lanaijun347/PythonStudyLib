
    车型ID：079d

    模拟：协议模拟-->079d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E8

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 00 00 00 00 00 00       $!  ANS000:7E8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:7E0 03 19 02 09 00 00 00 00       $#  ANS000:7E8 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+(x3<<0); 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/5c000000


  $#  01.读故障码库
  $#  REQ000:7E0 02 19 0A 00 00 00 00 00       $#  ANS000:7E8 02 19 0A 00 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+(x3<<0); 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/5c000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 12 00 00 00 00       $%  ANS000:7E8 03 22 F1 12 00 00 00 00
  $%  REQ001:7E0 03 22 F1 87 00 00 00 00       $%  ANS001:7E8 03 22 F1 87 00 00 00 00
  $%  REQ002:7E0 03 22 F1 89 00 00 00 00       $%  ANS002:7E8 03 22 F1 89 00 00 00 00
  $%  REQ003:7E0 03 22 F1 8A 00 00 00 00       $%  ANS003:7E8 03 22 F1 8A 00 00 00 00
  $%  REQ004:7E0 03 22 F1 8B 00 00 00 00       $%  ANS004:7E8 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E0 03 22 F1 8C 00 00 00 00       $%  ANS005:7E8 03 22 F1 8C 00 00 00 00
  $%  REQ006:7E0 03 22 F1 90 00 00 00 00       $%  ANS006:7E8 03 22 F1 90 00 00 00 00
  $%  REQ007:7E0 03 22 F1 93 00 00 00 00       $%  ANS007:7E8 03 22 F1 93 00 00 00 00
  $%  REQ008:7E0 03 22 F1 95 00 00 00 00       $%  ANS008:7E8 03 22 F1 95 00 00 00 00
  $%  REQ009:7E0 03 22 F1 97 00 00 00 00       $%  ANS009:7E8 03 22 F1 97 00 00 00 00
  $%  REQ010:7E0 03 22 F1 98 00 00 00 00       $%  ANS010:7E8 03 22 F1 98 00 00 00 00
  $%  REQ011:7E0 03 22 F1 99 00 00 00 00       $%  ANS011:7E8 03 22 F1 99 00 00 00 00
  $%  REQ012:7E0 03 22 F1 9D 00 00 00 00       $%  ANS012:7E8 03 22 F1 9D 00 00 00 00
  $%  REQ013:7E0 03 22 02 00 00 00 00 00       $%  ANS013:7E8 03 22 02 00 00 00 00 00
  $%  REQ014:7E0 03 22 02 01 00 00 00 00       $%  ANS014:7E8 03 22 02 01 00 00 00 00

  $%  000:车辆名称:                                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                       $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                              $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                                   $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:ECU(电子控制器)生产日期:                      $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号(VIN码):                            $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                    $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                    $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)系统名称或发动机类型:          $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  010:ECU(电子控制器)刷写维修店代号或设备号:        $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  011:ECU(电子控制器)刷写日期:                      $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:ECU(电子控制器)安装日期:                      $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  013:ECU(电子控制器)成功刷写次数:                  $%    $%  ANS013.BYTE004  $%  y=x;
  $%  014:ECU(电子控制器)尝试刷写次数:                  $%    $%  ANS014.BYTE004  $%  y=x;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 01 04 00 00 00 00       $  ANS000:7E8 03 22 01 04 00 00 00 00
  $  REQ001:7E0 03 22 01 09 00 00 00 00       $  ANS001:7E8 03 22 01 09 00 00 00 00
  $  REQ002:7E0 03 22 01 0B 00 00 00 00       $  ANS002:7E8 03 22 01 0B 00 00 00 00
  $  REQ003:7E0 03 22 01 0D 00 00 00 00       $  ANS003:7E8 03 22 01 0D 00 00 00 00
  $  REQ004:7E0 03 22 01 0F 00 00 00 00       $  ANS004:7E8 03 22 01 0F 00 00 00 00
  $  REQ005:7E0 03 22 01 10 00 00 00 00       $  ANS005:7E8 03 22 01 10 00 00 00 00
  $  REQ006:7E0 03 22 01 11 00 00 00 00       $  ANS006:7E8 03 22 01 11 00 00 00 00
  $  REQ007:7E0 03 22 01 19 00 00 00 00       $  ANS007:7E8 03 22 01 19 00 00 00 00
  $  REQ008:7E0 03 22 01 20 00 00 00 00       $  ANS008:7E8 03 22 01 20 00 00 00 00
  $  REQ009:7E0 03 22 01 21 00 00 00 00       $  ANS009:7E8 03 22 01 21 00 00 00 00
  $  REQ010:7E0 03 22 01 25 00 00 00 00       $  ANS010:7E8 03 22 01 25 00 00 00 00
  $  REQ011:7E0 03 22 01 2C 00 00 00 00       $  ANS011:7E8 03 22 01 2C 00 00 00 00
  $  REQ012:7E0 03 22 01 2F 00 00 00 00       $  ANS012:7E8 03 22 01 2F 00 00 00 00
  $  REQ013:7E0 03 22 01 32 00 00 00 00       $  ANS013:7E8 03 22 01 32 00 00 00 00
  $  REQ014:7E0 03 22 01 36 00 00 00 00       $  ANS014:7E8 03 22 01 36 00 00 00 00
  $  REQ015:7E0 03 22 01 3A 00 00 00 00       $  ANS015:7E8 03 22 01 3A 00 00 00 00
  $  REQ016:7E0 03 22 01 3B 00 00 00 00       $  ANS016:7E8 03 22 01 3B 00 00 00 00
  $  REQ017:7E0 03 22 01 40 00 00 00 00       $  ANS017:7E8 03 22 01 40 00 00 00 00
  $  REQ018:7E0 03 22 01 42 00 00 00 00       $  ANS018:7E8 03 22 01 42 00 00 00 00
  $  REQ019:7E0 03 22 01 45 00 00 00 00       $  ANS019:7E8 03 22 01 45 00 00 00 00
  $  REQ020:7E0 03 22 01 47 00 00 00 00       $  ANS020:7E8 03 22 01 47 00 00 00 00
  $  REQ021:7E0 03 22 01 49 00 00 00 00       $  ANS021:7E8 03 22 01 49 00 00 00 00
  $  REQ022:7E0 03 22 01 52 00 00 00 00       $  ANS022:7E8 03 22 01 52 00 00 00 00
  $  REQ023:7E0 03 22 01 54 00 00 00 00       $  ANS023:7E8 03 22 01 54 00 00 00 00
  $  REQ024:7E0 03 22 01 56 00 00 00 00       $  ANS024:7E8 03 22 01 56 00 00 00 00
  $  REQ025:7E0 03 22 01 62 00 00 00 00       $  ANS025:7E8 03 22 01 62 00 00 00 00
  $  REQ026:7E0 03 22 01 63 00 00 00 00       $  ANS026:7E8 03 22 01 63 00 00 00 00
  $  REQ027:7E0 03 22 01 6D 00 00 00 00       $  ANS027:7E8 03 22 01 6D 00 00 00 00
  $  REQ028:7E0 03 22 01 6E 00 00 00 00       $  ANS028:7E8 03 22 01 6E 00 00 00 00
  $  REQ029:7E0 03 22 01 70 00 00 00 00       $  ANS029:7E8 03 22 01 70 00 00 00 00
  $  REQ030:7E0 03 22 01 71 00 00 00 00       $  ANS030:7E8 03 22 01 71 00 00 00 00
  $  REQ031:7E0 03 22 01 72 00 00 00 00       $  ANS031:7E8 03 22 01 72 00 00 00 00
  $  REQ032:7E0 03 22 01 73 00 00 00 00       $  ANS032:7E8 03 22 01 73 00 00 00 00
  $  REQ033:7E0 03 22 01 7D 00 00 00 00       $  ANS033:7E8 03 22 01 7D 00 00 00 00
  $  REQ034:7E0 03 22 01 7E 00 00 00 00       $  ANS034:7E8 03 22 01 7E 00 00 00 00
  $  REQ035:7E0 03 22 01 7F 00 00 00 00       $  ANS035:7E8 03 22 01 7F 00 00 00 00
  $  REQ036:7E0 03 22 01 80 00 00 00 00       $  ANS036:7E8 03 22 01 80 00 00 00 00
  $  REQ037:7E0 03 22 01 81 00 00 00 00       $  ANS037:7E8 03 22 01 81 00 00 00 00
  $  REQ038:7E0 03 22 01 82 00 00 00 00       $  ANS038:7E8 03 22 01 82 00 00 00 00
  $  REQ039:7E0 03 22 01 83 00 00 00 00       $  ANS039:7E8 03 22 01 83 00 00 00 00
  $  REQ040:7E0 03 22 01 91 00 00 00 00       $  ANS040:7E8 03 22 01 91 00 00 00 00
  $  REQ041:7E0 03 22 01 A0 00 00 00 00       $  ANS041:7E8 03 22 01 A0 00 00 00 00
  $  REQ042:7E0 03 22 01 A2 00 00 00 00       $  ANS042:7E8 03 22 01 A2 00 00 00 00
  $  REQ043:7E0 03 22 09 01 00 00 00 00       $  ANS043:7E8 03 22 09 01 00 00 00 00
  $  REQ044:7E0 03 22 09 0E 00 00 00 00       $  ANS044:7E8 03 22 09 0E 00 00 00 00
  $  REQ045:7E0 03 22 01 01 00 00 00 00       $  ANS045:7E8 03 22 01 01 00 00 00 00
  $  REQ046:7E0 03 22 02 02 00 00 00 00       $  ANS046:7E8 03 22 02 02 00 00 00 00
  $  REQ047:7E0 03 22 01 96 00 00 00 00       $  ANS047:7E8 03 22 01 96 00 00 00 00
  $  REQ048:7E0 03 22 01 97 00 00 00 00       $  ANS048:7E8 03 22 01 97 00 00 00 00

  $  000.发动机转速                                $    $  rpm         $    $  ANS000.BYTE004  $  y=INT((x1*0x100+x2)*0.25);
  $  001.环境压力                                  $    $  hPa         $    $  ANS001.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  002.节气门相对于机械下止点的开度角            $    $  %           $    $  ANS002.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.024414063;else y=((x1*0x100+x2)-0x10000)*0.024414063;
  $  003.进气温度                                  $    $  degC        $    $  ANS003.BYTE004  $  y=x1*0.75-48;
  $  004.节气门体上游进气压力                      $    $  hPa         $    $  ANS004.BYTE004  $  y=(x1*0x100+x2)*0.078125;
  $  005.加速踏板开度                              $    $  %           $    $  ANS005.BYTE004  $  y=(x1*0x100+x2)*0.001525879;
  $  006.燃油流量(ml/s)                            $    $  mL/s        $    $  ANS006.BYTE004  $  y=(x1*0x100+x2)*5.96046*0.0000001*1000;
  $  007.发动机最大指示扭矩                        $    $  Nm          $    $  ANS007.BYTE004  $  y=x1*10;
  $  008.进气流量                                  $    $  kg/h        $    $  ANS008.BYTE004  $  y=x1*4;
  $  009.催化器下游氧传感器输出电压                $    $  V           $    $  ANS009.BYTE004  $  y=(x1*0x100+x2)*0.004882813-1;
  $  010.相对充气量                                $    $  %           $    $  ANS010.BYTE004  $  y=x1*0.75;
  $  011.相对于机械下止点的目标节气门开度          $    $  %           $    $  ANS011.BYTE004  $  y=x1*0.392156863;
  $  012.发动机冷却液温度                          $    $  degC        $    $  ANS012.BYTE004  $  y=x1*0.75-48;
  $  013.当前档位                                  $    $  /           $    $  ANS013.BYTE004  $  if(x1==0) y=@02e3; else if((x>0) && (x<7)) y=@017a; else if(x==7) y=@017c; else y=@000b;
  $  014.实际点火角                                $    $  Grad KW     $    $  ANS014.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  015.节气门电位计1的位置信号                   $    $  %           $    $  ANS015.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.024414063;else y=((x1*0x100+x2)-0x10000)*0.024414063;
  $  016.节气门电位计2的位置信号                   $    $  %           $    $  ANS016.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.024414063;else y=((x1*0x100+x2)-0x10000)*0.024414063;
  $  017.机械下止点处的节气门电位计1电压信号       $    $  V           $    $  ANS017.BYTE004  $  y=x1*0.01953125;
  $  018.机械下止点处的节气门电位计2电压信号       $    $  V           $    $  ANS018.BYTE004  $  y=x1*0.01953125;
  $  019.进气歧管绝对压力                          $    $  hPa         $    $  ANS019.BYTE004  $  y=(x1*0x100+x2)*0.0390625;
  $  020.进气温度传感器原始值                      $    $  degC        $    $  ANS020.BYTE004  $  y=x1*0.75-48;
  $  021.电瓶电压(ADC扫描值)                       $    $  V           $    $  ANS021.BYTE004  $  y=(x1*0x100+x2)*0.02355;
  $  022.进气VVT(可变气门正时)相对角度             $    $  Grad KW     $    $  ANS022.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.0078125-256;else y=((x1*0x100+x2)-0x10000)*0.0078125-256;
  $  023.目标进气VVT(可变气门正时)角度             $    $  Grad KW     $    $  ANS023.BYTE004  $  if(x1<0x80)y=(x1*0x100+x2)*0.0078125-256;else y=((x1*0x100+x2)-0x10000)*0.0078125-256;
  $  024.机油温度                                  $    $  degC        $    $  ANS024.BYTE004  $  y=(x1*0x100+x2)*0.0234375-273;
  $  025.油门踏板电位计电压                        $    $  V           $    $  ANS025.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  026.油门踏板电位计2电压                       $    $  V           $    $  ANS026.BYTE004  $  y=(x1*0x100+x2)*0.0048828125;
  $  027.喷油脉宽                                  $    $  ms          $    $  ANS027.BYTE004  $  y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*0.001;
  $  028.目标怠速                                  $    $  rpm         $    $  ANS028.BYTE004  $  y=x1*10;
  $  029.1缸动态点火角推迟                         $    $  Grad KW     $    $  ANS029.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  030.2缸动态点火角推迟                         $    $  Grad KW     $    $  ANS030.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  031.3缸动态点火角推迟                         $    $  Grad KW     $    $  ANS031.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  032.4缸动态点火角推迟                         $    $  Grad KW     $    $  ANS032.BYTE004  $  if(x1<0x80)y=x1*0.75;else y=(x1-0x100)*0.75;
  $  033.碳罐阀流量                                $    $  kg/h        $    $  ANS033.BYTE004  $  y=(x1*0x100+x2)*0.000390625;
  $  034.基础点火角                                $    $  Grad KW     $    $  ANS034.BYTE004  $  if(x1<0x80)y=x1*95.25-96;else y=(x1-0x100)*95.25-96;
  $  035.失火率                                    $    $  /           $    $  ANS035.BYTE004  $  y=(x1*0x100+x2)*1;
  $  036.1缸失火次数                               $    $  /           $    $  ANS036.BYTE004  $  y=(x1*0x100+x2)*1;
  $  037.2缸失火次数                               $    $  /           $    $  ANS037.BYTE004  $  y=(x1*0x100+x2)*1;
  $  038.3缸失火次数                               $    $  /           $    $  ANS038.BYTE004  $  y=(x1*0x100+x2)*1;
  $  039.4缸失火次数                               $    $  /           $    $  ANS039.BYTE004  $  y=(x1*0x100+x2)*1;
  $  040.实际指示扭矩                              $    $  %           $    $  ANS040.BYTE004  $  y=(x1*0x100+x2)*0.00152587890625;
  $  041.氧传感器信号电压，第一组，传感器1         $    $  V           $    $  ANS041.BYTE004  $  y=(x1*0x100+x2)*0.004882813-1;
  $  042.进气歧管压力传感器信号电压                $    $  V           $    $  ANS042.BYTE004  $  y=(x1*0x100+x2)*0.004882813-1;
  $  043.油泵继电器状态                            $    $  /           $    $  ANS043.BYTE004  $  if(((x1>>0)&1))y=@0001;else y=@0000;
  $  044.空调离合器状态                            $    $  /           $    $  ANS044.BYTE004  $  if(((x1>>0)&1))y=@0001;else y=@0000;
  $  045.风扇实际输出占空比                        $    $  ％          $    $  ANS045.BYTE004  $  y=x1*0.390625;
  $  046.控制器防盗状态                            $    $  /           $    $  ANS046.BYTE004  $  if(x1==0x01)y=@0131;else if(x1==0x02)y=@06db;else y=@0132;
  $  047.发动机运行时间                            $    $  s           $    $  ANS047.BYTE004  $  y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*1;
  $  048.MIL(故障指示灯)故障后的行驶里程           $    $  km          $    $  ANS048.BYTE004  $  y=(x1*0x100+x2)*1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
