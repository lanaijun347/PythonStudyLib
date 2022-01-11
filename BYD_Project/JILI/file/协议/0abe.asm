
    车型ID：0abe

    模拟：协议模拟-->0abe

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7EC

进入命令:

  $~  REQ000:7E4 02 10 01 00 00 00 00 00       $~  ANS000:7EC 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E4 02 3E 00 00 00 00 00 00       $!  ANS000:7EC 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E4 03 19 02 09 00 00 00 00       $#  ANS000:7EC 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ad000000


  $#  01.读故障码库
  $#  REQ000:7E4 02 19 0A 00 00 00 00 00       $#  ANS000:7EC 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ad000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="0"/>
   </FUNCTION>
  <FUNCTION type="0" num="1">
     <param type="string" value="0"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E4 04 14 FF FF FF 00 00 00       $$  ANS000:7EC 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E4 03 22 F1 12 00 00 00 00       $%  ANS000:7EC 03 22 F1 12 00 00 00 00
  $%  REQ001:7E4 03 22 F1 80 00 00 00 00       $%  ANS001:7EC 03 22 F1 80 00 00 00 00
  $%  REQ002:7E4 03 22 F1 87 00 00 00 00       $%  ANS002:7EC 03 22 F1 87 00 00 00 00
  $%  REQ003:7E4 03 22 F1 8A 00 00 00 00       $%  ANS003:7EC 03 22 F1 8A 00 00 00 00
  $%  REQ004:7E4 03 22 F1 8B 00 00 00 00       $%  ANS004:7EC 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E4 03 22 F1 8C 00 00 00 00       $%  ANS005:7EC 03 22 F1 8C 00 00 00 00
  $%  REQ006:7E4 03 22 F1 90 00 00 00 00       $%  ANS006:7EC 03 22 F1 90 00 00 00 00
  $%  REQ007:7E4 03 22 F1 93 00 00 00 00       $%  ANS007:7EC 03 22 F1 93 00 00 00 00
  $%  REQ008:7E4 03 22 F1 95 00 00 00 00       $%  ANS008:7EC 03 22 F1 95 00 00 00 00
  $%  REQ009:7E4 03 22 F1 98 00 00 00 00       $%  ANS009:7EC 03 22 F1 98 00 00 00 00
  $%  REQ010:7E4 03 22 F1 99 00 00 00 00       $%  ANS010:7EC 03 22 F1 99 00 00 00 00
  $%  REQ011:7E4 03 22 F1 9D 00 00 00 00       $%  ANS011:7EC 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:引导程序软件识别号:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:零件号:                                      $%    $%  ANS002.BYTE004  $%  0 ASCII
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)刷写日期:                     $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:ECU(电子控制器)安装日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读数据流
  $  00.读数据流
  $  REQ000:7E4 03 22 DF 00 00 00 00 00       $  ANS000:7EC 03 22 DF 00 00 00 00 00
  $  REQ001:7E4 03 22 DF 01 00 00 00 00       $  ANS001:7EC 03 22 DF 01 00 00 00 00
  $  REQ002:7E4 03 22 30 00 00 00 00 00       $  ANS002:7EC 03 22 30 00 00 00 00 00
  $  REQ003:7E4 03 22 30 01 00 00 00 00       $  ANS003:7EC 03 22 30 01 00 00 00 00
  $  REQ004:7E4 03 22 30 02 00 00 00 00       $  ANS004:7EC 03 22 30 02 00 00 00 00
  $  REQ005:7E4 03 22 30 03 00 00 00 00       $  ANS005:7EC 03 22 30 03 00 00 00 00
  $  REQ006:7E4 03 22 30 04 00 00 00 00       $  ANS006:7EC 03 22 30 04 00 00 00 00
  $  REQ007:7E4 03 22 30 05 00 00 00 00       $  ANS007:7EC 03 22 30 05 00 00 00 00
  $  REQ008:7E4 03 22 30 06 00 00 00 00       $  ANS008:7EC 03 22 30 06 00 00 00 00
  $  REQ009:7E4 03 22 30 07 00 00 00 00       $  ANS009:7EC 03 22 30 07 00 00 00 00
  $  REQ010:7E4 03 22 30 08 00 00 00 00       $  ANS010:7EC 03 22 30 08 00 00 00 00
  $  REQ011:7E4 03 22 30 09 00 00 00 00       $  ANS011:7EC 03 22 30 09 00 00 00 00
  $  REQ012:7E4 03 22 30 0A 00 00 00 00       $  ANS012:7EC 03 22 30 0A 00 00 00 00
  $  REQ013:7E4 03 22 36 00 00 00 00 00       $  ANS013:7EC 03 22 36 00 00 00 00 00
  $  REQ014:7E4 03 22 36 01 00 00 00 00       $  ANS014:7EC 03 22 36 01 00 00 00 00
  $  REQ015:7E4 03 22 36 02 00 00 00 00       $  ANS015:7EC 03 22 36 02 00 00 00 00
  $  REQ016:7E4 03 22 36 03 00 00 00 00       $  ANS016:7EC 03 22 36 03 00 00 00 00
  $  REQ017:7E4 03 22 36 04 00 00 00 00       $  ANS017:7EC 03 22 36 04 00 00 00 00
  $  REQ018:7E4 03 22 36 05 00 00 00 00       $  ANS018:7EC 03 22 36 05 00 00 00 00
  $  REQ019:7E4 03 22 36 06 00 00 00 00       $  ANS019:7EC 03 22 36 06 00 00 00 00
  $  REQ020:7E4 03 22 36 07 00 00 00 00       $  ANS020:7EC 03 22 36 07 00 00 00 00
  $  REQ021:7E4 03 22 36 08 00 00 00 00       $  ANS021:7EC 03 22 36 08 00 00 00 00
  $  REQ022:7E4 03 22 FD 11 00 00 00 00       $  ANS022:7EC 03 22 FD 11 00 00 00 00

  $  000.ECU(电子控制器)供电电压                    $    $  V         $    $  ANS000.BYTE004  $  y=x*0.1;
  $  001.车速                                       $    $  km/h      $    $  ANS001.BYTE004  $  y=INT((x1*256+x2)*0.05625);
  $  002.加注状态                                   $    $  /         $    $  ANS002.BYTE004  $  switxh(x)0x00:y=@001f;0x01:y=@08a7;0x02:y=@08a8;0xFF:y=@0201; default:y=@000b;
  $  003.下线检测状态                               $    $  /         $    $  ANS003.BYTE004  $  switxh(x)0x00:y=@08a3;0x01:y=@08a4;0x02:y=@08a5;0xFF:y=@0201;  default:y=@000b;
  $  004.左前轮速                                   $    $  km/h      $    $  ANS004.BYTE004  $  if((x1*0x100+x2)==0xffff)y=@0132;else y=(x1*0x100+x2)*0.05625;
  $  005.右前轮速                                   $    $  km/h      $    $  ANS004.BYTE006  $  if((x1*0x100+x2)==0xffff)y=@0132;else y=(x1*0x100+x2)*0.05625;
  $  006.左后轮速                                   $    $  km/h      $    $  ANS004.BYTE008  $  if((x1*0x100+x2)==0xffff)y=@0132;else y=(x1*0x100+x2)*0.05625;
  $  007.右后轮速                                   $    $  km/h      $    $  ANS004.BYTE010  $  if((x1*0x100+x2)==0xffff)y=@0132;else y=(x1*0x100+x2)*0.05625;
  $  008.阀继电器状态                               $    $  /         $    $  ANS005.BYTE004  $  switxh(x)0x00:y=@0000;0x01:y=@0001;default:y=@0162;
  $  009.泵马达状态                                 $    $  /         $    $  ANS005.BYTE005  $  switxh(x)0x00:y=@0000;0x01:y=@0001;default:y=@0162;
  $  010.左前进气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>0)&1))y=@0001;else y=@0000;
  $  011.左前排气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>1)&1))y=@0001;else y=@0000;
  $  012.右前进气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>2)&1))y=@0001;else y=@0000;
  $  013.右前排气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>3)&1))y=@0001;else y=@0000;
  $  014.左后进气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>4)&1))y=@0001;else y=@0000;
  $  015.左后排气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>5)&1))y=@0001;else y=@0000;
  $  016.右后进气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>6)&1))y=@0001;else y=@0000;
  $  017.右后排气阀状态                             $    $  /         $    $  ANS005.BYTE006  $  if(((x>>7)&1))y=@0001;else y=@0000;
  $  018.回路控制阀1状态(仅ESP(电控稳定系统))       $    $  /         $    $  ANS005.BYTE007  $  if(((x>>0)&1))y=@0001;else y=@0000;
  $  019.回路控制阀2状态(仅ESP(电控稳定系统))       $    $  /         $    $  ANS005.BYTE007  $  if(((x>>1)&1))y=@0001;else y=@0000;
  $  020.高压开关阀1状态(仅ESP(电控稳定系统))       $    $  /         $    $  ANS005.BYTE007  $  if(((x>>2)&1))y=@0001;else y=@0000;
  $  021.高压开关阀2状态(仅ESP(电控稳定系统))       $    $  /         $    $  ANS005.BYTE007  $  if(((x>>3)&1))y=@0001;else y=@0000;
  $  022.刹车灯开关                                 $    $  /         $    $  ANS006.BYTE004  $  switxh(x)0x00:y=@0000;0x01:y=@0001;default:y=@0162;
  $  023.主缸压力                                   $    $  bar       $    $  ANS007.BYTE004  $  if((x1*0x100+x2)<0x7FFF)y=(x1*0x100+x2)*0.0153;else if((x1*0x100+x2)>0x7FFF) y=((x1*0x100+x2)-0x10000)*0.0153;else y=@0132;
  $  024.转向角                                     $    $  deg       $    $  ANS008.BYTE004  $  if((x1*0x100+x2)<0x7FFF)y=(x1*0x100+x2)*0.1;else if((x1*0x100+x2)>0x7FFF) y=((x1*0x100+x2)-0x10000)*0.1;else y=@0132;
  $  025.横摆角                                     $    $  rad/s     $    $  ANS009.BYTE004  $  if((x1*0x100+x2)<0x7FFF)y=(x1*0x100+x2)*0.00213;else if((x1*0x100+x2)>0x7FFF) y=((x1*0x100+x2)-0x10000)*0.00213;else y=@0132;
  $  026.横向加速度                                 $    $  m/s^2     $    $  ANS010.BYTE004  $  if((x1*0x100+x2)<0x7FFF)y=(x1*0x100+x2)*0.02712;else if((x1*0x100+x2)>0x7FFF) y=((x1*0x100+x2)-0x10000)*0.02712;else y=@0132;
  $  027.纵向加速度                                 $    $  m/s^2     $    $  ANS011.BYTE004  $  if((x1*0x100+x2)<0x7FFF)y=(x1*0x100+x2)*0.02712;else if((x1*0x100+x2)>0x7FFF) y=((x1*0x100+x2)-0x10000)*0.02712;else y=@0132;
  $  028.电子驻车状态                               $    $  /         $    $  ANS012.BYTE004  $  switxh(x)0x00:y=@0018;0x01:y=@0019;0x02:y=@0f0c;default:y=@0209;
  $  029.左刹车温度                                 $    $  degC      $    $  ANS013.BYTE004  $  if(x<0x80)y=(x1*0x100+x2)*1;else y=((x1*0x100+x2)-0x10000)*1;
  $  030.右刹车温度                                 $    $  degC      $    $  ANS014.BYTE004  $  if(x<0x80)y=(x1*0x100+x2)*1;else y=((x1*0x100+x2)-0x10000)*1;
  $  031.左刹驱动次数                               $    $  /         $    $  ANS015.BYTE004  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  032.右刹驱动次数                               $    $  /         $    $  ANS016.BYTE004  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  033.左卡钳夹紧力                               $    $  N         $    $  ANS017.BYTE004  $  y=x1*0x100+x2;
  $  034.右卡钳夹紧力                               $    $  N         $    $  ANS018.BYTE004  $  y=x1*0x100+x2;
  $  035.读取PBC(电子驻车夹紧电机)软件版本号        $    $  /         $    $  ANS019.BYTE004  $  y=ASCII(x1,x2,x3,x4,x5,x6);
  $  036.读取左执行机构当前状态                     $    $  /         $    $  ANS020.BYTE004  $  if(x==0x00) y=@09cc; else if(x==0x01) y=@09cd; else if(x==0x02) y=@08ed; else if(x==0x03) y=@025e; else if(x==0x04) y=@0404; else if(x==0x05) y=@09ce; else if(x==0x06) y=@09cf; else y=@0220;
  $  037.读取右执行机构当前状态                     $    $  /         $    $  ANS021.BYTE004  $  if(x==0x00) y=@09cc; else if(x==0x01) y=@09cd; else if(x==0x02) y=@08ed; else if(x==0x03) y=@025e; else if(x==0x04) y=@0404; else if(x==0x05) y=@09ce; else if(x==0x06) y=@09cf; else y=@0220;
  $  038.TPMS(胎压监视系统)系统可用状态             $    $  /         $    $  ANS022.BYTE004  $  if(x==0x01) y=@09d0;else if(x==0x00) y=@09d1;else y=@0220;

  $)  01.TPMS(胎压监测系统)基本信息
  $  01.TPMS(胎压监测系统)基本信息
  $  REQ000:7E4 03 22 FD 10 00 00 00 00       $  ANS000:7EC 03 22 FD 10 00 00 00 00

  $  000.最后第一次自学习里程数               $    $  km     $    $  ANS000.BYTE004  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  001.最后第二次自学习里程数               $    $  km     $    $  ANS000.BYTE008  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  002.最后第三次自学习里程数               $    $  km     $    $  ANS000.BYTE012  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  003.最后第四次自学习里程数               $    $  km     $    $  ANS000.BYTE016  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  004.最后第一次欠压报警里程数             $    $  km     $    $  ANS000.BYTE020  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  005.最后第二次欠压报警里程数             $    $  km     $    $  ANS000.BYTE024  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  006.最后第三次欠压报警里程数             $    $  km     $    $  ANS000.BYTE028  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  007.最后第四次欠压报警里程数             $    $  km     $    $  ANS000.BYTE032  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  008.最后第一次欠压报警诊断数据           $    $  /      $    $  ANS000.BYTE036  $  y=HEX(x1,x2,x3,x4);
  $  009.最后第二次欠压报警诊断数据           $    $  /      $    $  ANS000.BYTE040  $  y=HEX(x1,x2,x3,x4);
  $  010.最后第三次欠压报警诊断数据           $    $  /      $    $  ANS000.BYTE044  $  y=HEX(x1,x2,x3,x4);
  $  011.最后第四次欠压报警诊断数据           $    $  /      $    $  ANS000.BYTE048  $  y=HEX(x1,x2,x3,x4);
  $  012.左前轮穿刺指示                       $    $  /      $    $  ANS000.BYTE052  $  y=x;
  $  013.右前轮穿刺指示                       $    $  /      $    $  ANS000.BYTE053  $  y=x;
  $  014.左后轮穿刺指示                       $    $  /      $    $  ANS000.BYTE054  $  y=x;
  $  015.右后轮穿刺指示                       $    $  /      $    $  ANS000.BYTE055  $  y=x;
  $  016.左前轮慢漏气指示                     $    $  /      $    $  ANS000.BYTE056  $  y=x;
  $  017.右前轮慢漏气指示                     $    $  /      $    $  ANS000.BYTE057  $  y=x;
  $  018.左后轮慢漏气指示                     $    $  /      $    $  ANS000.BYTE058  $  y=x;
  $  019.右后轮慢漏气指示                     $    $  /      $    $  ANS000.BYTE059  $  y=x;
  $  020.胎压监测报警状态                     $    $  /      $    $  ANS000.BYTE060  $  if(x==0x01) y=@0891;else if(x==0x00) y=@010f;else y=@0220;
  $  021.低速标定完成状态                     $    $  %      $    $  ANS000.BYTE061  $  y=x*100/255;
  $  022.高速标定完成状态                     $    $  %      $    $  ANS000.BYTE062  $  y=x*100/255;
  $  023.TPMS(胎压监视系统)软件版本号         $    $  /      $    $  ANS000.BYTE063  $  y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $  024.TPMS(胎压监视系统)内部数据状态       $    $  /      $    $  ANS000.BYTE071  $  y=HEX(x1,x2);
  $  025.10 - 40 kph行驶时间                  $    $  /      $    $  ANS000.BYTE073  $  y=SPRINTF([%2d %s,%2d %s,%2d %s,%2d %s],x1,@09d2,x2,@09d3,x3,@09d4,x4,@09d5);
  $  026.40 - 60 kph行驶时间                  $    $  /      $    $  ANS000.BYTE077  $  y=SPRINTF([%2d %s,%2d %s,%2d %s,%2d %s],x1,@09d2,x2,@09d3,x3,@09d4,x4,@09d5);
  $  027.60 - 80 kph行驶时间                  $    $  /      $    $  ANS000.BYTE081  $  y=SPRINTF([%2d %s,%2d %s,%2d %s,%2d %s],x1,@09d2,x2,@09d3,x3,@09d4,x4,@09d5);
  $  028.80 - 100  kph行驶时间                $    $  /      $    $  ANS000.BYTE085  $  y=SPRINTF([%2d %s,%2d %s,%2d %s,%2d %s],x1,@09d2,x2,@09d3,x3,@09d4,x4,@09d5);
  $  029.100 - 120 kph行驶时间                $    $  /      $    $  ANS000.BYTE089  $  y=SPRINTF([%2d %s,%2d %s,%2d %s,%2d %s],x1,@09d2,x2,@09d3,x3,@09d4,x4,@09d5);
  $  030.> 120 kph行驶时间                    $    $  /      $    $  ANS000.BYTE093  $  y=SPRINTF([%2d %s,%2d %s,%2d %s,%2d %s],x1,@09d2,x2,@09d3,x3,@09d4,x4,@09d5);
  $  031.WRA低可用计数                        $    $  s      $    $  ANS000.BYTE097  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  032.WSA低可用计数                        $    $  s      $    $  ANS000.BYTE101  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  033.WRA学习状态                          $    $  %      $    $  ANS000.BYTE105  $  y=x*100/255;
  $  034.WSA学习状态                          $    $  %      $    $  ANS000.BYTE106  $  y=x*100/255;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E4 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7E4 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
