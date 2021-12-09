
    车型ID：1711

    模拟：协议模拟-->1711

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7E1 02 10 01 00 00 00 00 00       $~  ANS000:7E9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E1 02 3E 80 00 00 00 00 00       $!  ANS000:7E9 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E1 05 18 00 FF FF FF 00 00       $#  ANS000:7E9 05 18 00 FF FF FF 00 00

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

  $$  REQ000:7E1 04 14 FF FF FF 00 00 00       $$  ANS000:7E9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E1 03 22 F1 92 00 00 00 00       $%  ANS000:7E9 03 22 F1 92 00 00 00 00
  $%  REQ001:7E1 03 22 F1 93 00 00 00 00       $%  ANS001:7E9 03 22 F1 93 00 00 00 00
  $%  REQ002:7E1 03 22 F1 94 00 00 00 00       $%  ANS002:7E9 03 22 F1 94 00 00 00 00
  $%  REQ003:7E1 03 22 F1 95 00 00 00 00       $%  ANS003:7E9 03 22 F1 95 00 00 00 00
  $%  REQ004:7E1 03 22 F1 99 00 00 00 00       $%  ANS004:7E9 03 22 F1 99 00 00 00 00

  $%  000:硬件编号:            $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:硬件版本信息:        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2);
  $%  002:软件编号:            $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:软件版本信息:        $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2);
  $%  004:编程日期:            $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X %02X %02X %02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E1 03 22 00 05 00 00 00 00       $  ANS000:7E9 03 22 00 05 00 00 00 00
  $  REQ001:7E1 03 22 00 06 00 00 00 00       $  ANS001:7E9 03 22 00 06 00 00 00 00
  $  REQ002:7E1 03 22 00 07 00 00 00 00       $  ANS002:7E9 03 22 00 07 00 00 00 00
  $  REQ003:7E1 03 22 00 08 00 00 00 00       $  ANS003:7E9 03 22 00 08 00 00 00 00
  $  REQ004:7E1 03 22 00 09 00 00 00 00       $  ANS004:7E9 03 22 00 09 00 00 00 00
  $  REQ005:7E1 03 22 00 0A 00 00 00 00       $  ANS005:7E9 03 22 00 0A 00 00 00 00
  $  REQ006:7E1 03 22 00 0B 00 00 00 00       $  ANS006:7E9 03 22 00 0B 00 00 00 00
  $  REQ007:7E1 03 22 00 0C 00 00 00 00       $  ANS007:7E9 03 22 00 0C 00 00 00 00
  $  REQ008:7E1 03 22 00 0F 00 00 00 00       $  ANS008:7E9 03 22 00 0F 00 00 00 00
  $  REQ009:7E1 03 22 00 10 00 00 00 00       $  ANS009:7E9 03 22 00 10 00 00 00 00
  $  REQ010:7E1 03 22 00 11 00 00 00 00       $  ANS010:7E9 03 22 00 11 00 00 00 00
  $  REQ011:7E1 03 22 00 12 00 00 00 00       $  ANS011:7E9 03 22 00 12 00 00 00 00
  $  REQ012:7E1 03 22 00 13 00 00 00 00       $  ANS012:7E9 03 22 00 13 00 00 00 00
  $  REQ013:7E1 03 22 00 15 00 00 00 00       $  ANS013:7E9 03 22 00 15 00 00 00 00
  $  REQ014:7E1 03 22 00 20 00 00 00 00       $  ANS014:7E9 03 22 00 20 00 00 00 00
  $  REQ015:7E1 03 22 00 21 00 00 00 00       $  ANS015:7E9 03 22 00 21 00 00 00 00
  $  REQ016:7E1 03 22 00 22 00 00 00 00       $  ANS016:7E9 03 22 00 22 00 00 00 00
  $  REQ017:7E1 03 22 00 23 00 00 00 00       $  ANS017:7E9 03 22 00 23 00 00 00 00
  $  REQ018:7E1 03 22 00 24 00 00 00 00       $  ANS018:7E9 03 22 00 24 00 00 00 00
  $  REQ019:7E1 03 22 00 25 00 00 00 00       $  ANS019:7E9 03 22 00 25 00 00 00 00
  $  REQ020:7E1 03 22 00 26 00 00 00 00       $  ANS020:7E9 03 22 00 26 00 00 00 00
  $  REQ021:7E1 03 22 00 27 00 00 00 00       $  ANS021:7E9 03 22 00 27 00 00 00 00
  $  REQ022:7E1 03 22 00 28 00 00 00 00       $  ANS022:7E9 03 22 00 28 00 00 00 00
  $  REQ023:7E1 03 22 00 29 00 00 00 00       $  ANS023:7E9 03 22 00 29 00 00 00 00
  $  REQ024:7E1 03 22 00 2A 00 00 00 00       $  ANS024:7E9 03 22 00 2A 00 00 00 00
  $  REQ025:7E1 03 22 01 00 00 00 00 00       $  ANS025:7E9 03 22 01 00 00 00 00 00
  $  REQ026:7E1 03 22 01 01 00 00 00 00       $  ANS026:7E9 03 22 01 01 00 00 00 00
  $  REQ027:7E1 03 22 01 02 00 00 00 00       $  ANS027:7E9 03 22 01 02 00 00 00 00

  $  000:制动踏板状态                                $    $               $    $  ANS000.BYTE004  $  if(x1==0) y=@00aa; else if(x1==1) y=@0062; else if(x1==2) y=@00bd; else if(x1==3) y=@00be; else y=@001c;
  $  001:加速踏板位置状态                            $    $               $    $  ANS001.BYTE004  $  if(x1==0) y=@0022; else if(x1==1) y=@00be; else y=@001c;
  $  002:加速踏板位置                                $    $  %            $    $  ANS001.BYTE005  $  y=x1*99.96/255;
  $  003:节气门位置状态                              $    $               $    $  ANS002.BYTE004  $  if(x1==0) y=@0022; else if(x1==1) y=@00be; else y=@001c;
  $  004:节气门位置                                  $    $  %            $    $  ANS002.BYTE005  $  y=x1*99.96/255;
  $  005:换挡手柄                                    $    $               $    $  ANS003.BYTE004  $  if(x1==0) y=@00bf;else if(x1==1) y=@00c9; else if(x1==2) y=@00ca;else if(x1==3) y=@00cb; else if(x1==4) y=@00cc;else if(x1==5) y=@00cd;else if(x1==6) y=@00ce; else if(x1==7) y=@00cf;else if(x1==8) y=@00d0; else y=@001c;
  $  006:当前档位                                    $    $               $    $  ANS003.BYTE005  $  if(x1==0) y=@00bf;else if(x1==1) y=@00c0; else if(x1==2) y=@00c1;else if(x1==3) y=@00c2; else if(x1==4) y=@00c3;else if(x1==5) y=@00c4;else if(x1==6) y=@00c5; else if(x1==7) y=@00c6; else if(x1==8) y=@00c7;else if(x1==9) y=@00c8;  else y=@001c;
  $  007:TCU(自动变速箱控制器)发动机传感器转速       $    $  rpm          $    $  ANS004.BYTE004  $  y=x1*64+x2*0.25;
  $  008:输入轴1传感器转速                           $    $  rpm          $    $  ANS005.BYTE004  $  y=x1*64+x2*0.25;
  $  009:输入轴2传感器转速                           $    $  rpm          $    $  ANS006.BYTE004  $  y=x1*64+x2*0.25;
  $  010:TCU(自动变速箱控制器)计算车速               $    $  km/h         $    $  ANS007.BYTE004  $  y=(x1*4488.0+x2*17.5)/255;
  $  011:TCU(自动变速箱控制器)计算车速状态           $    $               $    $  ANS007.BYTE006  $  if(x1==0) y=@0022; else if(x1==1) y=@00be; else y=@001c;
  $  012:控制单元中的温度传感器                      $    $  degree C     $    $  ANS008.BYTE004  $  y=x1-60;
  $  013:电瓶电压                                    $    $  V            $    $  ANS009.BYTE004  $  y=x1*4.48+x2*4.5/255;
  $  014:传感器电压                                  $    $  V            $    $  ANS009.BYTE006  $  y=x1*382.54/255+x2*1.49/255;
  $  015:冷却液温度                                  $    $  degree C     $    $  ANS010.BYTE004  $  y=x1-60;
  $  016:进气温度                                    $    $  degree C     $    $  ANS010.BYTE005  $  y=x1-60;
  $  017:高原系数                                    $    $               $    $  ANS011.BYTE004  $  y=x1*3.98/255;
  $  018:CAN发动机转速                               $    $  rpm          $    $  ANS012.BYTE004  $  y=x1*64+x2*64/255;
  $  019:CAN发动机转速状态                           $    $               $    $  ANS012.BYTE006  $  if(x1==0) y=@0022; else if(x1==1) y=@00be; else y=@001c;
  $  020:主油路1压力供给                             $    $  Mpa          $    $  ANS013.BYTE004  $  y=x1*0.04;
  $  021:主油路2压力供给                             $    $  Mpa          $    $  ANS013.BYTE005  $  y=x1*0.04;
  $  022:油泵供给压力                                $    $  Mpa          $    $  ANS013.BYTE006  $  y=(x1*637.13+x2*2.49)/255;
  $  023:促动器1位置传感器1                          $    $               $    $  ANS014.BYTE004  $  y=x1*256+x2;
  $  024:促动器1位置传感器2                          $    $               $    $  ANS014.BYTE006  $  y=x1*256+x2;
  $  025:促动器2位置传感器1                          $    $               $    $  ANS015.BYTE004  $  y=x1*256+x2;
  $  026:促动器2位置传感器2                          $    $               $    $  ANS015.BYTE006  $  y=x1*256+x2;
  $  027:促动器3位置传感器1                          $    $               $    $  ANS016.BYTE004  $  y=x1*256+x2;
  $  028:促动器3位置传感器2                          $    $               $    $  ANS016.BYTE006  $  y=x1*256+x2;
  $  029:促动器4位置传感器1                          $    $               $    $  ANS017.BYTE004  $  y=x1*256+x2;
  $  030:促动器4位置传感器2                          $    $               $    $  ANS017.BYTE006  $  y=x1*256+x2;
  $  031:离合器1最大位置                             $    $               $    $  ANS018.BYTE004  $  y=x1*256+x2;
  $  032:离合器2最大位置                             $    $               $    $  ANS018.BYTE006  $  y=x1*256+x2;
  $  033:离合器1最小位置                             $    $               $    $  ANS019.BYTE004  $  y=x1*256+x2;
  $  034:离合器2最小位置                             $    $               $    $  ANS019.BYTE006  $  y=x1*256+x2;
  $  035:离合器1半离合位置                           $    $               $    $  ANS020.BYTE004  $  y=x1*256+x2;
  $  036:离合器2半离合位置                           $    $               $    $  ANS020.BYTE006  $  y=x1*256+x2;
  $  037:促动器1中位置                               $    $               $    $  ANS021.BYTE004  $  y=x1*256+x2;
  $  038:促动器2中位置                               $    $               $    $  ANS022.BYTE004  $  y=x1*256+x2;
  $  039:促动器4中位置                               $    $               $    $  ANS023.BYTE004  $  y=x1*256+x2;
  $  040:油泵启动占空比                              $    $  %            $    $  ANS024.BYTE004  $  y=x1;
  $  041:油泵使能信息                                $    $               $    $  ANS024.BYTE005  $  if(x1==0) y=@00d1; else if(x1==1) y=@00d2; else y=@001c;
  $  042:油泵转速                                    $    $  rpm          $    $  ANS024.BYTE006  $  y=x1*256+x2;
  $  043:SD1                                         $    $               $    $  ANS025.BYTE004  $  HEX(x1);
  $  044:SD2                                         $    $               $    $  ANS026.BYTE004  $  HEX(x1);
  $  045:SD3                                         $    $               $    $  ANS027.BYTE004  $  HEX(x1);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E1 30 01 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
