
    车型ID：a122

    模拟：协议模拟-->a122

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

  $*$*DTC/0f000000


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

  $%  REQ000:780 03 22 00 01 00 00 00 00       $%  ANS000:788 03 22 00 01 00 00 00 00
  $%  REQ001:780 03 22 00 03 00 00 00 00       $%  ANS001:788 03 22 00 03 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);
  $%  001:软件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流
  $  00.数据流
  $  REQ000:780 03 22 00 1B 00 00 00 00       $  ANS000:788 03 22 00 1B 00 00 00 00
  $  REQ001:780 03 22 00 1C 00 00 00 00       $  ANS001:788 03 22 00 1C 00 00 00 00
  $  REQ002:780 03 22 00 1D 00 00 00 00       $  ANS002:788 03 22 00 1D 00 00 00 00
  $  REQ003:780 03 22 00 1A 00 00 00 00       $  ANS003:788 03 22 00 1A 00 00 00 00
  $  REQ004:780 03 22 00 18 00 00 00 00       $  ANS004:788 03 22 00 18 00 00 00 00
  $  REQ005:780 03 22 00 19 00 00 00 00       $  ANS005:788 03 22 00 19 00 00 00 00
  $  REQ006:780 03 22 00 17 00 00 00 00       $  ANS006:788 03 22 00 17 00 00 00 00
  $  REQ007:780 03 22 00 1E 00 00 00 00       $  ANS007:788 03 22 00 1E 00 00 00 00
  $  REQ008:780 03 22 00 16 00 00 00 00       $  ANS008:788 03 22 00 16 00 00 00 00
  $  REQ009:780 03 22 00 15 00 00 00 00       $  ANS009:788 03 22 00 15 00 00 00 00
  $  REQ010:780 03 22 00 14 00 00 00 00       $  ANS010:788 03 22 00 14 00 00 00 00
  $  REQ011:780 03 22 00 11 00 00 00 00       $  ANS011:788 03 22 00 11 00 00 00 00
  $  REQ012:780 03 22 00 0B 00 00 00 00       $  ANS012:788 03 22 00 0B 00 00 00 00
  $  REQ013:780 03 22 00 0E 00 00 00 00       $  ANS013:788 03 22 00 0E 00 00 00 00
  $  REQ014:780 03 22 00 08 00 00 00 00       $  ANS014:788 03 22 00 08 00 00 00 00
  $  REQ015:780 03 22 00 0A 00 00 00 00       $  ANS015:788 03 22 00 0A 00 00 00 00
  $  REQ016:780 03 22 00 07 00 00 00 00       $  ANS016:788 03 22 00 07 00 00 00 00
  $  REQ017:780 03 22 00 0F 00 00 00 00       $  ANS017:788 03 22 00 0F 00 00 00 00
  $  REQ018:780 03 22 00 10 00 00 00 00       $  ANS018:788 03 22 00 10 00 00 00 00
  $  REQ019:780 03 22 00 04 00 00 00 00       $  ANS019:788 03 22 00 04 00 00 00 00
  $  REQ020:780 03 22 00 05 00 00 00 00       $  ANS020:788 03 22 00 05 00 00 00 00
  $  REQ021:780 03 22 00 06 00 00 00 00       $  ANS021:788 03 22 00 06 00 00 00 00
  $  REQ022:780 03 22 00 0C 00 00 00 00       $  ANS022:788 03 22 00 0C 00 00 00 00
  $  REQ023:780 03 22 00 0D 00 00 00 00       $  ANS023:788 03 22 00 0D 00 00 00 00
  $  REQ024:780 03 22 00 09 00 00 00 00       $  ANS024:788 03 22 00 09 00 00 00 00
  $  REQ025:780 03 22 00 13 00 00 00 00       $  ANS025:788 03 22 00 13 00 00 00 00
  $  REQ026:780 03 22 00 12 00 00 00 00       $  ANS026:788 03 22 00 12 00 00 00 00
  $  REQ027:780 03 22 00 1F 00 00 00 00       $  ANS027:788 03 22 00 1F 00 00 00 00
  $  REQ028:780 03 22 00 20 00 00 00 00       $  ANS028:788 03 22 00 20 00 00 00 00

  $  000.A相电流                            $    $  A            $    $  ANS000.BYTE004  $  if((x2*256+x1)<0x03E9) y=x2*256+x1;else y=@0108;
  $  001.B相电流                            $    $  A            $    $  ANS001.BYTE004  $  if((x2*256+x1)<0x03E9) y=x2*256+x1;else y=@0108;
  $  002.C相电流                            $    $  A            $    $  ANS002.BYTE004  $  if((x2*256+x1)<0x03E9) y=x2*256+x1;else y=@0108;
  $  003.IGBT(绝缘栅双极型晶体管)温度       $    $  degree C     $    $  ANS003.BYTE004  $  if(x1<0xC9) y=x1-40;else y=@0108;
  $  004.IPM温度                            $    $  degree C     $    $  ANS004.BYTE004  $  if(x1<0xC9) y=x1-40;else y=@0108;
  $  005.电机温度                           $    $  degree C     $    $  ANS005.BYTE004  $  if(x1<0xC9) y=x1-40;else y=@0108;
  $  006.冷却液温度                         $    $  degree C     $    $  ANS006.BYTE004  $  if(x1<0xC9) y=x1-40;else y=@0108;
  $  007.过载系数                           $    $  %            $    $  ANS007.BYTE004  $  if(x1<0x65) y=x1;else y=@0108;
  $  008.刹车深度                           $    $  %            $    $  ANS008.BYTE004  $  if(x1<0x65) y=x1;else y=@0108;
  $  009.油门深度                           $    $  %            $    $  ANS009.BYTE004  $  if(x1<0x65) y=x1;else y=@0108;
  $  010.电机功率                           $    $  kW           $    $  ANS010.BYTE004  $  if((x2*256+x1)<0x0bc2) y=(x2*256+x1)*0.1-100;else y=@0108;
  $  011.母线电压                           $    $  V            $    $  ANS011.BYTE004  $  if((x2*256+x1)<0x03E9) y=x2*256+x1;else y=@0108;
  $  012.整车档位                           $    $               $    $  ANS012.BYTE004  $  if(x1==0x00)y=@00d7;else if(x1==0x01)y=@0071;else if(x1==0x02)y=@00d8;else if(x1==0x03)y=@0072;else if(x1==0x04)y=@00c7;else y=@0108;
  $  013.动力状态                           $    $               $    $  ANS013.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@0046;else y=@0108;
  $  014.防盗状态                           $    $               $    $  ANS014.BYTE004  $  if(x1==0x00)y=@001f;else if(x1==0x01)y=@0020;else if(x1==0x02)y=@03cc;else y=@0108;
  $  015.盖子状态                           $    $               $    $  ANS015.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0108;
  $  016.启动允许                           $    $               $    $  ANS016.BYTE004  $  if(x1==0x00)y=@004d;else if(x1==0x01)y=@029d;else y=@0108;
  $  017.水泵状态                           $    $               $    $  ANS017.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0108;
  $  018.巡航状态                           $    $               $    $  ANS018.BYTE004  $  if(x1==0x00)y=@02bd;else if(x1==0x01)y=@02be;else y=@0108;
  $  019.电机状态                           $    $               $    $  ANS019.BYTE004  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@03cb;else if(x1==0x02)y=@0000;else y=@0108;
  $  020.发动机命令                         $    $               $    $  ANS020.BYTE004  $  if(x1==0x00)y=@0001;else if(x1==0x01)y=@0000;else y=@0108;
  $  021.离合器命令                         $    $               $    $  ANS021.BYTE004  $  if(x1==0x00)y=@02f7;else if(x1==0x01)y=@02f8;else y=@0108;
  $  022.整车工作模式                       $    $               $    $  ANS022.BYTE004  $  if(x1==0x00)y=@003e;else if(x1==0x01)y=@02f9;else if(x1==0x02)y=@0327;else if(x1==0x03)y=@02fa;else y=@0108;
  $  023.整车运行模式                       $    $               $    $  ANS023.BYTE004  $  if(x1==0x00)y=@0204;else if(x1==0x01)y=@0205;else y=@0108;
  $  024.主动泄放状态                       $    $               $    $  ANS024.BYTE004  $  if(x1==0x00)y=@00e6;else if(x1==0x01)y=@001f;else if(x1==0x02)y=@0046;else if(x1==0x03)y=@0692;else y=@0108;
  $  025.电机扭矩                           $    $  牛顿米       $    $  ANS025.BYTE004  $  if((x2*256+x1)<0x2711) y=(x2*256+x1)*0.1-500;else y=@0108;
  $  026.电机转速                           $    $  rpm          $    $  ANS026.BYTE004  $  if((x2*256+x1)<0x7531) y=(x2*256+x1)-15000;else y=@0108;
  $  027.电里程                             $    $  km           $    $  ANS027.BYTE004  $  if(x3<0x10) y=(x3*256*256)+(x2*256)+x1;else y=@0108;
  $  028.总里程                             $    $  km           $    $  ANS028.BYTE004  $  if(x3<0x10) y=(x3*256*256)+(x2*256)+x1;else y=@0108;

  $)  01.倾角信息
  $  01.倾角信息
  $  REQ000:780 03 22 D0 01 00 00 00 00       $  ANS000:788 03 22 D0 01 00 00 00 00

  $  000.倾角传感器是否校准       $    $         $    $  ANS000.BYTE004  $  if(x1==0x00)y=@00ec;else if(x1==0x01)y=@00ed;else y=@0108;
  $  001.倾角传感器信息状态       $    $         $    $  ANS000.BYTE005  $  if(x1==0x00)y=@0045;else if(x1==0x01)y=@00b4;else y=@0108;
  $  002.坡道坡度                 $    $  °     $    $  ANS000.BYTE006  $  y=(x2*256+x1)*0.1-30;

  $)  02.电机系统配置
  $  02.电机系统配置
  $  REQ000:780 03 22 1F FF 00 00 00 00       $  ANS000:788 03 22 1F FF 00 00 00 00

  $  000.电机系统配置       $    $       $    $  ANS000.BYTE004  $  if(x1==0x00)y=@0255;else if(x1==0x01)y=@0256;else if(x1==0x02)y=@092f;else y=@0930;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:780 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
