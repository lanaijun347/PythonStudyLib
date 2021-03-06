
    车型ID：a277

    模拟：协议模拟-->a277

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~74D

进入命令:

  $~  REQ000:745 02 10 01 00 00 00 00 00       $~  ANS000:74D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:745 02 3E 01 00 00 00 00 00       $!  ANS000:74D 02 3E 01 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:745 04 18 00 00 FF 00 00 00       $#  ANS000:74D 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/a2770000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:745 03 14 00 FF 00 00 00 00       $$  ANS000:74D 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:745 03 22 00 01 00 00 00 00       $%  ANS000:74D 03 22 00 01 00 00 00 00
  $%  REQ001:745 03 22 00 03 00 00 00 00       $%  ANS001:74D 03 22 00 03 00 00 00 00
  $%  REQ002:745 03 22 00 02 00 00 00 00       $%  ANS002:74D 03 22 00 02 00 00 00 00

  $%  000:软件版本/主要版本:        $%    $%  ANS000.BYTE004  $%  y=x1/10.0;
  $%  001:次要版本:                 $%    $%  ANS000.BYTE005  $%  y=x1/10.0;
  $%  002:分支:                     $%    $%  ANS000.BYTE006  $%  y=x1/10.0;
  $%  003:生产日期:                 $%    $%  ANS000.BYTE007  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  004:硬件版本/主要版本:        $%    $%  ANS001.BYTE004  $%  y=x1/10.0;
  $%  005:次要版本:                 $%    $%  ANS001.BYTE005  $%  y=x1/10.0;
  $%  006:分支:                     $%    $%  ANS001.BYTE006  $%  y=x1/10.0;
  $%  007:生产日期:                 $%    $%  ANS001.BYTE007  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  008:生产序列号:               $%    $%  ANS002.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:745 03 22 00 04 00 00 00 00       $  ANS000:74D 03 22 00 04 00 00 00 00
  $  REQ001:745 03 22 00 05 00 00 00 00       $  ANS001:74D 03 22 00 05 00 00 00 00
  $  REQ002:745 03 22 00 06 00 00 00 00       $  ANS002:74D 03 22 00 06 00 00 00 00
  $  REQ003:745 03 22 00 07 00 00 00 00       $  ANS003:74D 03 22 00 07 00 00 00 00
  $  REQ004:745 03 22 00 08 00 00 00 00       $  ANS004:74D 03 22 00 08 00 00 00 00
  $  REQ005:745 03 22 00 09 00 00 00 00       $  ANS005:74D 03 22 00 09 00 00 00 00
  $  REQ006:745 03 22 00 0A 00 00 00 00       $  ANS006:74D 03 22 00 0A 00 00 00 00
  $  REQ007:745 03 22 00 0B 00 00 00 00       $  ANS007:74D 03 22 00 0B 00 00 00 00
  $  REQ008:745 03 22 00 0C 00 00 00 00       $  ANS008:74D 03 22 00 0C 00 00 00 00
  $  REQ009:745 03 22 00 0D 00 00 00 00       $  ANS009:74D 03 22 00 0D 00 00 00 00
  $  REQ010:745 03 22 00 0E 00 00 00 00       $  ANS010:74D 03 22 00 0E 00 00 00 00
  $  REQ011:745 03 22 00 0F 00 00 00 00       $  ANS011:74D 03 22 00 0F 00 00 00 00
  $  REQ012:745 03 22 00 10 00 00 00 00       $  ANS012:74D 03 22 00 10 00 00 00 00
  $  REQ013:745 03 22 00 11 00 00 00 00       $  ANS013:74D 03 22 00 11 00 00 00 00
  $  REQ014:745 03 22 00 12 00 00 00 00       $  ANS014:74D 03 22 00 12 00 00 00 00
  $  REQ015:745 03 22 00 13 00 00 00 00       $  ANS015:74D 03 22 00 13 00 00 00 00
  $  REQ016:745 03 22 00 14 00 00 00 00       $  ANS016:74D 03 22 00 14 00 00 00 00
  $  REQ017:745 03 22 00 15 00 00 00 00       $  ANS017:74D 03 22 00 15 00 00 00 00
  $  REQ018:745 03 22 00 16 00 00 00 00       $  ANS018:74D 03 22 00 16 00 00 00 00
  $  REQ019:745 03 22 00 17 00 00 00 00       $  ANS019:74D 03 22 00 17 00 00 00 00

  $  000.AFS OFF开关                $    $           $    $  ANS000.BYTE004  $  if(x1==1) y=@04f1;else if(x1==2) y=@04f2;else y=@006d;
  $  001.高度传感器标定结果         $    $           $    $  ANS001.BYTE004  $  if(x1==0) y=@0002;else if(x1==1) y=@0003;else y=@006d;
  $  002.车辆行驶方向               $    $           $    $  ANS002.BYTE004  $  if(x1==0) y=@04ef;else if(x1==1) y=@04f0;else y=@006d;
  $  003.近光灯状态                 $    $           $    $  ANS003.BYTE004  $  if(x1==0) y=@0002;else if(x1==1) y=@0003;else y=@006d;
  $  004.发动机状态                 $    $           $    $  ANS004.BYTE004  $  if(x1==0) y=@04f3;else if(x1==1) y=@04f4;else y=@006d;
  $  005.ECU电源电压                $    $  V        $    $  ANS005.BYTE004  $  if((x1*2.56+x2*0.01)>19.99) y=@006d;else y=x1*2.56+x2*0.01;
  $  006.前高度传感器电源电压       $    $  V        $    $  ANS006.BYTE004  $  if((x1*2.56+x2*0.01)>5.50) y=@006d;else y=x1*2.56+x2*0.01;
  $  007.前高度传感器信号电压       $    $  V        $    $  ANS007.BYTE004  $  if((x1*2.56+x2*0.01)>5.50) y=@006d;else y=x1*2.56+x2*0.01;
  $  008.后高度传感器电源电压       $    $  V        $    $  ANS008.BYTE004  $  if((x1*2.56+x2*0.01)>5.50) y=@006d;else y=x1*2.56+x2*0.01;
  $  009.后高度传感器信号电压       $    $  V        $    $  ANS009.BYTE004  $  if((x1*2.56+x2*0.01)>5.50) y=@006d;else y=x1*2.56+x2*0.01;
  $  010.方向盘转角值               $    $  度       $    $  ANS010.BYTE004  $  if((x1*256/10+x2*256/2550-780)>780) y=@006d;else y=x1*256/10+x2*256/2550-780;
  $  011.左前轮轮速                 $    $  km/h     $    $  ANS011.BYTE004  $  if((x1*264/15+x2*17/255)>281) y=@006d;else y=x1*264/15+x2*17/255;
  $  012.右前轮轮速                 $    $  km/h     $    $  ANS012.BYTE004  $  if((x1*264/15+x2*17/255)>281) y=@006d;else y=x1*264/15+x2*17/255;
  $  013.车速                       $    $  km/h     $    $  ANS013.BYTE004  $  if((x1*264/15+x2*17/255)>281) y=@006d;else y=x1*264/15+x2*17/255;
  $  014.故障码个数                 $    $           $    $  ANS014.BYTE004  $  y=x1;
  $  015.初始化次数                 $    $           $    $  ANS015.BYTE004  $  y=x1;
  $  016.左灯上下调节电机位置       $    $  °       $    $  ANS016.BYTE004  $  if(x1>0xC8) y=@006d;else if(((x1<0xC9)&&(x1>0x63))||(x1==0)) y=x1/20-5;else y=(x1-1)/20-4;
  $  017.右灯上下调节电机位置       $    $  °       $    $  ANS017.BYTE004  $  if(x1>0xC8) y=@006d;else if(((x1<0xC9)&&(x1>0x63))||(x1==0)) y=x1/20-5;else y=(x1-1)/20-4;
  $  018.左灯水平调节电机位置       $    $  °       $    $  ANS018.BYTE004  $  if(x1==0) y=@0b48;else if(x1==1) y=@0944;else if(x1==2) y=@0945;else if(x1==3) y=@040f;else y=@006d;
  $  019.右灯水平调节电机位置       $    $  °       $    $  ANS019.BYTE004  $  if(x1==0) y=@0b48;else if(x1==1) y=@0944;else if(x1==2) y=@0945;else if(x1==3) y=@040f;else y=@006d;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:745 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
