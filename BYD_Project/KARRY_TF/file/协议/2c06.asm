
    车型ID：2c06

    模拟：协议模拟-->2c06

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~7EA

进入命令:

  $~  REQ000:7E2 02 01 00 00 00 00 00 00       $~  ANS000:7EA 02 01 00 00 00 00 00 00
  $~  REQ001:7E2 02 01 20 00 00 00 00 00       $~  ANS001:7EA 02 01 20 00 00 00 00 00
  $~  REQ002:7E2 02 01 40 00 00 00 00 00       $~  ANS002:7EA 02 01 40 00 00 00 00 00
  $~  REQ003:7E2 02 01 A0 00 00 00 00 00       $~  ANS003:7EA 02 01 A0 00 00 00 00 00

空闲命令:

  $!  REQ000:7E2 02 3E 80 00 00 00 00 00       $!  ANS000:7EA 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E2 01 03 00 00 00 00 00 00       $#  ANS000:7EA 01 03 00 00 00 00 00 00

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#2$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/2c020000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E2 01 04 00 00 00 00 00 00       $$  ANS000:7EA 01 04 00 00 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E2 02 09 02 00 00 00 00 00       $%  ANS000:7EA 02 09 02 00 00 00 00 00

  $%  000:VIN:        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E2 02 01 0D 00 00 00 00 00       $  ANS000:7EA 02 01 0D 00 00 00 00 00
  $  REQ001:7E2 02 01 21 00 00 00 00 00       $  ANS001:7EA 02 01 21 00 00 00 00 00
  $  REQ002:7E2 02 01 5A 00 00 00 00 00       $  ANS002:7EA 02 01 5A 00 00 00 00 00
  $  REQ003:7E2 02 01 A1 00 00 00 00 00       $  ANS003:7EA 02 01 A1 00 00 00 00 00
  $  REQ004:7E2 02 01 A2 00 00 00 00 00       $  ANS004:7EA 02 01 A2 00 00 00 00 00
  $  REQ005:7E2 02 01 A3 00 00 00 00 00       $  ANS005:7EA 02 01 A3 00 00 00 00 00
  $  REQ006:7E2 02 01 A4 00 00 00 00 00       $  ANS006:7EA 02 01 A4 00 00 00 00 00
  $  REQ007:7E2 02 01 A5 00 00 00 00 00       $  ANS007:7EA 02 01 A5 00 00 00 00 00
  $  REQ008:7E2 02 01 A6 00 00 00 00 00       $  ANS008:7EA 02 01 A6 00 00 00 00 00
  $  REQ009:7E2 02 01 A7 00 00 00 00 00       $  ANS009:7EA 02 01 A7 00 00 00 00 00
  $  REQ010:7E2 02 01 A8 00 00 00 00 00       $  ANS010:7EA 02 01 A8 00 00 00 00 00
  $  REQ011:7E2 02 01 A9 00 00 00 00 00       $  ANS011:7EA 02 01 A9 00 00 00 00 00
  $  REQ012:7E2 02 01 AA 00 00 00 00 00       $  ANS012:7EA 02 01 AA 00 00 00 00 00
  $  REQ013:7E2 02 01 AB 00 00 00 00 00       $  ANS013:7EA 02 01 AB 00 00 00 00 00
  $  REQ014:7E2 02 01 AC 00 00 00 00 00       $  ANS014:7EA 02 01 AC 00 00 00 00 00
  $  REQ015:7E2 02 01 AD 00 00 00 00 00       $  ANS015:7EA 02 01 AD 00 00 00 00 00
  $  REQ016:7E2 02 01 AE 00 00 00 00 00       $  ANS016:7EA 02 01 AE 00 00 00 00 00
  $  REQ017:7E2 02 01 AF 00 00 00 00 00       $  ANS017:7EA 02 01 AF 00 00 00 00 00
  $  REQ018:7E2 02 01 B0 00 00 00 00 00       $  ANS018:7EA 02 01 B0 00 00 00 00 00
  $  REQ019:7E2 02 01 B1 00 00 00 00 00       $  ANS019:7EA 02 01 B1 00 00 00 00 00
  $  REQ020:7E2 02 01 B2 00 00 00 00 00       $  ANS020:7EA 02 01 B2 00 00 00 00 00

  $  000.车速                          $    $  km/h     $    $  ANS000.BYTE003  $  y=(x1*256+x2)*1-255;
  $  001.故障发生后行驶的距离          $    $  km       $    $  ANS001.BYTE003  $  y=(x1*256+x2)*1;
  $  002.加速踏板相对位置              $    $  %        $    $  ANS002.BYTE003  $  y=x;
  $  003.驱动电机转速                  $    $  rpm      $    $  ANS003.BYTE003  $  y=(x1*256+x2)*1-16000;
  $  004.驱动电机需求扭矩              $    $  Nm       $    $  ANS004.BYTE003  $  y=(x1*256+x2)*0.25-1500;
  $  005.驱动电机实际扭矩              $    $  Nm       $    $  ANS005.BYTE003  $  y=(x1*256+x2)*0.25-1500;
  $  006.驱动电机当前状态              $    $           $    $  ANS006.BYTE003  $  if(x==0x00)y=@02bf; else if(x==0x01)y=@02c0; else if(x==0x02)y=@00f6;else y=@02c1;
  $  007.驱动电机温度                  $    $  degC     $    $  ANS007.BYTE003  $  y=x-40;
  $  008.挡位信息                      $    $           $    $  ANS008.BYTE003  $  if(x==0)y=@02c2; else if(x==1)y=@01c0; else if(x==2)y=@01c1; else if(x==3)y=@01c2; else if(x==4)y=@02c3;else if(x==5)y=@02c4; else if(x==6)y=@02c5; else if(x==7)y=@02c6; else if(x==8)y=@02c7; else if(x==9)y=@02c8; else if(x==10)y=@02c9; else if(x==11)y=@02ca;else y=@02c1;
  $  009.电池组电压                    $    $  V        $    $  ANS009.BYTE003  $  y=(x1*256+x2)*0.25;
  $  010.电池组SOC(电池荷电状态)       $    $  %        $    $  ANS010.BYTE003  $  y=x;
  $  011.电池组平均温度                $    $  degC     $    $  ANS011.BYTE003  $  y=x-40;
  $  012.电池组充电功率                $    $  W        $    $  ANS012.BYTE003  $  y=(x1*256+x2)*0.25-200;
  $  013.电池组放电功率                $    $  W        $    $  ANS013.BYTE003  $  y=(x1*256+x2)*0.25;
  $  014.制动开关                      $    $           $    $  ANS014.BYTE003  $  if(x==0)y=@02cb; else if(x==1)y=@02cc; else y=@02c1;
  $  015.制动踏板                      $    $  %        $    $  ANS015.BYTE003  $  y=x;
  $  016.电池组电流                    $    $  A        $    $  ANS016.BYTE003  $  y=(x1*256+x2)*0.25-500;
  $  017.最小单体电压                  $    $  mV       $    $  ANS017.BYTE003  $  y=(x1*256+x2)*1;
  $  018.最大单体电压                  $    $  mV       $    $  ANS018.BYTE003  $  y=(x1*256+x2)*1;
  $  019.电池最高温度                  $    $  degC     $    $  ANS019.BYTE003  $  y=x-40;
  $  020.电池最低温度                  $    $  degC     $    $  ANS020.BYTE003  $  y=x-40;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E2 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
