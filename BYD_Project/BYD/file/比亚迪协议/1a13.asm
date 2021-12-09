
    车型ID：1a13

    模拟：协议模拟-->1a13

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:780 02 10 01 00 00 00 00 00       $~  ANS000:788 02 10 01 00 00 00 00 00
  $~  REQ001:780 02 10 03 00 00 00 00 00       $~  ANS001:788 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:780 02 3E 80 00 00 00 00 00       $!  ANS000:788 02 3E 80 00 00 00 00 00

退出命令:

  $@  REQ000:780 02 10 01 00 00 00 00 00       $@  ANS000:788 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:780 03 19 02 09 00 00 00 00       $#  ANS000:788 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:780 04 14 FF FF FF 00 00 00       $$  ANS000:788 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:780 03 22 F1 93 00 00 00 00       $%  ANS000:788 03 22 F1 93 00 00 00 00
  $%  REQ001:780 03 22 F1 94 00 00 00 00       $%  ANS001:788 03 22 F1 94 00 00 00 00
  $%  REQ002:780 03 22 F1 95 00 00 00 00       $%  ANS002:788 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

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
  $  REQ013:780 03 22 00 10 00 00 00 00       $  ANS013:788 03 22 00 10 00 00 00 00
  $  REQ014:780 03 22 00 11 00 00 00 00       $  ANS014:788 03 22 00 11 00 00 00 00
  $  REQ015:780 03 22 00 12 00 00 00 00       $  ANS015:788 03 22 00 12 00 00 00 00
  $  REQ016:780 03 22 00 13 00 00 00 00       $  ANS016:788 03 22 00 13 00 00 00 00
  $  REQ017:780 03 22 00 14 00 00 00 00       $  ANS017:788 03 22 00 14 00 00 00 00
  $  REQ018:780 03 22 00 15 00 00 00 00       $  ANS018:788 03 22 00 15 00 00 00 00
  $  REQ019:780 03 22 00 16 00 00 00 00       $  ANS019:788 03 22 00 16 00 00 00 00
  $  REQ020:780 03 22 00 17 00 00 00 00       $  ANS020:788 03 22 00 17 00 00 00 00
  $  REQ021:780 03 22 00 18 00 00 00 00       $  ANS021:788 03 22 00 18 00 00 00 00
  $  REQ022:780 03 22 00 19 00 00 00 00       $  ANS022:788 03 22 00 19 00 00 00 00
  $  REQ023:780 03 22 00 1A 00 00 00 00       $  ANS023:788 03 22 00 1A 00 00 00 00
  $  REQ024:780 03 22 00 1B 00 00 00 00       $  ANS024:788 03 22 00 1B 00 00 00 00
  $  REQ025:780 03 22 00 1C 00 00 00 00       $  ANS025:788 03 22 00 1C 00 00 00 00
  $  REQ026:780 03 22 00 1D 00 00 00 00       $  ANS026:788 03 22 00 1D 00 00 00 00
  $  REQ027:780 03 22 00 1E 00 00 00 00       $  ANS027:788 03 22 00 1E 00 00 00 00
  $  REQ028:780 03 22 00 1F 00 00 00 00       $  ANS028:788 03 22 00 1F 00 00 00 00
  $  REQ029:780 03 22 00 20 00 00 00 00       $  ANS029:788 03 22 00 20 00 00 00 00
  $  REQ030:780 03 22 00 21 00 00 00 00       $  ANS030:788 03 22 00 21 00 00 00 00
  $  REQ031:780 03 22 00 22 00 00 00 00       $  ANS031:788 03 22 00 22 00 00 00 00
  $  REQ032:780 03 22 00 23 00 00 00 00       $  ANS032:788 03 22 00 23 00 00 00 00
  $  REQ033:780 03 22 00 24 00 00 00 00       $  ANS033:788 03 22 00 24 00 00 00 00
  $  REQ034:780 03 22 00 25 00 00 00 00       $  ANS034:788 03 22 00 25 00 00 00 00
  $  REQ035:780 03 22 00 26 00 00 00 00       $  ANS035:788 03 22 00 26 00 00 00 00
  $  REQ036:780 03 22 00 27 00 00 00 00       $  ANS036:788 03 22 00 27 00 00 00 00
  $  REQ037:780 03 22 00 28 00 00 00 00       $  ANS037:788 03 22 00 28 00 00 00 00
  $  REQ038:780 03 22 00 29 00 00 00 00       $  ANS038:788 03 22 00 29 00 00 00 00
  $  REQ039:780 03 22 00 2A 00 00 00 00       $  ANS039:788 03 22 00 2A 00 00 00 00
  $  REQ040:780 03 22 00 2B 00 00 00 00       $  ANS040:788 03 22 00 2B 00 00 00 00
  $  REQ041:780 03 22 00 2C 00 00 00 00       $  ANS041:788 03 22 00 2C 00 00 00 00
  $  REQ042:780 03 22 00 2D 00 00 00 00       $  ANS042:788 03 22 00 2D 00 00 00 00
  $  REQ043:780 03 22 00 2F 00 00 00 00       $  ANS043:788 03 22 00 2F 00 00 00 00
  $  REQ044:780 03 22 00 33 00 00 00 00       $  ANS044:788 03 22 00 33 00 00 00 00
  $  REQ045:780 03 22 00 34 00 00 00 00       $  ANS045:788 03 22 00 34 00 00 00 00
  $  REQ046:780 03 22 00 57 00 00 00 00       $  ANS046:788 03 22 00 57 00 00 00 00
  $  REQ047:780 03 22 00 58 00 00 00 00       $  ANS047:788 03 22 00 58 00 00 00 00
  $  REQ048:780 03 22 00 59 00 00 00 00       $  ANS048:788 03 22 00 59 00 00 00 00

  $  000:前驱动电机状态                     $    $               $    $  ANS000.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@03d4;else if((x1 == 0x01)&&(x2==0x00)) y=@03d5;else if((x1 == 0x02)&&(x2==0x00)) y=@0005;else y=@001c;
  $  001:发动机启动命令                     $    $               $    $  ANS001.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@04f5;else if((x1 == 0x01)&&(x2==0x00)) y=@04f6;else y=@001c;
  $  002:离合器强制脱开命令                 $    $               $    $  ANS002.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@04f7;else if((x1 == 0x01)&&(x2==0x00)) y=@04f8;else y=@001c;
  $  003:启动允许                           $    $               $    $  ANS003.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@03d6;else if((x1 == 0x01)&&(x2==0x00)) y=@0727;else y=@001c;
  $  004:防盗解除状态                       $    $               $    $  ANS004.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0501;else if((x1 == 0x01)&&(x2==0x00)) y=@0502;else if((x1 == 0x02)&&(x2==0x00)) y=@0726;else y=@001c;
  $  005:主动泄放状态                       $    $               $    $  ANS005.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@01b8;else if((x1 == 0x01)&&(x2==0x00)) y=@05e2;else if((x1 == 0x02)&&(x2==0x00)) y=@03de;else if((x1 == 0x03)&&(x2==0x00)) y=@01d1;else y=@001c;
  $  006:盖子状态                           $    $               $    $  ANS006.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0004;else if((x1 == 0x01)&&(x2==0x00)) y=@0005;else y=@001c;
  $  007:整车档位                           $    $               $    $  ANS007.BYTE004  $  if((x1 == 0x01)&&(x2==0x00)) y=@00c9;else if((x1 == 0x02)&&(x2==0x00)) y=@00ca;else if((x1 == 0x03)&&(x2==0x00)) y=@00cb;else if((x1 == 0x04)&&(x2==0x00)) y=@00cc;else y=@001c;
  $  008:整车工作模式                       $    $               $    $  ANS008.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@00d2;else if((x1 == 0x01)&&(x2==0x00)) y=@00e7;else if((x1 == 0x02)&&(x2==0x00)) y=@00e8;else if((x1 == 0x03)&&(x2==0x00)) y=@00e9;else y=@001c;
  $  009:整车运行模式                       $    $               $    $  ANS009.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0728;else if((x1 == 0x01)&&(x2==0x00)) y=@0729;else y=@001c;
  $  010:动力系统状态                       $    $               $    $  ANS010.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0022;else if((x1 == 0x01)&&(x2==0x00)) y=@0059;else y=@001c;
  $  011:水泵状态                           $    $               $    $  ANS011.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0004;else if((x1 == 0x01)&&(x2==0x00)) y=@0005;else y=@001c;
  $  012:巡航状态                           $    $               $    $  ANS012.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0524;else if((x1 == 0x01)&&(x2==0x00)) y=@0525;else y=@001c;
  $  013:母线电压                           $    $  V            $    $  ANS013.BYTE004  $  y=(x2*256+x1);
  $  014:转速                               $    $  rpm          $    $  ANS014.BYTE004  $  y=(x2*256+x1)-15000;
  $  015:扭矩                               $    $  N·M         $    $  ANS015.BYTE004  $  y=(x1*26/255)+(x2*25.6)-500;
  $  016:功率                               $    $  kw           $    $  ANS016.BYTE004  $  y=(x1*26/255)+(x2*25.6)-100;
  $  017:油门深度                           $    $  %            $    $  ANS017.BYTE004  $  y=(x2*256+x1);
  $  018:刹车深度                           $    $  %            $    $  ANS018.BYTE004  $  if((x1 <101)&&(x2==0x00)) y=x1;else if((x1 == 0xFF)&&(x2==0x00)) y=@072b;else y=@001c;
  $  019:冷却液温度                         $    $  degree C     $    $  ANS019.BYTE004  $  y=(x2*256+x1)-40;
  $  020:IPM散热器温度                      $    $  degree C     $    $  ANS020.BYTE004  $  y=(x2*256+x1)-40;
  $  021:电机温度                           $    $  degree C     $    $  ANS021.BYTE004  $  y=(x2*256+x1)-40;
  $  022:IGBT(绝缘栅双极型晶体管)温度       $    $  degree C     $    $  ANS022.BYTE004  $  y=(x2*256+x1)-40;
  $  023:A相电流                            $    $  A            $    $  ANS023.BYTE004  $  y=(x2*256+x1);
  $  024:B相电流                            $    $  A            $    $  ANS024.BYTE004  $  y=(x2*256+x1);
  $  025:C相电流                            $    $  A            $    $  ANS025.BYTE004  $  y=(x2*256+x1);
  $  026:过载系数                           $    $  %            $    $  ANS026.BYTE004  $  y=(x2*256+x1);
  $  027:后驱目标扭矩                       $    $  N·M         $    $  ANS027.BYTE004  $  y=(x1*26/255)+(x2*25.6)-500;
  $  028:发动机目标扭矩                     $    $  N·M         $    $  ANS028.BYTE004  $  y=(x1*26/255)+(x2*25.6)-500;
  $  029:OK灯信息                           $    $               $    $  ANS029.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@00a2;else if((x1 == 0x01)&&(x2==0x00)) y=@00a1;else if((x1 == 0x02)&&(x2==0x00)) y=@072a;else y=@001c;
  $  030:散热风扇占空比                     $    $  %            $    $  ANS030.BYTE004  $  y=(x2*256+x1);
  $  031:后驱防盗状态                       $    $               $    $  ANS031.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0501;else if((x1 == 0x01)&&(x2==0x00)) y=@0502;else if((x1 == 0x02)&&(x2==0x00)) y=@0726;else y=@001c;
  $  032:EPB(电子驻车)状态                  $    $               $    $  ANS032.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@00de;else if((x1 == 0x01)&&(x2==0x00)) y=@00aa;else if((x1 == 0x02)&&(x2==0x00)) y=@0526;else if((x1 == 0x03)&&(x2==0x00)) y=@0024;else if((x1 == 0x04)&&(x2==0x00)) y=@0059;else y=@001c;
  $  033:旋变状态                           $    $               $    $  ANS033.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0022;else if((x1 == 0x01)&&(x2==0x00)) y=@0059;else y=@001c;
  $  034:IPM状态                            $    $               $    $  ANS034.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0022;else if((x1 == 0x01)&&(x2==0x00)) y=@0059;else y=@001c;
  $  035:过流状态                           $    $               $    $  ANS035.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0022;else if((x1 == 0x01)&&(x2==0x00)) y=@0059;else y=@001c;
  $  036:电里程                             $    $  km           $    $  ANS036.BYTE004  $  y=(x3*256*256+x2*256+x1);
  $  037:总里程                             $    $  km           $    $  ANS037.BYTE004  $  y=(x3*256*256+x2*256+x1);
  $  038:前驱电机系统配置类型               $    $               $    $  ANS038.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0507;else if((x1 == 0x01)&&(x2==0x00)) y=@0736;else if((x1 == 0x02)&&(x2==0x00)) y=@000f;else y=@001c;
  $  039:发动机启动原因                     $    $               $    $  ANS039.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0022;else if((x1 == 0x01)&&(x2==0x00)) y=@05f2;else if((x1 == 0x02)&&(x2==0x00)) y=@072d;else if((x1 == 0x03)&&(x2==0x00)) y=@0517;else if((x1 == 0x04)&&(x2==0x00)) y=@072e;else if((x1 == 0x05)&&(x2==0x00)) y=@072f;else if((x1 == 0x06)&&(x2==0x00)) y=@0730;else if((x1 == 0x07)&&(x2==0x00)) y=@0731;else if((x1 == 0x08)&&(x2==0x00)) y=@0732;else if((x1 == 0x09)&&(x2==0x00)) y=@0733;else if((x1 == 0x0A)&&(x2==0x00)) y=@0734;else if((x1 == 0x0B)&&(x2==0x00)) y=@0735;else y=@001c;
  $  040:整车车速                           $    $  km/h         $    $  ANS040.BYTE004  $  y=(x2*256+x1)*0.1;
  $  041:前电机目标档位                     $    $               $    $  ANS041.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0737;else if((x1 == 0x01)&&(x2==0x00)) y=@050a;else if((x1 == 0x02)&&(x2==0x00)) y=@050b;else if((x1 == 0x03)&&(x2==0x00)) y=@050c;else if((x1 == 0x04)&&(x2==0x00)) y=@050d;else y=@001c;
  $  042:前电机实际档位                     $    $               $    $  ANS042.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@0737;else if((x1 == 0x01)&&(x2==0x00)) y=@050a;else if((x1 == 0x02)&&(x2==0x00)) y=@050b;else if((x1 == 0x03)&&(x2==0x00)) y=@050c;else if((x1 == 0x04)&&(x2==0x00)) y=@050d;else y=@001c;
  $  043:是否校准                           $    $               $    $  ANS043.BYTE004  $  if(x1==0x00) y=@01b4;else if(x1==0x01) y=@01b5;else y=@072c;
  $  044:信号状态                           $    $               $    $  ANS043.BYTE005  $  if(x1==0x00) y=@054c;else if(x1==0x01) y=@0099;else y=@072c;
  $  045:坡道坡度                           $    $  °           $    $  ANS043.BYTE006  $  if(((x1+x2*256)*0.1)<31) y=(x1+x2*256)*0.1;else if(((x1+(x2-256)*256)*0.1)>(0-31)) y=(x1+(x2-256)*256)*0.1;else y=@072c;
  $  046:电池配置                           $    $               $    $  ANS044.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@000f;else if((x1 == 0x01)&&(x2==0x00)) y=@0769;else if((x1 == 0x02)&&(x2==0x00)) y=@076a;else if((x1 == 0x03)&&(x2==0x00)) y=@076b;else y=@001c;
  $  047:巡航配置                           $    $               $    $  ANS045.BYTE004  $  if((x1 == 0x00)&&(x2==0x00)) y=@000f;else if((x1 == 0x01)&&(x2==0x00)) y=@03fe;else if((x1 == 0x02)&&(x2==0x00)) y=@03ff;else y=@001c;
  $  048:倾角传感器是否校准                 $    $               $    $  ANS046.BYTE004  $  if(x1==0x00) y=@01b5;else if(x1==0x01) y=@04c5;else y=@001c;
  $  049:倾角传感器信息状态                 $    $               $    $  ANS047.BYTE004  $  if(x1==0x00) y=@01b5;else if(x1==0x01) y=@0022;else y=@001c;
  $  050:倾角值                             $    $               $    $  ANS048.BYTE004  $  y=x1-100;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:780 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
