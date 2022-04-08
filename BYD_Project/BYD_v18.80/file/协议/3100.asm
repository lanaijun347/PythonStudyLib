
    车型ID：3100

    模拟：协议模拟-->3100

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~78A

进入命令:

  $~  REQ000:782 02 10 01 00 00 00 00 00       $~  ANS000:78A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:782 02 3E 80 00 00 00 00 00       $!  ANS000:78A 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:782 03 19 02 09 00 00 00 00       $#  ANS000:78A 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/03000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:782 04 14 FF FF FF 00 00 00       $$  ANS000:78A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:782 03 22 F1 93 00 00 00 00       $%  ANS000:78A 03 22 F1 93 00 00 00 00
  $%  REQ001:782 03 22 F1 94 00 00 00 00       $%  ANS001:78A 03 22 F1 94 00 00 00 00
  $%  REQ002:782 03 22 F1 95 00 00 00 00       $%  ANS002:78A 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],(x1%1000-x1%100)/100,(x1%100-x1%10)/10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02X%02X%02X%02X%02X%02X%02X%02X%02X],x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%d%d.%d%d],((x1*256+x2)%100000-(x1*256+x2)%10000)/10000,((x1*256+x2)%10000-(x1*256+x2)%1000)/1000,((x1*256+x2)%1000-(x1*256+x2)%100)/100,((x1*256+x2)%100-(x1*256+x2)%10)/10,(x1*256+x2)%10);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:782 03 22 20 01 00 00 00 00       $  ANS000:78A 03 22 20 01 00 00 00 00
  $  REQ001:782 03 22 20 02 00 00 00 00       $  ANS001:78A 03 22 20 02 00 00 00 00
  $  REQ002:782 03 22 20 03 00 00 00 00       $  ANS002:78A 03 22 20 03 00 00 00 00
  $  REQ003:782 03 22 20 04 00 00 00 00       $  ANS003:78A 03 22 20 04 00 00 00 00
  $  REQ004:782 03 22 20 05 00 00 00 00       $  ANS004:78A 03 22 20 05 00 00 00 00
  $  REQ005:782 03 22 20 43 00 00 00 00       $  ANS005:78A 03 22 20 43 00 00 00 00
  $  REQ006:782 03 22 21 00 00 00 00 00       $  ANS006:78A 03 22 21 00 00 00 00 00
  $  REQ007:782 03 22 FD 00 00 00 00 00       $  ANS007:78A 03 22 FD 00 00 00 00 00
  $  REQ008:782 03 22 FD 03 00 00 00 00       $  ANS008:78A 03 22 FD 03 00 00 00 00
  $  REQ009:782 03 22 FD 10 00 00 00 00       $  ANS009:78A 03 22 FD 10 00 00 00 00

  $  000.左前轮速                                 $    $  km/h      $    $  ANS000.BYTE004  $  y=SPRINTF([%d],(x1*256+x2)*0.06875);
  $  001.右前轮速                                 $    $  km/h      $    $  ANS000.BYTE006  $  y=SPRINTF([%d],(x1*256+x2)*0.06875);
  $  002.左后轮速                                 $    $  km/h      $    $  ANS000.BYTE008  $  y=SPRINTF([%d],(x1*256+x2)*0.06875);
  $  003.右后轮速                                 $    $  km/h      $    $  ANS000.BYTE010  $  y=SPRINTF([%d],(x1*256+x2)*0.06875);
  $  004.阀继电器电压(UVR)                        $    $  V         $    $  ANS001.BYTE004  $  y=SPRINTF([%.1f],x1*0.08);
  $  005.μC供电电压                              $    $  V         $    $  ANS001.BYTE005  $  y=SPRINTF([%.1f],x1*0.08);
  $  006.点火循环次数                             $    $            $    $  ANS001.BYTE006  $  y=(x1*256+x2);
  $  007.制动踏板状态                             $    $            $    $  ANS002.BYTE004  $  if(x1&0x01) y=@0003;else y=@0004;
  $  008.阀继电器状态                             $    $            $    $  ANS002.BYTE004  $  if(x1&0x20) y=@0001;else y=@0000;
  $  009.左前进气阀                               $    $            $    $  ANS002.BYTE005  $  if(x1&0x01) y=@000e;else y=@000f;
  $  010.左前出气阀                               $    $            $    $  ANS002.BYTE005  $  if(x1&0x02) y=@000e;else y=@000f;
  $  011.右前进气阀                               $    $            $    $  ANS002.BYTE005  $  if(x1&0x04) y=@000e;else y=@000f;
  $  012.右前出气阀                               $    $            $    $  ANS002.BYTE005  $  if(x1&0x08) y=@000e;else y=@000f;
  $  013.左后进气阀                               $    $            $    $  ANS002.BYTE005  $  if(x1&0x10) y=@000e;else y=@000f;
  $  014.左后出气阀                               $    $            $    $  ANS002.BYTE005  $  if(x1&0x20) y=@000e;else y=@000f;
  $  015.右后进气阀                               $    $            $    $  ANS002.BYTE005  $  if(x1&0x40) y=@000e;else y=@000f;
  $  016.右后出气阀                               $    $            $    $  ANS002.BYTE005  $  if(x1&0x80) y=@000e;else y=@000f;
  $  017.USV(转换阀)1                             $    $            $    $  ANS002.BYTE006  $  if(x1&0x01) y=@000e;else y=@000f;
  $  018.USV(转换阀)2                             $    $            $    $  ANS002.BYTE006  $  if(x1&0x02) y=@000e;else y=@000f;
  $  019.HSV(高压开关阀)1                         $    $            $    $  ANS002.BYTE006  $  if(x1&0x04) y=@000e;else y=@000f;
  $  020.HSV(高压开关阀)2                         $    $            $    $  ANS002.BYTE006  $  if(x1&0x08) y=@000e;else y=@000f;
  $  021.泵电机继电器状态                         $    $            $    $  ANS002.BYTE006  $  if(x1&0x40) y=@0001;else y=@0000;
  $  022.加注状态                                 $    $            $    $  ANS003.BYTE004  $  switxh(x1)0x00: y=@0014;0xAA: y=@04ff;0xEE: y=@0500;default: y=@010e;
  $  023.下线检测状态                             $    $            $    $  ANS004.BYTE004  $  switxh(x1)0x00: y=@0010;0xAA: y=@0501;0xEE: y=@0502;default: y=@0013;
  $  024.速度限制监视器                           $    $            $    $  ANS005.BYTE004  $  switxh(x1)0x00: y=@05ad;0x01: y=@0358;default: y=@0013;
  $  025.车辆配置                                 $    $            $    $  ANS006.BYTE004  $  HEX(x1,x2,x3,x4,x5,x6,x7,x8);
  $  026.车速                                     $    $            $    $  ANS007.BYTE004  $  y=SPRINTF([%d],(x1*256+x2)*0.06875);
  $  027.主缸压力                                 $    $  bar       $    $  ANS008.BYTE004  $  if(x1<0x80) y=SPRINTF([%.1f],(x1*256+x2)*0.0153);else y=SPRINTF([%.1f],((x1-256)*256+x2)*0.0153);
  $  028.转向角                                   $    $  °        $    $  ANS008.BYTE006  $  if(x1<0x80) y=SPRINTF([%.2f],(x1*256+x2)*0.1);else y=SPRINTF([%.2f],((x1-256)*256+x2)*0.1);
  $  029.偏航率                                   $    $  rad/s     $    $  ANS008.BYTE008  $  if(x1<0x80) y=SPRINTF([%.3f],(x1*256+x2)*0.00213);else y=SPRINTF([%.3f],((x1-256)*256+x2)*0.00213);
  $  030.横向加速度                               $    $  m/s^2     $    $  ANS008.BYTE010  $  if(x1<0x80) y=SPRINTF([%.3f],(x1*256+x2)*0.02712);else y=SPRINTF([%.3f],((x1-256)*256+x2)*0.02712);
  $  031.纵向加速度                               $    $  m/s^2     $    $  ANS008.BYTE012  $  if(x1<0x80) y=SPRINTF([%.3f],(x1*256+x2)*0.02712);else y=SPRINTF([%.3f],((x1-256)*256+x2)*0.02712);
  $  032.最近第一次胎压复位里程记录               $    $  km        $    $  ANS009.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  033.最近第二次胎压复位里程记录               $    $  km        $    $  ANS009.BYTE008  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  034.最近第三次胎压复位里程记录               $    $  km        $    $  ANS009.BYTE012  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  035.最近第四次胎压复位里程记录               $    $  km        $    $  ANS009.BYTE016  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  036.最近第一次胎压报警里程记录               $    $  km        $    $  ANS009.BYTE020  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  037.最近第二次胎压报警里程记录               $    $  km        $    $  ANS009.BYTE024  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  038.最近第三次胎压报警里程记录               $    $  km        $    $  ANS009.BYTE028  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  039.最近第四次胎压报警里程记录               $    $  km        $    $  ANS009.BYTE032  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  040.最近第一次压力警告时的诊断数据列表       $    $            $    $  ANS009.BYTE036  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  041.最近第二次压力警告时的诊断数据列表       $    $            $    $  ANS009.BYTE040  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  042.最近第三次压力警告时的诊断数据列表       $    $            $    $  ANS009.BYTE044  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  043.最近第四次压力警告时的诊断数据列表       $    $            $    $  ANS009.BYTE048  $  y=(x1*256*256*256+x2*256*256+x3*256+x4);
  $  044.左前轮穿刺指示器数据                     $    $            $    $  ANS009.BYTE052  $  y=x1;
  $  045.右前轮穿刺指示器数据                     $    $            $    $  ANS009.BYTE053  $  y=x1;
  $  046.左后轮穿刺指示器数据                     $    $            $    $  ANS009.BYTE054  $  y=x1;
  $  047.右后轮穿刺指示器数据                     $    $            $    $  ANS009.BYTE055  $  y=x1;
  $  048.左前轮慢撒气指示器数据                   $    $            $    $  ANS009.BYTE056  $  y=x1;
  $  049.左后轮慢撒气指示器数据                   $    $            $    $  ANS009.BYTE057  $  y=x1;
  $  050.右前轮慢撒气指示器数据                   $    $            $    $  ANS009.BYTE058  $  y=x1;
  $  051.右后轮慢撒气指示器数据                   $    $            $    $  ANS009.BYTE059  $  y=x1;
  $  052.TPMS警告状态                             $    $            $    $  ANS009.BYTE060  $  y=x1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:782 30 08 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
