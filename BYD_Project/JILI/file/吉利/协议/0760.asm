
    车型ID：0760

    模拟：协议模拟-->0760

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
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/50000000


  $#  01.读故障码库
  $#  REQ000:7E0 02 19 0A 00 00 00 00 00       $#  ANS000:7E8 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/50000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 12 00 00 00 00       $%  ANS000:7E8 03 22 F1 12 00 00 00 00
  $%  REQ001:7E0 03 22 F1 87 00 00 00 00       $%  ANS001:7E8 03 22 F1 87 00 00 00 00
  $%  REQ002:7E0 03 22 F1 8A 00 00 00 00       $%  ANS002:7E8 03 22 F1 8A 00 00 00 00
  $%  REQ003:7E0 03 22 F1 8B 00 00 00 00       $%  ANS003:7E8 03 22 F1 8B 00 00 00 00
  $%  REQ004:7E0 03 22 F1 90 00 00 00 00       $%  ANS004:7E8 03 22 F1 90 00 00 00 00
  $%  REQ005:7E0 03 22 F1 93 00 00 00 00       $%  ANS005:7E8 03 22 F1 93 00 00 00 00
  $%  REQ006:7E0 03 22 F1 95 00 00 00 00       $%  ANS006:7E8 03 22 F1 95 00 00 00 00

  $%  000:车辆名称:                         $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                           $%    $%  ANS001.BYTE004  $%  0 ASCII
  $%  002:供应商代码:                       $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:ECU(电子控制器)生产日期:          $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:车辆识别号(VIN码):                $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  005:ECU(电子控制器)硬件版本号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:ECU(电子控制器)软件版本号:        $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 01 04 00 00 00 00       $  ANS000:7E8 03 22 01 04 00 00 00 00
  $  REQ001:7E0 03 22 01 06 00 00 00 00       $  ANS001:7E8 03 22 01 06 00 00 00 00
  $  REQ002:7E0 03 22 01 09 00 00 00 00       $  ANS002:7E8 03 22 01 09 00 00 00 00
  $  REQ003:7E0 03 22 01 0D 00 00 00 00       $  ANS003:7E8 03 22 01 0D 00 00 00 00
  $  REQ004:7E0 03 22 01 10 00 00 00 00       $  ANS004:7E8 03 22 01 10 00 00 00 00
  $  REQ005:7E0 03 22 01 11 00 00 00 00       $  ANS005:7E8 03 22 01 11 00 00 00 00
  $  REQ006:7E0 03 22 01 19 00 00 00 00       $  ANS006:7E8 03 22 01 19 00 00 00 00
  $  REQ007:7E0 03 22 01 20 00 00 00 00       $  ANS007:7E8 03 22 01 20 00 00 00 00
  $  REQ008:7E0 03 22 01 21 00 00 00 00       $  ANS008:7E8 03 22 01 21 00 00 00 00
  $  REQ009:7E0 03 22 01 2F 00 00 00 00       $  ANS009:7E8 03 22 01 2F 00 00 00 00
  $  REQ010:7E0 03 22 01 32 00 00 00 00       $  ANS010:7E8 03 22 01 32 00 00 00 00
  $  REQ011:7E0 03 22 01 36 00 00 00 00       $  ANS011:7E8 03 22 01 36 00 00 00 00
  $  REQ012:7E0 03 22 01 49 00 00 00 00       $  ANS012:7E8 03 22 01 49 00 00 00 00
  $  REQ013:7E0 03 22 01 56 00 00 00 00       $  ANS013:7E8 03 22 01 56 00 00 00 00
  $  REQ014:7E0 03 22 01 62 00 00 00 00       $  ANS014:7E8 03 22 01 62 00 00 00 00
  $  REQ015:7E0 03 22 01 63 00 00 00 00       $  ANS015:7E8 03 22 01 63 00 00 00 00
  $  REQ016:7E0 03 22 01 6D 00 00 00 00       $  ANS016:7E8 03 22 01 6D 00 00 00 00
  $  REQ017:7E0 03 22 01 6E 00 00 00 00       $  ANS017:7E8 03 22 01 6E 00 00 00 00
  $  REQ018:7E0 03 22 01 70 00 00 00 00       $  ANS018:7E8 03 22 01 70 00 00 00 00
  $  REQ019:7E0 03 22 01 71 00 00 00 00       $  ANS019:7E8 03 22 01 71 00 00 00 00
  $  REQ020:7E0 03 22 01 72 00 00 00 00       $  ANS020:7E8 03 22 01 72 00 00 00 00
  $  REQ021:7E0 03 22 01 73 00 00 00 00       $  ANS021:7E8 03 22 01 73 00 00 00 00
  $  REQ022:7E0 03 22 01 7D 00 00 00 00       $  ANS022:7E8 03 22 01 7D 00 00 00 00
  $  REQ023:7E0 03 22 01 7E 00 00 00 00       $  ANS023:7E8 03 22 01 7E 00 00 00 00
  $  REQ024:7E0 03 22 01 7F 00 00 00 00       $  ANS024:7E8 03 22 01 7F 00 00 00 00
  $  REQ025:7E0 03 22 01 91 00 00 00 00       $  ANS025:7E8 03 22 01 91 00 00 00 00
  $  REQ026:7E0 03 22 02 02 00 00 00 00       $  ANS026:7E8 03 22 02 02 00 00 00 00
  $  REQ027:7E0 03 22 01 96 00 00 00 00       $  ANS027:7E8 03 22 01 96 00 00 00 00
  $  REQ028:7E0 03 22 01 97 00 00 00 00       $  ANS028:7E8 03 22 01 97 00 00 00 00

  $  000.发动机转速                            $    $  rpm         $    $  ANS000.BYTE004  $  y=INT((x1*256+x2)*0.25);
  $  001.油位                                  $    $  L           $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.1;
  $  002.环境压力                              $    $  hPa         $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.0390625;
  $  003.进气温度                              $    $  degC        $    $  ANS003.BYTE004  $  y=(x1)*0.75-48;
  $  004.加速踏板开度                          $    $  %PED        $    $  ANS004.BYTE004  $  y=(x1*256+x2)*0.00152587890625;
  $  005.燃油流量(ml/s)                        $    $  ml/s        $    $  ANS005.BYTE004  $  y=(x1*256+x2)/10000*5.96046;
  $  006.发动机最大指示扭矩                    $    $  Nm          $    $  ANS006.BYTE004  $  y=(x1)*10+30;
  $  007.进气流量                              $    $  kg/h        $    $  ANS007.BYTE004  $  y=(x1)*4;
  $  008.催化器下游氧传感器输出电压            $    $  V           $    $  ANS008.BYTE004  $  y=(x1*256+x2)*0.004882813-1;
  $  009.发动机冷却液温度                      $    $  degC        $    $  ANS009.BYTE004  $  y=(x1)*0.75-48;
  $  010.当前档位                              $    $  /           $    $  ANS010.BYTE004  $  if(x==0) y=@02e3; else if(x>0 && x<7) y=@017a; else if(x==7) y=@017c; else y=@0168;
  $  011.实际点火角                            $    $  Grad KW     $    $  ANS011.BYTE004  $  y=(x1)*0.75-96;
  $  012.电瓶电压(ADC扫描值)                   $    $  V           $    $  ANS012.BYTE004  $  y=(x1*256+x2)*0.02355;
  $  013.机油温度                              $    $  degC        $    $  ANS013.BYTE004  $  y=(x1*256+x2)*0.0234375-273.15;
  $  014.油门踏板电位计电压                    $    $  V           $    $  ANS014.BYTE004  $  y=(x1*256+x2)*0.0048828125;
  $  015.油门踏板电位计2电压                   $    $  V           $    $  ANS015.BYTE004  $  y=(x1*256+x2)*0.0048828125;
  $  016.喷油脉宽                              $    $  ms          $    $  ANS016.BYTE004  $  y=((x1<<24)+(x2<<16)+(x3<<8)+x4)*0.001;
  $  017.目标怠速                              $    $  rpm         $    $  ANS017.BYTE004  $  y=(x1)*10;
  $  018.1缸动态点火角推迟                     $    $  Grad KW     $    $  ANS018.BYTE004  $  y=(x1)*0.75-96;
  $  019.2缸动态点火角推迟                     $    $  Grad KW     $    $  ANS019.BYTE004  $  y=(x1)*0.75-96;
  $  020.3缸动态点火角推迟                     $    $  Grad KW     $    $  ANS020.BYTE004  $  y=(x1)*0.75-96;
  $  021.4缸动态点火角推迟                     $    $  Grad KW     $    $  ANS021.BYTE004  $  y=(x1)*0.75-96;
  $  022.碳罐阀流量                            $    $  kg/h        $    $  ANS022.BYTE004  $  y=(x1*256+x2)*0.000390625;
  $  023.基础点火角                            $    $  Grad KW     $    $  ANS023.BYTE004  $  y=(x1)*0.75-96;
  $  024.失火率                                $    $  /           $    $  ANS024.BYTE004  $  y=(x1*256+x2);
  $  025.实际指示扭矩                          $    $  %           $    $  ANS025.BYTE004  $  y=(x1*256+x2)*0.00152587890625;
  $  026.控制器防盗状态                        $    $  /           $    $  ANS026.BYTE004  $  if(x==1) y=@0131; else if(x==2) y=@03bf; else y=@03c0;
  $  027.发动机运行时间                        $    $  s           $    $  ANS027.BYTE004  $  y=((x1<<24)+(x2<<16)+(x3<<8)+x4);
  $  028.MIL(故障指示灯)故障后的行驶里程       $    $  km          $    $  ANS028.BYTE004  $  y=(x1*256+x2);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
