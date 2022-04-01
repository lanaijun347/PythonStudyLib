
    车型ID：0007

    模拟：协议模拟-->0007

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~7E9

进入命令:

  $~  REQ000:7E1 02 10 01 00 00 00 00 00       $~  ANS000:7E9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E1 02 3E 00 00 00 00 00 00       $!  ANS000:7E9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E1 03 19 02 09 00 00 00 00       $#  ANS000:7E9 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/06000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E1 04 14 FF FF FF 00 00 00       $$  ANS000:7E9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E1 03 22 F1 87 00 00 00 00       $%  ANS000:7E9 03 22 F1 87 00 00 00 00
  $%  REQ001:7E1 03 22 F1 8A 00 00 00 00       $%  ANS001:7E9 03 22 F1 8A 00 00 00 00
  $%  REQ002:7E1 03 22 F1 93 00 00 00 00       $%  ANS002:7E9 03 22 F1 93 00 00 00 00
  $%  REQ003:7E1 03 22 F1 95 00 00 00 00       $%  ANS003:7E9 03 22 F1 95 00 00 00 00
  $%  REQ004:7E1 03 22 F1 9D 00 00 00 00       $%  ANS004:7E9 03 22 F1 9D 00 00 00 00
  $%  REQ005:7E1 03 22 F1 8B 00 00 00 00       $%  ANS005:7E9 03 22 F1 8B 00 00 00 00
  $%  REQ006:7E1 03 22 F1 90 00 00 00 00       $%  ANS006:7E9 03 22 F1 90 00 00 00 00
  $%  REQ007:7E1 03 22 F1 8C 00 00 00 00       $%  ANS007:7E9 03 22 F1 8C 00 00 00 00
  $%  REQ008:7E1 03 22 F1 98 00 00 00 00       $%  ANS008:7E9 03 22 F1 98 00 00 00 00

  $%  000:零部件件号:                     $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $%  001:系统供应商代码:                 $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  002:系统供应商ECU硬件版本号:        $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  003:系统供应商ECU软件版本号:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  004:ECU安装日期:                    $%    $%  ANS004.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  005:ECU制造日期:                    $%    $%  ANS005.BYTE004  $%  HEX(x1,x2,x3,x4);
  $%  006:VIN:                            $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU序列号:                      $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  008:维修店代码/测试仪序列号:        $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E1 03 22 05 01 00 00 00 00       $  ANS000:7E9 03 22 05 01 00 00 00 00
  $  REQ001:7E1 03 22 05 02 00 00 00 00       $  ANS001:7E9 03 22 05 02 00 00 00 00
  $  REQ002:7E1 03 22 05 03 00 00 00 00       $  ANS002:7E9 03 22 05 03 00 00 00 00
  $  REQ003:7E1 03 22 05 04 00 00 00 00       $  ANS003:7E9 03 22 05 04 00 00 00 00
  $  REQ004:7E1 03 22 05 05 00 00 00 00       $  ANS004:7E9 03 22 05 05 00 00 00 00
  $  REQ005:7E1 03 22 05 06 00 00 00 00       $  ANS005:7E9 03 22 05 06 00 00 00 00
  $  REQ006:7E1 03 22 05 07 00 00 00 00       $  ANS006:7E9 03 22 05 07 00 00 00 00
  $  REQ007:7E1 03 22 05 08 00 00 00 00       $  ANS007:7E9 03 22 05 08 00 00 00 00
  $  REQ008:7E1 03 22 05 09 00 00 00 00       $  ANS008:7E9 03 22 05 09 00 00 00 00
  $  REQ009:7E1 03 22 05 0A 00 00 00 00       $  ANS009:7E9 03 22 05 0A 00 00 00 00
  $  REQ010:7E1 03 22 05 0B 00 00 00 00       $  ANS010:7E9 03 22 05 0B 00 00 00 00
  $  REQ011:7E1 03 22 05 0C 00 00 00 00       $  ANS011:7E9 03 22 05 0C 00 00 00 00
  $  REQ012:7E1 03 22 05 0D 00 00 00 00       $  ANS012:7E9 03 22 05 0D 00 00 00 00
  $  REQ013:7E1 03 22 05 0E 00 00 00 00       $  ANS013:7E9 03 22 05 0E 00 00 00 00
  $  REQ014:7E1 03 22 05 0F 00 00 00 00       $  ANS014:7E9 03 22 05 0F 00 00 00 00
  $  REQ015:7E1 03 22 05 10 00 00 00 00       $  ANS015:7E9 03 22 05 10 00 00 00 00
  $  REQ016:7E1 03 22 05 11 00 00 00 00       $  ANS016:7E9 03 22 05 11 00 00 00 00
  $  REQ017:7E1 03 22 05 12 00 00 00 00       $  ANS017:7E9 03 22 05 12 00 00 00 00
  $  REQ018:7E1 03 22 05 13 00 00 00 00       $  ANS018:7E9 03 22 05 13 00 00 00 00
  $  REQ019:7E1 03 22 05 14 00 00 00 00       $  ANS019:7E9 03 22 05 14 00 00 00 00
  $  REQ020:7E1 03 22 05 15 00 00 00 00       $  ANS020:7E9 03 22 05 15 00 00 00 00
  $  REQ021:7E1 03 22 05 16 00 00 00 00       $  ANS021:7E9 03 22 05 16 00 00 00 00
  $  REQ022:7E1 03 22 05 17 00 00 00 00       $  ANS022:7E9 03 22 05 17 00 00 00 00
  $  REQ023:7E1 03 22 05 18 00 00 00 00       $  ANS023:7E9 03 22 05 18 00 00 00 00
  $  REQ024:7E1 03 22 05 19 00 00 00 00       $  ANS024:7E9 03 22 05 19 00 00 00 00
  $  REQ025:7E1 03 22 05 1A 00 00 00 00       $  ANS025:7E9 03 22 05 1A 00 00 00 00
  $  REQ026:7E1 03 22 05 1B 00 00 00 00       $  ANS026:7E9 03 22 05 1B 00 00 00 00
  $  REQ027:7E1 03 22 05 1C 00 00 00 00       $  ANS027:7E9 03 22 05 1C 00 00 00 00
  $  REQ028:7E1 03 22 05 1D 00 00 00 00       $  ANS028:7E9 03 22 05 1D 00 00 00 00
  $  REQ029:7E1 03 22 05 1E 00 00 00 00       $  ANS029:7E9 03 22 05 1E 00 00 00 00
  $  REQ030:7E1 03 22 05 1F 00 00 00 00       $  ANS030:7E9 03 22 05 1F 00 00 00 00
  $  REQ031:7E1 03 22 05 20 00 00 00 00       $  ANS031:7E9 03 22 05 20 00 00 00 00

  $  000.低压供电电压             $    $  V       $    $  ANS000.BYTE004  $  y = SPRINTF([%.1f], x1*0.1);
  $  001.总电压                   $    $  V       $    $  ANS001.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.1);
  $  002.总电流                   $    $  A       $    $  ANS002.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.1-500);
  $  003.电池系统状态             $    $          $    $  ANS003.BYTE004  $  if(x1==0) y=@001d;else if(x1==1) y=@001e;else if(x1==2) y=@001f;else if(x1==3) y=@0020;else y=@0004;
  $  004.最大单体电压             $    $  V       $    $  ANS004.BYTE004  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  005.最大单体电压编号         $    $          $    $  ANS005.BYTE004  $  if(x1==0) y=@001d;else if(x1==1) y=@006b;else if(x1==2) y=@001f;else if(x1==3) y=@0020;else y=@0004;
  $  006.最小单体电压             $    $  V       $    $  ANS006.BYTE004  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  007.最小单体电压编号         $    $          $    $  ANS007.BYTE004  $  y = SPRINTF([%.0f], x1);
  $  008.最大温度                 $    $  ℃      $    $  ANS008.BYTE004  $  y = SPRINTF([%.0f], x1-40);
  $  009.最大温度编号             $    $          $    $  ANS009.BYTE004  $  y = SPRINTF([%.0f], x1);
  $  010.最小温度                 $    $  ℃      $    $  ANS010.BYTE004  $  y = SPRINTF([%.0f], x1-40);
  $  011.最小温度编号             $    $          $    $  ANS011.BYTE004  $  y = SPRINTF([%.0f], x1);
  $  012.SOH值                    $    $  %       $    $  ANS012.BYTE004  $  y = SPRINTF([%.0f], x1);
  $  013.BMS充电状态              $    $          $    $  ANS013.BYTE004  $  if(x1==0) y=@0077;else if(x1==1) y=@0078;else if(x1==2) y=@0079;else if(x1==3) y=@000f;else y=@0004;
  $  014.快充正极继电器状态       $    $          $    $  ANS014.BYTE004  $  if(x1==0) y=@0062;else if(x1==1) y=@0063;else if(x1==2) y=@0030;else y=@0004;
  $  015.负极继电器状态           $    $          $    $  ANS015.BYTE004  $  if(x1==0) y=@0062;else if(x1==1) y=@0063;else if(x1==2) y=@0030;else y=@0004;
  $  016.快充正极继电器状态       $    $          $    $  ANS016.BYTE004  $  if(x1==0) y=@0062;else if(x1==1) y=@0063;else if(x1==2) y=@0030;else y=@0004;
  $  017.加热继电器状态           $    $          $    $  ANS017.BYTE004  $  if(x1==0) y=@0062;else if(x1==1) y=@0063;else if(x1==2) y=@0030;else y=@0004;
  $  018.总负继电器状态           $    $          $    $  ANS018.BYTE004  $  if(x1==0) y=@0062;else if(x1==1) y=@0063;else if(x1==2) y=@0030;else y=@0004;
  $  019.慢充继电器状态           $    $          $    $  ANS019.BYTE004  $  if(x1==0) y=@0062;else if(x1==1) y=@0063;else if(x1==2) y=@0030;else y=@0004;
  $  020.SOC值                    $    $  %       $    $  ANS020.BYTE004  $  y = SPRINTF([%.0f], x1);
  $  021.最大允许充电电压         $    $  V       $    $  ANS021.BYTE004  $  y = SPRINTF([%.0f], (x1*256+x2)*0.1);
  $  022.最大允许充电电流         $    $  A       $    $  ANS022.BYTE004  $  y = SPRINTF([%.0f], (x1*256+x2)*0.1);
  $  023.电池充电控制状态         $    $          $    $  ANS023.BYTE004  $  switxh(x1&0x01) 0x00: y=@0015; 0x01: y=@0016;
  $  024.最大脉冲充电功率         $    $  KW      $    $  ANS024.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.5);
  $  025.最大脉冲回馈功率         $    $  KW      $    $  ANS025.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.5);
  $  026.最大持续充电功率         $    $  KW      $    $  ANS026.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.5);
  $  027.最大持续回馈功率         $    $  KW      $    $  ANS027.BYTE004  $  y = SPRINTF([%.1f], (x1*256+x2)*0.5);
  $  028.BMS绝缘阻值              $    $  KΩ     $    $  ANS028.BYTE004  $  y = SPRINTF([%.0f], (x1*256+x2));
  $  029.平均温度                 $    $  A       $    $  ANS029.BYTE004  $  y = SPRINTF([%.0f], x1-40);
  $  030.1号单体电压              $    $  V       $    $  ANS030.BYTE004  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  031.2号单体电压              $    $  V       $    $  ANS030.BYTE006  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  032.3号单体电压              $    $  V       $    $  ANS030.BYTE008  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  033.4号单体电压              $    $  V       $    $  ANS030.BYTE010  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  034.5号单体电压              $    $  V       $    $  ANS030.BYTE012  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  035.6号单体电压              $    $  V       $    $  ANS030.BYTE014  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  036.7号单体电压              $    $  V       $    $  ANS030.BYTE016  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  037.8号单体电压              $    $  V       $    $  ANS030.BYTE018  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  038.9号单体电压              $    $  V       $    $  ANS030.BYTE020  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  039.10号单体电压             $    $  V       $    $  ANS030.BYTE022  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  040.11号单体电压             $    $  V       $    $  ANS030.BYTE024  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  041.12号单体电压             $    $  V       $    $  ANS030.BYTE026  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  042.13号单体电压             $    $  V       $    $  ANS030.BYTE028  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  043.14号单体电压             $    $  V       $    $  ANS030.BYTE030  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  044.15号单体电压             $    $  V       $    $  ANS030.BYTE032  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  045.16号单体电压             $    $  V       $    $  ANS030.BYTE034  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  046.17号单体电压             $    $  V       $    $  ANS030.BYTE036  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  047.18号单体电压             $    $  V       $    $  ANS030.BYTE038  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  048.19号单体电压             $    $  V       $    $  ANS030.BYTE040  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  049.20号单体电压             $    $  V       $    $  ANS030.BYTE042  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  050.21号单体电压             $    $  V       $    $  ANS030.BYTE044  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  051.22号单体电压             $    $  V       $    $  ANS030.BYTE046  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  052.23号单体电压             $    $  V       $    $  ANS030.BYTE048  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  053.24号单体电压             $    $  V       $    $  ANS030.BYTE050  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  054.25号单体电压             $    $  V       $    $  ANS030.BYTE052  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  055.26号单体电压             $    $  V       $    $  ANS030.BYTE054  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  056.27号单体电压             $    $  V       $    $  ANS030.BYTE056  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  057.28号单体电压             $    $  V       $    $  ANS030.BYTE058  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  058.29号单体电压             $    $  V       $    $  ANS030.BYTE060  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  059.30号单体电压             $    $  V       $    $  ANS030.BYTE062  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  060.31号单体电压             $    $  V       $    $  ANS030.BYTE064  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  061.32号单体电压             $    $  V       $    $  ANS030.BYTE066  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  062.33号单体电压             $    $  V       $    $  ANS030.BYTE068  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  063.34号单体电压             $    $  V       $    $  ANS030.BYTE070  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  064.35号单体电压             $    $  V       $    $  ANS030.BYTE072  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  065.36号单体电压             $    $  V       $    $  ANS030.BYTE074  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  066.37号单体电压             $    $  V       $    $  ANS030.BYTE076  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  067.38号单体电压             $    $  V       $    $  ANS030.BYTE078  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  068.39号单体电压             $    $  V       $    $  ANS030.BYTE080  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  069.40号单体电压             $    $  V       $    $  ANS030.BYTE082  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  070.41号单体电压             $    $  V       $    $  ANS030.BYTE084  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  071.42号单体电压             $    $  V       $    $  ANS030.BYTE086  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  072.43号单体电压             $    $  V       $    $  ANS030.BYTE088  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  073.44号单体电压             $    $  V       $    $  ANS030.BYTE090  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  074.45号单体电压             $    $  V       $    $  ANS030.BYTE092  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  075.46号单体电压             $    $  V       $    $  ANS030.BYTE094  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  076.47号单体电压             $    $  V       $    $  ANS030.BYTE096  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  077.48号单体电压             $    $  V       $    $  ANS030.BYTE098  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  078.49号单体电压             $    $  V       $    $  ANS030.BYTE100  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  079.50号单体电压             $    $  V       $    $  ANS030.BYTE102  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  080.51号单体电压             $    $  V       $    $  ANS030.BYTE104  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  081.52号单体电压             $    $  V       $    $  ANS030.BYTE106  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  082.53号单体电压             $    $  V       $    $  ANS030.BYTE108  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  083.54号单体电压             $    $  V       $    $  ANS030.BYTE110  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  084.55号单体电压             $    $  V       $    $  ANS030.BYTE112  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  085.56号单体电压             $    $  V       $    $  ANS030.BYTE114  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  086.57号单体电压             $    $  V       $    $  ANS030.BYTE116  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  087.58号单体电压             $    $  V       $    $  ANS030.BYTE118  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  088.59号单体电压             $    $  V       $    $  ANS030.BYTE120  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  089.60号单体电压             $    $  V       $    $  ANS030.BYTE122  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  090.61号单体电压             $    $  V       $    $  ANS030.BYTE124  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  091.62号单体电压             $    $  V       $    $  ANS030.BYTE126  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  092.63号单体电压             $    $  V       $    $  ANS030.BYTE128  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  093.64号单体电压             $    $  V       $    $  ANS030.BYTE130  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  094.65号单体电压             $    $  V       $    $  ANS030.BYTE132  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  095.66号单体电压             $    $  V       $    $  ANS030.BYTE134  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  096.67号单体电压             $    $  V       $    $  ANS030.BYTE136  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  097.68号单体电压             $    $  V       $    $  ANS030.BYTE138  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  098.69号单体电压             $    $  V       $    $  ANS030.BYTE140  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  099.70号单体电压             $    $  V       $    $  ANS030.BYTE142  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  100.71号单体电压             $    $  V       $    $  ANS030.BYTE144  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  101.72号单体电压             $    $  V       $    $  ANS030.BYTE146  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  102.73号单体电压             $    $  V       $    $  ANS030.BYTE148  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  103.74号单体电压             $    $  V       $    $  ANS030.BYTE150  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  104.75号单体电压             $    $  V       $    $  ANS030.BYTE152  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  105.76号单体电压             $    $  V       $    $  ANS030.BYTE154  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  106.77号单体电压             $    $  V       $    $  ANS030.BYTE156  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  107.78号单体电压             $    $  V       $    $  ANS030.BYTE158  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  108.79号单体电压             $    $  V       $    $  ANS030.BYTE160  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  109.80号单体电压             $    $  V       $    $  ANS030.BYTE162  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  110.81号单体电压             $    $  V       $    $  ANS030.BYTE164  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  111.82号单体电压             $    $  V       $    $  ANS030.BYTE166  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  112.83号单体电压             $    $  V       $    $  ANS030.BYTE168  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  113.84号单体电压             $    $  V       $    $  ANS030.BYTE170  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  114.85号单体电压             $    $  V       $    $  ANS030.BYTE172  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  115.86号单体电压             $    $  V       $    $  ANS030.BYTE174  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  116.87号单体电压             $    $  V       $    $  ANS030.BYTE176  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  117.88号单体电压             $    $  V       $    $  ANS030.BYTE178  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  118.89号单体电压             $    $  V       $    $  ANS030.BYTE180  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  119.90号单体电压             $    $  V       $    $  ANS030.BYTE182  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  120.91号单体电压             $    $  V       $    $  ANS030.BYTE184  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  121.92号单体电压             $    $  V       $    $  ANS030.BYTE186  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  122.93号单体电压             $    $  V       $    $  ANS030.BYTE188  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  123.94号单体电压             $    $  V       $    $  ANS030.BYTE190  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  124.95号单体电压             $    $  V       $    $  ANS030.BYTE192  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  125.96号单体电压             $    $  V       $    $  ANS030.BYTE194  $  y = SPRINTF([%.3f], (x1*256+x2)*0.001);
  $  126.1号温度点温度            $    $  ℃      $    $  ANS031.BYTE004  $  y = SPRINTF([%d], x1-40);
  $  127.2号温度点温度            $    $  ℃      $    $  ANS031.BYTE005  $  y = SPRINTF([%d], x1-40);
  $  128.3号温度点温度            $    $  ℃      $    $  ANS031.BYTE006  $  y = SPRINTF([%d], x1-40);
  $  129.4号温度点温度            $    $  ℃      $    $  ANS031.BYTE007  $  y = SPRINTF([%d], x1-40);
  $  130.5号温度点温度            $    $  ℃      $    $  ANS031.BYTE008  $  y = SPRINTF([%d], x1-40);
  $  131.6号温度点温度            $    $  ℃      $    $  ANS031.BYTE009  $  y = SPRINTF([%d], x1-40);
  $  132.7号温度点温度            $    $  ℃      $    $  ANS031.BYTE010  $  y = SPRINTF([%d], x1-40);
  $  133.8号温度点温度            $    $  ℃      $    $  ANS031.BYTE011  $  y = SPRINTF([%d], x1-40);
  $  134.9号温度点温度            $    $  ℃      $    $  ANS031.BYTE012  $  y = SPRINTF([%d], x1-40);
  $  135.10号温度点温度           $    $  ℃      $    $  ANS031.BYTE013  $  y = SPRINTF([%d], x1-40);
  $  136.11号温度点温度           $    $  ℃      $    $  ANS031.BYTE014  $  y = SPRINTF([%d], x1-40);
  $  137.12号温度点温度           $    $  ℃      $    $  ANS031.BYTE015  $  y = SPRINTF([%d], x1-40);
  $  138.13号温度点温度           $    $  ℃      $    $  ANS031.BYTE016  $  y = SPRINTF([%d], x1-40);
  $  139.14号温度点温度           $    $  ℃      $    $  ANS031.BYTE017  $  y = SPRINTF([%d], x1-40);
  $  140.15号温度点温度           $    $  ℃      $    $  ANS031.BYTE018  $  y = SPRINTF([%d], x1-40);
  $  141.16号温度点温度           $    $  ℃      $    $  ANS031.BYTE019  $  y = SPRINTF([%d], x1-40);
  $  142.17号温度点温度           $    $  ℃      $    $  ANS031.BYTE020  $  y = SPRINTF([%d], x1-40);
  $  143.18号温度点温度           $    $  ℃      $    $  ANS031.BYTE021  $  y = SPRINTF([%d], x1-40);
  $  144.19号温度点温度           $    $  ℃      $    $  ANS031.BYTE022  $  y = SPRINTF([%d], x1-40);
  $  145.20号温度点温度           $    $  ℃      $    $  ANS031.BYTE023  $  y = SPRINTF([%d], x1-40);
  $  146.21号温度点温度           $    $  ℃      $    $  ANS031.BYTE024  $  y = SPRINTF([%d], x1-40);
  $  147.22号温度点温度           $    $  ℃      $    $  ANS031.BYTE025  $  y = SPRINTF([%d], x1-40);
  $  148.23号温度点温度           $    $  ℃      $    $  ANS031.BYTE026  $  y = SPRINTF([%d], x1-40);
  $  149.24号温度点温度           $    $  ℃      $    $  ANS031.BYTE027  $  y = SPRINTF([%d], x1-40);
  $  150.25号温度点温度           $    $  ℃      $    $  ANS031.BYTE028  $  y = SPRINTF([%d], x1-40);
  $  151.26号温度点温度           $    $  ℃      $    $  ANS031.BYTE029  $  y = SPRINTF([%d], x1-40);
  $  152.27号温度点温度           $    $  ℃      $    $  ANS031.BYTE030  $  y = SPRINTF([%d], x1-40);
  $  153.28号温度点温度           $    $  ℃      $    $  ANS031.BYTE031  $  y = SPRINTF([%d], x1-40);
  $  154.29号温度点温度           $    $  ℃      $    $  ANS031.BYTE032  $  y = SPRINTF([%d], x1-40);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
