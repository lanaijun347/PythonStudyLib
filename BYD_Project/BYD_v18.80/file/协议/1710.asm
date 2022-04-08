
    车型ID：1710

    模拟：协议模拟-->1710

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~788

进入命令:

  $~  REQ000:780 02 10 01 00 00 00 00 00       $~  ANS000:788 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:780 02 3E 80 00 00 00 00 00       $!  ANS000:788 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:780 05 18 00 FF FF FF 00 00       $#  ANS000:788 05 18 00 FF FF FF 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:780 04 14 FF FF FF 00 00 00       $$  ANS000:788 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:780 03 22 F1 93 00 00 00 00       $%  ANS000:788 03 22 F1 93 00 00 00 00
  $%  REQ001:780 03 22 F1 94 00 00 00 00       $%  ANS001:788 03 22 F1 94 00 00 00 00
  $%  REQ002:780 03 22 F1 95 00 00 00 00       $%  ANS002:788 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0038,x2,@0039,x3,@003a);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:780 03 22 00 04 00 00 00 00       $  ANS000:788 03 22 00 04 00 00 00 00
  $  REQ001:780 03 22 00 05 00 00 00 00       $  ANS001:788 03 22 00 05 00 00 00 00
  $  REQ002:780 03 22 00 06 00 00 00 00       $  ANS002:788 03 22 00 06 00 00 00 00
  $  REQ003:780 03 22 00 07 00 00 00 00       $  ANS003:788 03 22 00 07 00 00 00 00
  $  REQ004:780 03 22 00 08 00 00 00 00       $  ANS004:788 03 22 00 08 00 00 00 00
  $  REQ005:780 03 22 00 09 00 00 00 00       $  ANS005:788 03 22 00 09 00 00 00 00
  $  REQ006:780 03 22 00 0A 00 00 00 00       $  ANS006:788 03 22 00 0A 00 00 00 00
  $  REQ007:780 03 22 00 0B 00 00 00 00       $  ANS007:788 03 22 00 0B 00 00 00 00
  $  REQ008:780 03 22 00 0C 00 00 00 00       $  ANS008:788 03 22 00 0C 00 00 00 00
  $  REQ009:780 03 22 00 0D 00 00 00 00       $  ANS009:788 03 22 00 0D 00 00 00 00
  $  REQ010:780 03 22 00 0E 00 00 00 00       $  ANS010:788 03 22 00 0E 00 00 00 00
  $  REQ011:780 03 22 00 0F 00 00 00 00       $  ANS011:788 03 22 00 0F 00 00 00 00
  $  REQ012:780 03 22 00 10 00 00 00 00       $  ANS012:788 03 22 00 10 00 00 00 00
  $  REQ013:780 03 22 00 11 00 00 00 00       $  ANS013:788 03 22 00 11 00 00 00 00
  $  REQ014:780 03 22 00 12 00 00 00 00       $  ANS014:788 03 22 00 12 00 00 00 00
  $  REQ015:780 03 22 00 13 00 00 00 00       $  ANS015:788 03 22 00 13 00 00 00 00
  $  REQ016:780 03 22 00 14 00 00 00 00       $  ANS016:788 03 22 00 14 00 00 00 00
  $  REQ017:780 03 22 00 15 00 00 00 00       $  ANS017:788 03 22 00 15 00 00 00 00
  $  REQ018:780 03 22 00 16 00 00 00 00       $  ANS018:788 03 22 00 16 00 00 00 00
  $  REQ019:780 03 22 00 17 00 00 00 00       $  ANS019:788 03 22 00 17 00 00 00 00
  $  REQ020:780 03 22 00 18 00 00 00 00       $  ANS020:788 03 22 00 18 00 00 00 00
  $  REQ021:780 03 22 00 19 00 00 00 00       $  ANS021:788 03 22 00 19 00 00 00 00
  $  REQ022:780 03 22 00 1A 00 00 00 00       $  ANS022:788 03 22 00 1A 00 00 00 00
  $  REQ023:780 03 22 00 1B 00 00 00 00       $  ANS023:788 03 22 00 1B 00 00 00 00
  $  REQ024:780 03 22 00 1C 00 00 00 00       $  ANS024:788 03 22 00 1C 00 00 00 00
  $  REQ025:780 03 22 00 1D 00 00 00 00       $  ANS025:788 03 22 00 1D 00 00 00 00
  $  REQ026:780 03 22 00 1E 00 00 00 00       $  ANS026:788 03 22 00 1E 00 00 00 00
  $  REQ027:780 03 22 00 1F 00 00 00 00       $  ANS027:788 03 22 00 1F 00 00 00 00
  $  REQ028:780 03 22 00 20 00 00 00 00       $  ANS028:788 03 22 00 20 00 00 00 00
  $  REQ029:780 03 22 00 21 00 00 00 00       $  ANS029:788 03 22 00 21 00 00 00 00
  $  REQ030:780 03 22 00 22 00 00 00 00       $  ANS030:788 03 22 00 22 00 00 00 00
  $  REQ031:780 03 22 00 23 00 00 00 00       $  ANS031:788 03 22 00 23 00 00 00 00
  $  REQ032:780 03 22 00 24 00 00 00 00       $  ANS032:788 03 22 00 24 00 00 00 00
  $  REQ033:780 03 22 00 25 00 00 00 00       $  ANS033:788 03 22 00 25 00 00 00 00
  $  REQ034:780 03 22 00 27 00 00 00 00       $  ANS034:788 03 22 00 27 00 00 00 00
  $  REQ035:780 03 22 D0 01 00 00 00 00       $  ANS035:788 03 22 D0 01 00 00 00 00

  $  000.电机状态                           $    $               $    $  ANS000.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00dd;else if((x1==0x01)&&(x2==0x00))y=@00de;else if((x1==0x02)&&(x2==0x00))y=@0000;else y=@00d6;
  $  001.发动机状态                         $    $               $    $  ANS001.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@0066;else if((x1==0x01)&&(x2==0x00))y=@0000;else y=@00d6;
  $  002.离合器强制脱开状态                 $    $               $    $  ANS002.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00df;else if((x1==0x01)&&(x2==0x00))y=@00e0;else y=@00d6;
  $  003.启动允许                           $    $               $    $  ANS003.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00e4;else if((x1==0x01)&&(x2==0x00))y=@00e5;else y=@00d6;
  $  004.防盗解除状态                       $    $               $    $  ANS004.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00e1;else if((x1==0x01)&&(x2==0x00))y=@00e2;else if((x1==0x02)&&(x2==0x00))y=@00e3;else y=@00d6;
  $  005.主动泄放状态                       $    $               $    $  ANS005.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00e6;else if((x1==0x01)&&(x2==0x00))y=@00e7;else if((x1==0x02)&&(x2==0x00))y=@00e8;else if((x1==0x03)&&(x2==0x00))y=@00e9;else y=@00d6;
  $  006.盖子状态                           $    $               $    $  ANS006.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@0001;else if((x1==0x01)&&(x2==0x00))y=@0000;else y=@00d6;
  $  007.整车档位                           $    $               $    $  ANS007.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00d7;else if((x1==0x01)&&(x2==0x00))y=@0071;else if((x1==0x02)&&(x2==0x00))y=@00d8;else if((x1==0x03)&&(x2==0x00))y=@0072;else if((x1==0x04)&&(x2==0x00))y=@00c7;else y=@00d6;
  $  008.整车工作模式                       $    $               $    $  ANS008.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00d2;else if((x1==0x01)&&(x2==0x00))y=@00d3;else if((x1==0x02)&&(x2==0x00))y=@00d4;else if((x1==0x03)&&(x2==0x00))y=@00d5;else y=@00d6;
  $  009.整车运行模式                       $    $               $    $  ANS009.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00d9;else if((x1==0x01)&&(x2==0x00))y=@00da;else y=@00d6;
  $  010.动力系统状态                       $    $               $    $  ANS010.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@0045;else if((x1==0x01)&&(x2==0x00))y=@0046;else y=@00d6;
  $  011.水泵状态                           $    $               $    $  ANS011.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@0001;else if((x1==0x01)&&(x2==0x00))y=@0000;else y=@00d6;
  $  012.巡航状态                           $    $               $    $  ANS012.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00db;else if((x1==0x01)&&(x2==0x00))y=@00dc;else y=@00d6;
  $  013.电机母线电压                       $    $  V            $    $  ANS013.BYTE004  $  y=x1+x2*256;
  $  014.电机转速                           $    $  rpm          $    $  ANS014.BYTE004  $  y=(x1+x2*256)-15000;
  $  015.电机扭矩                           $    $  牛顿米       $    $  ANS015.BYTE004  $  y=(x1+x2*256)*0.1-500;
  $  016.电机功率                           $    $  kw           $    $  ANS016.BYTE004  $  y=(x1+x2*256)*0.1-100;
  $  017.油门深度                           $    $  %            $    $  ANS017.BYTE004  $  y=x1+x2*256;
  $  018.刹车深度                           $    $  %            $    $  ANS018.BYTE004  $  y=x1+x2*256;
  $  019.冷却液温度                         $    $  degree C     $    $  ANS019.BYTE004  $  y=(x1+x2*256)-40;
  $  020.IPM散热器温度                      $    $  degree C     $    $  ANS020.BYTE004  $  y=(x1+x2*256)-40;
  $  021.电机温度                           $    $  degree C     $    $  ANS021.BYTE004  $  y=(x1+x2*256)-40;
  $  022.IGBT(绝缘栅双极型晶体管)温度       $    $  degree C     $    $  ANS022.BYTE004  $  y=(x1+x2*256)-40;
  $  023.A相电流                            $    $  A            $    $  ANS023.BYTE004  $  y=x1+x2*256;
  $  024.B相电流                            $    $  A            $    $  ANS024.BYTE004  $  y=x1+x2*256;
  $  025.C相电流                            $    $  A            $    $  ANS025.BYTE004  $  y=x1+x2*256;
  $  026.过载系数                           $    $  %            $    $  ANS026.BYTE004  $  y=x1;
  $  027.电动行驶里程                       $    $  km           $    $  ANS027.BYTE004  $  y=x1+x2*256+x3*256*256;
  $  028.总里程                             $    $  km           $    $  ANS028.BYTE004  $  y=x1+x2*256+x3*256*256;
  $  029.发动机目标扭矩                     $    $  牛顿米       $    $  ANS029.BYTE004  $  y=(x1+x2*256)-500;
  $  030.风扇占空比                         $    $  牛顿米       $    $  ANS030.BYTE004  $  y=x1+x2*256;
  $  031.EPB(电子驻车)状态                  $    $               $    $  ANS031.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@0009;else if((x1==0x01)&&(x2==0x00))y=@0004;else if((x1==0x02)&&(x2==0x00))y=@00ea;else if((x1==0x03)&&(x2==0x00))y=@00eb;else if((x1==0x04)&&(x2==0x00))y=@0046;else y=@00d6;
  $  032.驱动电机旋变状态                   $    $               $    $  ANS032.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@0045;else if((x1==0x01)&&(x2==0x00))y=@0046;else y=@00d6;
  $  033.驱动电机过流状态                   $    $               $    $  ANS033.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@0045;else if((x1==0x01)&&(x2==0x00))y=@0046;else y=@00d6;
  $  034.电机目标档位                       $    $               $    $  ANS034.BYTE004  $  if((x1==0x00)&&(x2==0x00))y=@00ee;else if((x1==0x01)&&(x2==0x00))y=@00ef;else if((x1==0x02)&&(x2==0x00))y=@00f0;else if((x1==0x03)&&(x2==0x00))y=@00f1;else if((x1==0x04)&&(x2==0x00))y=@00f2;else y=@00d6;
  $  035.校准状态                           $    $               $    $  ANS035.BYTE004  $  if(x1==0x00)y=@00ec;else if(x1==0x01)y=@00ed;else y=@00d6;
  $  036.错误状态                           $    $               $    $  ANS035.BYTE005  $  if(x1==0x00)y=@00f3;else y=@00d6;
  $  037.坡道坡度                           $    $               $    $  ANS035.BYTE006  $  if(((x1+x2*256)*0.1-30)<31)y=((x1+x2*256)*0.1-30);else y=@0002;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:780 30 01 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
