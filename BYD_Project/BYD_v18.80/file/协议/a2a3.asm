
    车型ID：a2a3

    模拟：协议模拟-->a2a3

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~76D

进入命令:

  $~  REQ000:765 02 10 01 00 00 00 00 00       $~  ANS000:76D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:765 02 3E 01 00 00 00 00 00       $!  ANS000:76D 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:765 04 18 00 00 FF 00 00 00       $#  ANS000:76D 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a2a30000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:765 03 14 00 FF 00 00 00 00       $$  ANS000:76D 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:765 03 22 00 01 00 00 00 00       $%  ANS000:76D 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=x1/10.0;
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=x1/10.0;
  $%  002:软件日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:765 03 22 00 04 00 00 00 00       $  ANS000:76D 03 22 00 04 00 00 00 00
  $  REQ001:765 03 22 00 05 00 00 00 00       $  ANS001:76D 03 22 00 05 00 00 00 00
  $  REQ002:765 03 22 00 06 00 00 00 00       $  ANS002:76D 03 22 00 06 00 00 00 00
  $  REQ003:765 03 22 00 07 00 00 00 00       $  ANS003:76D 03 22 00 07 00 00 00 00
  $  REQ004:765 03 22 00 08 00 00 00 00       $  ANS004:76D 03 22 00 08 00 00 00 00
  $  REQ005:765 03 22 00 09 00 00 00 00       $  ANS005:76D 03 22 00 09 00 00 00 00
  $  REQ006:765 03 22 00 0A 00 00 00 00       $  ANS006:76D 03 22 00 0A 00 00 00 00
  $  REQ007:765 03 22 00 0B 00 00 00 00       $  ANS007:76D 03 22 00 0B 00 00 00 00

  $  000.车辆规格                     $    $           $    $  ANS000.BYTE004  $  if((x1&0x07)==0) y=@0337;else if((x1&0x07)==1) y=@0338;else if((x1&0x07)==2) y=@0339;else if((x1&0x07)==3) y=@033a;else y=@0108;
  $  001.电源模式                     $    $           $    $  ANS000.BYTE004  $  if((x1&0x1F)<0x08) y=@02e3;else if((x1&0x1F)<0x10) y=@02e4;else if((x1&0x1F)<0x18) y=@02e5;else y=@0108;
  $  002.IG电源                       $    $           $    $  ANS000.BYTE004  $  if(x1&0x10) y=@0001;else y=@0000;
  $  003.档位信号                     $    $           $    $  ANS000.BYTE004  $  if(x1&0x20) y=@08c7;else y=@00d7;
  $  004.门锁状态                     $    $           $    $  ANS000.BYTE005  $  if(x1&0x04) y=@0225;else y=@00eb;
  $  005.门状态                       $    $           $    $  ANS000.BYTE005  $  if((x1&0x3F)<0x08) y=@053d;else if((x1&0x3F)<0x10) y=@053e;else if((x1&0x3F)<0x18) y=@053f;else if((x1&0x3F)<0x20) y=@0540;else if((x1&0x3F)<0x28) y=@0541;else if((x1&0x3F)<0x30) y=@0542;else y=@0108;
  $  006.霍尔传感器A状态              $    $           $    $  ANS001.BYTE004  $  if(x1&0x01) y=@0045;else y=@0544;
  $  007.霍尔传感器A脉冲              $    $           $    $  ANS001.BYTE004  $  if(x1&0x02) y=@01c9;else y=@01ca;
  $  008.霍尔传感器B状态              $    $           $    $  ANS001.BYTE004  $  if(x1&0x04) y=@0045;else y=@0544;
  $  009.霍尔传感器B脉冲              $    $           $    $  ANS001.BYTE004  $  if(x1&0x08) y=@01c9;else y=@01ca;
  $  010.开门开关                     $    $           $    $  ANS002.BYTE004  $  if(x1&0x01) y=@0047;else y=@0056;
  $  011.关门开关                     $    $           $    $  ANS002.BYTE004  $  if(x1&0x02) y=@0047;else y=@0056;
  $  012.电动滑门功能关闭开关         $    $           $    $  ANS002.BYTE004  $  if(x1&0x04) y=@08c8;else y=@08c9;
  $  013.电动滑门开关                 $    $           $    $  ANS002.BYTE004  $  if(x1&0x08) y=@0047;else y=@0056;
  $  014.后锁体全锁开关               $    $           $    $  ANS002.BYTE004  $  if(x1&0x10) y=@0539;else y=@053a;
  $  015.后锁体半锁开关               $    $           $    $  ANS002.BYTE004  $  if(x1&0x20) y=@0537;else y=@0538;
  $  016.后锁体电机位置开关           $    $           $    $  ANS002.BYTE004  $  if(x1&0x40) y=@053b;else y=@053c;
  $  017.后锁体电机运动开关           $    $           $    $  ANS002.BYTE004  $  if(x1&0x80) y=@003e;else y=@0205;
  $  018.防夹传感器开关               $    $           $    $  ANS002.BYTE005  $  if(x1&0x01) y=@0000;else y=@0001;
  $  019.后锁电机动作信号             $    $           $    $  ANS003.BYTE004  $  if((x1&0x03)==0) y=@015c;else if((x1&0x03)==1) y=@015d;else if((x1&0x03)==2) y=@003e;else y=@0108;
  $  020.开启执行器电机动作信号       $    $           $    $  ANS003.BYTE004  $  if(x1&0x04) y=@003e;else y=@0205;
  $  021.驱动电机动作信号             $    $           $    $  ANS003.BYTE004  $  if((x1&0x1F)<0x08) y=@015c;else if((x1&0x1F)<0x10) y=@015d;else if((x1&0x1F)<0x18) y=@003e;else y=@0108;
  $  022.离合器动作信号               $    $           $    $  ANS003.BYTE004  $  if(x1&0x20) y=@003e;else y=@0205;
  $  023.蜂鸣器工作信号               $    $           $    $  ANS003.BYTE004  $  if(x1&0x40) y=@003e;else y=@0543;
  $  024.IG电源(硬线信号)失效         $    $           $    $  ANS004.BYTE004  $  if(x1&0x01) y=@0544;else y=@0045;
  $  025.开门开关失效                 $    $           $    $  ANS004.BYTE004  $  if(x1&0x02) y=@0544;else y=@0045;
  $  026.关门开关失效                 $    $           $    $  ANS004.BYTE004  $  if(x1&0x04) y=@0544;else y=@0045;
  $  027.电动滑门功能关闭开关         $    $           $    $  ANS004.BYTE004  $  if(x1&0x08) y=@0544;else y=@0045;
  $  028.电动滑门开关失效             $    $           $    $  ANS004.BYTE004  $  if(x1&0x10) y=@0544;else y=@0045;
  $  029.后锁体全锁开关失效           $    $           $    $  ANS004.BYTE004  $  if(x1&0x20) y=@0544;else y=@0045;
  $  030.后锁体半锁开关失效           $    $           $    $  ANS004.BYTE004  $  if(x1&0x40) y=@0544;else y=@0045;
  $  031.后锁体电机位置开关失效       $    $           $    $  ANS004.BYTE004  $  if(x1&0x80) y=@0544;else y=@0045;
  $  032.后锁体电机运动开关失效       $    $           $    $  ANS004.BYTE005  $  if(x1&0x01) y=@0544;else y=@0045;
  $  033.后锁电机失效                 $    $           $    $  ANS004.BYTE005  $  if(x1&0x02) y=@0544;else y=@0045;
  $  034.开启执行器电机失效           $    $           $    $  ANS004.BYTE005  $  if(x1&0x04) y=@0544;else y=@0045;
  $  035.滑门驱动电机失效             $    $           $    $  ANS004.BYTE005  $  if(x1&0x08) y=@0544;else y=@0045;
  $  036.离合器失效                   $    $           $    $  ANS004.BYTE005  $  if(x1&0x10) y=@0544;else y=@0045;
  $  037.防夹传感器失效               $    $           $    $  ANS004.BYTE005  $  if(x1&0x20) y=@0544;else y=@0045;
  $  038.蜂鸣器失效                   $    $           $    $  ANS004.BYTE005  $  if(x1&0x40) y=@0544;else y=@0045;
  $  039.工作电压                     $    $  V        $    $  ANS005.BYTE004  $  if((x1*0.01+x2*2.56)<20.00) y=x1*0.01+x2*2.56;else y=@002e;
  $  040.门位置(脉冲数)               $    $           $    $  ANS005.BYTE006  $  if((x1+x2*256)>400) y=@002e;else y=x1+x2*256;
  $  041.当前车速                     $    $  km/h     $    $  ANS006.BYTE004  $  if((x1*17.60+x2*17.53/255)>281.46) y=@002e;else y=x1*17.60+x2*17.53/255;
  $  042.智能钥匙左侧滑动门开启       $    $           $    $  ANS007.BYTE004  $  if(x1&0x01) y=@003f;else y=@0093;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:765 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
