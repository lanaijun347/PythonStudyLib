
    车型ID：067f

    模拟：协议模拟-->067f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7AC

进入命令:

  $~  REQ000:7A4 02 10 01 00 00 00 00 00       $~  ANS000:7AC 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A4 02 3E 00 00 00 00 00 00       $!  ANS000:7AC 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7A4 03 19 02 09 00 00 00 00       $#  ANS000:7AC 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+(x3<<0);

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/8c000000


  $#  01.读故障码库
  $#  REQ000:7A4 02 19 0A 00 00 00 00 00       $#  ANS000:7AC 02 19 0A 00 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+(x3<<0);

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/8c000000


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

  $$  REQ000:7A4 04 14 FF FF FF 00 00 00       $$  ANS000:7AC 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A4 03 22 F1 87 00 00 00 00       $%  ANS000:7AC 03 22 F1 87 00 00 00 00
  $%  REQ001:7A4 03 22 F1 8A 00 00 00 00       $%  ANS001:7AC 03 22 F1 8A 00 00 00 00
  $%  REQ002:7A4 03 22 F1 92 00 00 00 00       $%  ANS002:7AC 03 22 F1 92 00 00 00 00
  $%  REQ003:7A4 03 22 F1 95 00 00 00 00       $%  ANS003:7AC 03 22 F1 95 00 00 00 00
  $%  REQ004:7A4 03 22 F1 90 00 00 00 00       $%  ANS004:7AC 03 22 F1 90 00 00 00 00
  $%  REQ005:7A4 03 22 F1 97 00 00 00 00       $%  ANS005:7AC 03 22 F1 97 00 00 00 00
  $%  REQ006:7A4 03 22 F1 99 00 00 00 00       $%  ANS006:7AC 03 22 F1 99 00 00 00 00
  $%  REQ007:7A4 03 22 F1 8C 00 00 00 00       $%  ANS007:7AC 03 22 F1 8C 00 00 00 00

  $%  000:控制器零件号:                $%    $%  ANS000.BYTE004  $%  0 ASCII
  $%  001:供应商代码:                  $%    $%  ANS001.BYTE004  $%  0 ASCII
  $%  002:系统硬件版本号:              $%    $%  ANS002.BYTE004  $%  0 ASCII
  $%  003:系统软件版本号:              $%    $%  ANS003.BYTE004  $%  0 ASCII
  $%  004:VIN码:                       $%    $%  ANS004.BYTE004  $%  0 ASCII
  $%  005:系统名称:                    $%    $%  ANS005.BYTE004  $%  0 ASCII
  $%  006:程序更新日期:                $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  007:ECU(电子控制器)序列号:       $%    $%  ANS007.BYTE004  $%  SPRINTF([%02x%02x%02x%02x%02x20%x%02x%02x%02x%02x%02x%02x%02x%02x],x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7A4 03 22 01 10 00 00 00 00       $  ANS000:7AC 03 22 01 10 00 00 00 00
  $  REQ001:7A4 03 22 02 00 00 00 00 00       $  ANS001:7AC 03 22 02 00 00 00 00 00
  $  REQ002:7A4 03 22 02 01 00 00 00 00       $  ANS002:7AC 03 22 02 01 00 00 00 00
  $  REQ003:7A4 03 22 03 01 00 00 00 00       $  ANS003:7AC 03 22 03 01 00 00 00 00
  $  REQ004:7A4 03 22 04 00 00 00 00 00       $  ANS004:7AC 03 22 04 00 00 00 00 00
  $  REQ005:7A4 03 22 06 00 00 00 00 00       $  ANS005:7AC 03 22 06 00 00 00 00 00
  $  REQ006:7A4 03 22 06 03 00 00 00 00       $  ANS006:7AC 03 22 06 03 00 00 00 00
  $  REQ007:7A4 03 22 10 00 00 00 00 00       $  ANS007:7AC 03 22 10 00 00 00 00 00
  $  REQ008:7A4 03 22 10 01 00 00 00 00       $  ANS008:7AC 03 22 10 01 00 00 00 00
  $  REQ009:7A4 03 22 10 02 00 00 00 00       $  ANS009:7AC 03 22 10 02 00 00 00 00
  $  REQ010:7A4 03 22 11 03 00 00 00 00       $  ANS010:7AC 03 22 11 03 00 00 00 00
  $  REQ011:7A4 03 22 11 06 00 00 00 00       $  ANS011:7AC 03 22 11 06 00 00 00 00
  $  REQ012:7A4 03 22 12 00 00 00 00 00       $  ANS012:7AC 03 22 12 00 00 00 00 00
  $  REQ013:7A4 03 22 12 03 00 00 00 00       $  ANS013:7AC 03 22 12 03 00 00 00 00
  $  REQ014:7A4 03 22 12 06 00 00 00 00       $  ANS014:7AC 03 22 12 06 00 00 00 00
  $  REQ015:7A4 03 22 21 00 00 00 00 00       $  ANS015:7AC 03 22 21 00 00 00 00 00
  $  REQ016:7A4 03 22 21 03 00 00 00 00       $  ANS016:7AC 03 22 21 03 00 00 00 00
  $  REQ017:7A4 03 22 21 04 00 00 00 00       $  ANS017:7AC 03 22 21 04 00 00 00 00
  $  REQ018:7A4 03 22 21 10 00 00 00 00       $  ANS018:7AC 03 22 21 10 00 00 00 00
  $  REQ019:7A4 03 22 21 15 00 00 00 00       $  ANS019:7AC 03 22 21 15 00 00 00 00
  $  REQ020:7A4 03 22 21 05 00 00 00 00       $  ANS020:7AC 03 22 21 05 00 00 00 00

  $  000.工厂模式                                   $    $  /      $    $  ANS000.BYTE004  $  if((x>=0x10)&&(x<=0xFF)) y=@00c8;else y=@04e2;
  $  001.程序成功更新次数                           $    $  /      $    $  ANS001.BYTE004  $  y=x1*256+x2;
  $  002.程序尝试更新次数                           $    $  /      $    $  ANS002.BYTE004  $  y=x1*256+x2;
  $  003.EPB(电子驻车制动系统)系统状态              $    $  /      $    $  ANS003.BYTE004  $  y=x;
  $  004.动态制动状态                               $    $  /      $    $  ANS003.BYTE004  $  if(((x>>4)&0x07)==0) y=@001d;else if(((x>>4)&0x07)==1) y=@04df;else if(((x>>4)&0x07)==2) y=@04e0;else if(((x>>4)&0x07)==3) y=@04e1;else y=@0220;
  $  005.间隙自调整公里数                           $    $  km     $    $  ANS004.BYTE004  $  y=x*100;
  $  006.坡度                                       $    $  %      $    $  ANS005.BYTE004  $  y=x-128;
  $  007.车辆模式                                   $    $  /      $    $  ANS006.BYTE004  $  if(x==15) y=@04dc;else if(x==51) y=@04dd;else if(x==60) y=@04de;else y=@0220;
  $  008.电池电压                                   $    $  V      $    $  ANS007.BYTE004  $  y=x*0.1;
  $  009.左电机电压                                 $    $  V      $    $  ANS008.BYTE004  $  y=x*0.1;
  $  010.右电机电压                                 $    $  V      $    $  ANS009.BYTE004  $  y=x*0.1;
  $  011.G-Sensor校准状态                           $    $  /      $    $  ANS010.BYTE004  $  if(((x>>0)&1)) y=@02de;else y=@02df;
  $  012.G-Sensor故障状态                           $    $  /      $    $  ANS010.BYTE004  $  if(((x>>1)&1)) y=@01b0;else y=@01ac;
  $  013.左侧夹紧力                                 $    $  kN     $    $  ANS011.BYTE004  $  y=(x1*256+x2)*0.001;
  $  014.右侧夹紧力                                 $    $  kN     $    $  ANS011.BYTE006  $  y=(x1*256+x2)*0.001;
  $  015.EPB(电子驻车制动系统)开关状态              $    $  /      $    $  ANS012.BYTE004  $  if(x==0) y=@03f5;else if(x==1) y=@0018;else if(x==2) y=@04e5;else if(x==3) y=@04e6;else if(x==4) y=@04e7;else if(x==5) y=@04e8;else if(x==6) y=@04e9;else if(x==7) y=@04ea;else if(x==8) y=@04eb;else if(x==9) y=@04ec;else if(x==10) y=@01c3;else y=@0220;
  $  016.EPB(电子驻车制动系统)开关1-4回路状态       $    $  /      $    $  ANS013.BYTE004  $  if((x&0x03)==0) y=@01af;else if((x&0x03)==1) y=@04e3;else if((x&0x03)==2) y=@0227;else y=@0228;
  $  017.EPB(电子驻车制动系统)开关2-3回路状态       $    $  /      $    $  ANS013.BYTE004  $  if(((x>>2)&0x03)==0) y=@01af;else if(((x>>2)&0x03)==1) y=@04e3;else if(((x>>2)&0x03)==2) y=@0227;else y=@0228;
  $  018.防恶意操作：已夹紧次数                     $    $  /      $    $  ANS014.BYTE004  $  y=x;
  $  019.防恶意操作：禁止夹紧状态                   $    $  /      $    $  ANS014.BYTE004  $  if(((x>>7)&1)) y=@012e;else y=@04e4;
  $  020.防恶意操作：限制次数                       $    $  /      $    $  ANS014.BYTE005  $  y=x;
  $  021.防恶意操作：计时器                         $    $  /      $    $  ANS014.BYTE005  $  y=x;
  $  022.左执行机构状态                             $    $  /      $    $  ANS015.BYTE004  $  if((x&0x0f)==0) y=@04ed;else if((x&0x0f)==1) y=@04ee;else if((x&0x0f)==2) y=@04ef;else if((x>>4)&&0x15==3) y=@04f0;else if((x&0x0f)==4) y=@0260;else if((x&0x0f)==5) y=@0261;else if((x&0x0f)==6) y=@0262;else if((x&0x0f)==7) y=@0263;else if((x&0x0f)==8) y=@0264;else if((x&0x0f)==9) y=@0265;else y=@0220;
  $  023.右执行机构状态                             $    $  /      $    $  ANS015.BYTE004  $  if(((x>>4)&0x0f)==0) y=@04ed;else if(((x>>4)&0x0f)==1) y=@04ee;else if(((x>>4)&0x0f)==2) y=@04ef;else if((x>>4)&&0x15==3) y=@04f0;else if(((x>>4)&0x0f)==4) y=@0260;else if(((x>>4)&0x0f)==5) y=@0261;else if(((x>>4)&0x0f)==6) y=@0262;else if(((x>>4)&0x0f)==7) y=@0263;else if(((x>>4)&0x0f)==8) y=@0264;else if(((x>>4)&0x0f)==9) y=@0265;else y=@0220;
  $  024.左电机回退到底次数                         $    $  /      $    $  ANS016.BYTE004  $  y=x1*256+x2;
  $  025.右电机回退到底次数                         $    $  /      $    $  ANS017.BYTE004  $  y=x1*256+x2;
  $  026.点火循环次数                               $    $  /      $    $  ANS018.BYTE004  $  y=x1*256+x2;
  $  027.右执行机构执行次数                         $    $  /      $    $  ANS019.BYTE004  $  y=x1*256*256*256+x2*256*256+x3*256+x4;
  $  028.左执行机构执行次数                         $    $  /      $    $  ANS020.BYTE004  $  y=x1*256*256*256+x2*256*256+x3*256+x4;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A4 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
