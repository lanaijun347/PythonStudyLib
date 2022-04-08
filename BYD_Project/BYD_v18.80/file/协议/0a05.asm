
    车型ID：0a05

    模拟：协议模拟-->0a05

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

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/85000000


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

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%02d.%02d.%02d],x1,x2,x3);
  $%  001:软件版本:        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%02d.%02d.%02d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:780 03 22 00 03 00 00 00 00       $  ANS000:788 03 22 00 03 00 00 00 00
  $  REQ001:780 03 22 00 04 00 00 00 00       $  ANS001:788 03 22 00 04 00 00 00 00
  $  REQ002:780 03 22 00 05 00 00 00 00       $  ANS002:788 03 22 00 05 00 00 00 00
  $  REQ003:780 03 22 00 06 00 00 00 00       $  ANS003:788 03 22 00 06 00 00 00 00
  $  REQ004:780 03 22 00 07 00 00 00 00       $  ANS004:788 03 22 00 07 00 00 00 00
  $  REQ005:780 03 22 00 08 00 00 00 00       $  ANS005:788 03 22 00 08 00 00 00 00
  $  REQ006:780 03 22 00 09 00 00 00 00       $  ANS006:788 03 22 00 09 00 00 00 00
  $  REQ007:780 03 22 00 0A 00 00 00 00       $  ANS007:788 03 22 00 0A 00 00 00 00
  $  REQ008:780 03 22 00 0B 00 00 00 00       $  ANS008:788 03 22 00 0B 00 00 00 00
  $  REQ009:780 03 22 00 0C 00 00 00 00       $  ANS009:788 03 22 00 0C 00 00 00 00
  $  REQ010:780 03 22 00 0D 00 00 00 00       $  ANS010:788 03 22 00 0D 00 00 00 00
  $  REQ011:780 03 22 00 0E 00 00 00 00       $  ANS011:788 03 22 00 0E 00 00 00 00
  $  REQ012:780 03 22 00 0F 00 00 00 00       $  ANS012:788 03 22 00 0F 00 00 00 00
  $  REQ013:780 03 22 00 20 00 00 00 00       $  ANS013:788 03 22 00 20 00 00 00 00
  $  REQ014:780 03 22 00 21 00 00 00 00       $  ANS014:788 03 22 00 21 00 00 00 00
  $  REQ015:780 03 22 00 22 00 00 00 00       $  ANS015:788 03 22 00 22 00 00 00 00
  $  REQ016:780 03 22 00 23 00 00 00 00       $  ANS016:788 03 22 00 23 00 00 00 00
  $  REQ017:780 03 22 00 24 00 00 00 00       $  ANS017:788 03 22 00 24 00 00 00 00
  $  REQ018:780 03 22 00 25 00 00 00 00       $  ANS018:788 03 22 00 25 00 00 00 00
  $  REQ019:780 03 22 00 26 00 00 00 00       $  ANS019:788 03 22 00 26 00 00 00 00
  $  REQ020:780 03 22 00 10 00 00 00 00       $  ANS020:788 03 22 00 10 00 00 00 00
  $  REQ021:780 03 22 00 11 00 00 00 00       $  ANS021:788 03 22 00 11 00 00 00 00
  $  REQ022:780 03 22 00 12 00 00 00 00       $  ANS022:788 03 22 00 12 00 00 00 00
  $  REQ023:780 03 22 00 13 00 00 00 00       $  ANS023:788 03 22 00 13 00 00 00 00
  $  REQ024:780 03 22 00 14 00 00 00 00       $  ANS024:788 03 22 00 14 00 00 00 00
  $  REQ025:780 03 22 00 15 00 00 00 00       $  ANS025:788 03 22 00 15 00 00 00 00
  $  REQ026:780 03 22 00 16 00 00 00 00       $  ANS026:788 03 22 00 16 00 00 00 00
  $  REQ027:780 03 22 00 17 00 00 00 00       $  ANS027:788 03 22 00 17 00 00 00 00
  $  REQ028:780 03 22 00 18 00 00 00 00       $  ANS028:788 03 22 00 18 00 00 00 00
  $  REQ029:780 03 22 00 19 00 00 00 00       $  ANS029:788 03 22 00 19 00 00 00 00
  $  REQ030:780 03 22 00 1A 00 00 00 00       $  ANS030:788 03 22 00 1A 00 00 00 00
  $  REQ031:780 03 22 00 1B 00 00 00 00       $  ANS031:788 03 22 00 1B 00 00 00 00
  $  REQ032:780 03 22 00 1C 00 00 00 00       $  ANS032:788 03 22 00 1C 00 00 00 00
  $  REQ033:780 03 22 00 1D 00 00 00 00       $  ANS033:788 03 22 00 1D 00 00 00 00
  $  REQ034:780 03 22 00 1E 00 00 00 00       $  ANS034:788 03 22 00 1E 00 00 00 00
  $  REQ035:780 03 22 00 1F 00 00 00 00       $  ANS035:788 03 22 00 1F 00 00 00 00

  $  000.电机状态                           $    $               $    $  ANS000.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@03cb;else if(x==0x02)y=@0000;else y=@0108;
  $  001.发动机启动命令                     $    $               $    $  ANS001.BYTE004  $  if(x==0x00)y=@0066;else if(x==0x01)y=@0000;else y=@0108;
  $  002.离合器强制脱开命令                 $    $               $    $  ANS002.BYTE004  $  if(x==0x00)y=@02f7;else if(x==0x01)y=@03ce;else y=@0108;
  $  003.启动允许                           $    $               $    $  ANS003.BYTE004  $  if(x==0x00)y=@004d;else if(x==0x01)y=@029d;else y=@0108;
  $  004.防盗解除状态                       $    $               $    $  ANS004.BYTE004  $  if(x==0x00)y=@001f;else if(x==0x01)y=@0020;else if(x==0x02)y=@03cc;else y=@0108;
  $  005.主动泄放状态                       $    $               $    $  ANS005.BYTE004  $  if(x==0x00)y=@00e9;else if(x==0x01)y=@001f;else if(x==0x02)y=@0046;else if(x==0x03)y=@00e6;else y=@0108;
  $  006.盖子状态                           $    $               $    $  ANS006.BYTE004  $  if(x==0x00)y=@0001;else if(x==0x01)y=@0000;else y=@0108;
  $  007.整车档位                           $    $               $    $  ANS007.BYTE004  $  if(x==0x00)y=@0073;else if(x==0x01)y=@0074;else if(x==0x02)y=@0076;else if(x==0x03)y=@0075;else if(x==0x04)y=@00c7;else y=@0108;
  $  008.整车工作模式                       $    $               $    $  ANS008.BYTE004  $  if(x==0x00)y=@003e;else if(x==0x01)y=@02f9;else if(x==0x02)y=@0327;else if(x==0x03)y=@02fa;else y=@0108;
  $  009.整车运行模式                       $    $               $    $  ANS009.BYTE004  $  if(x==0x00)y=@0204;else if(x==0x01)y=@0205;else y=@0108;
  $  010.动力系统状态                       $    $               $    $  ANS010.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@0046;else y=@0108;
  $  011.水泵状态                           $    $               $    $  ANS011.BYTE004  $  if(x==0x00)y=@0001;else if(x==0x01)y=@0000;else y=@0108;
  $  012.巡航状态                           $    $               $    $  ANS012.BYTE004  $  if(x==0x00)y=@02bd;else if(x==0x01)y=@02be;else y=@0108;
  $  013.OK灯信息                           $    $               $    $  ANS013.BYTE004  $  if(x==0x00)y=@02bf;else if(x==0x01)y=@02c0;else y=@0108;
  $  014.风扇状态                           $    $               $    $  ANS014.BYTE004  $  if(x==0x00)y=@003e;else if(x==0x01)y=@023b;else if(x==0x02)y=@03cd;else y=@0108;
  $  015.防盗状态                           $    $               $    $  ANS015.BYTE004  $  if(x==0x00)y=@001f;else if(x==0x01)y=@0020;else if(x==0x02)y=@03cc;else y=@0108;
  $  016.EPB(电子驻车)状态                  $    $               $    $  ANS016.BYTE004  $  if(x==0x00)y=@001f;else if(x==0x01)y=@0020;else if(x==0x02)y=@03cc;else y=@0108;
  $  017.电机旋变状态                       $    $               $    $  ANS017.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@0046;else y=@0108;
  $  018.IPM状态                            $    $               $    $  ANS018.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@0046;else y=@0108;
  $  019.过流状态                           $    $               $    $  ANS019.BYTE004  $  if(x==0x00)y=@0045;else if(x==0x01)y=@0046;else y=@0108;
  $  020.电机母线电压                       $    $  V            $    $  ANS020.BYTE004  $  if((x2>0x03)||((x2==0x03)&&(x1>0xE8)))y=@01e5;else y=x2*256+x1;
  $  021.电机转速                           $    $  rpm          $    $  ANS021.BYTE004  $  if((x2>0x75)||((x2==0x75)&&(x1>0x30)))y=@01e5;else y=x2*256+x1-15000;
  $  022.电机扭矩                           $    $  NM           $    $  ANS022.BYTE004  $  if((x2>0x27)||((x2==0x27)&&(x1>0x10)))y=@01e5;else y=0.1*(x2*256+x1)-500;
  $  023.电机功率                           $    $  KM           $    $  ANS023.BYTE004  $  if((x2>0x0B)||((x2==0x0B)&&(x1>0xC1)))y=@01e5;else y=0.1*(x2*256+x1)-100;
  $  024.油门深度                           $    $  %            $    $  ANS024.BYTE004  $  if(x>0x64)y=@01e5;else y=x;
  $  025.刹车深度                           $    $  %            $    $  ANS025.BYTE004  $  if(x>0x64)y=@01e5;else y=x;
  $  026.冷却液温度                         $    $  degree C     $    $  ANS026.BYTE004  $  if((x>0xC8))y=@01e5;else y=x-40;
  $  027.IPM散热器温度                      $    $  degree C     $    $  ANS027.BYTE004  $  if((x>0xC8))y=@01e5;else y=x-40;
  $  028.电机温度                           $    $  degree C     $    $  ANS028.BYTE004  $  if((x>0xC8))y=@01e5;else y=x-40;
  $  029.IGBT(绝缘栅双极型晶体管)温度       $    $  degree C     $    $  ANS029.BYTE004  $  if((x>0xC8))y=@01e5;else y=x-40;
  $  030.电机A相电流                        $    $  A            $    $  ANS030.BYTE004  $  if((x2>0x03)||((x2==0x03)&&(x1>0xE8)))y=@01e5;else y=x2*256+x1;
  $  031.电机B相电流                        $    $  A            $    $  ANS031.BYTE004  $  if((x2>0x03)||((x2==0x03)&&(x1>0xE8)))y=@01e5;else y=x2*256+x1;
  $  032.电机C相电流                        $    $  A            $    $  ANS032.BYTE004  $  if((x2>0x03)||((x2==0x03)&&(x1>0xE8)))y=@01e5;else y=x2*256+x1;
  $  033.电机过载系数                       $    $  %            $    $  ANS033.BYTE004  $  if(x>0x64)y=@01e5;else y=x;
  $  034.电机目标扭矩                       $    $  NM           $    $  ANS034.BYTE004  $  if((x2>0x27)||((x2==0x27)&&(x1>0x10)))y=@01e5;else y=0.1*(x2*256+x1)-500;
  $  035.发动机目标扭矩                     $    $  NM           $    $  ANS035.BYTE004  $  if((x2>0x27)||((x2==0x27)&&(x1>0x10)))y=@01e5;else y=0.1*(x2*256+x1)-500;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:780 30 01 04 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
