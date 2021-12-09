
    车型ID：1a17

    模拟：协议模拟-->1a17

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7E1 02 10 01 00 00 00 00 00       $~  ANS000:7E9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E1 02 3E 80 00 00 00 00 00       $!  ANS000:7E9 02 3E 80 00 00 00 00 00

退出命令:

  $@  REQ000:7E1 02 10 01 00 00 00 00 00       $@  ANS000:7E9 02 10 01 00 00 00 00 00


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

  $%  REQ000:7E1 03 22 F1 93 00 00 00 00       $%  ANS000:7E9 03 22 F1 93 00 00 00 00
  $%  REQ001:7E1 03 22 F1 94 00 00 00 00       $%  ANS001:7E9 03 22 F1 94 00 00 00 00
  $%  REQ002:7E1 03 22 F1 95 00 00 00 00       $%  ANS002:7E9 03 22 F1 95 00 00 00 00

  $%  000:硬件版本:        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:        $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  002:软件编号:        $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:        $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:        $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  005:修改次数:        $%    $%  ANS002.BYTE009  $%  y=x1;

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
  $  REQ008:7E1 03 22 00 0D 00 00 00 00       $  ANS008:7E9 03 22 00 0D 00 00 00 00
  $  REQ009:7E1 03 22 00 0E 00 00 00 00       $  ANS009:7E9 03 22 00 0E 00 00 00 00
  $  REQ010:7E1 03 22 00 0F 00 00 00 00       $  ANS010:7E9 03 22 00 0F 00 00 00 00
  $  REQ011:7E1 03 22 00 10 00 00 00 00       $  ANS011:7E9 03 22 00 10 00 00 00 00
  $  REQ012:7E1 03 22 00 11 00 00 00 00       $  ANS012:7E9 03 22 00 11 00 00 00 00
  $  REQ013:7E1 03 22 00 12 00 00 00 00       $  ANS013:7E9 03 22 00 12 00 00 00 00
  $  REQ014:7E1 03 22 00 13 00 00 00 00       $  ANS014:7E9 03 22 00 13 00 00 00 00
  $  REQ015:7E1 03 22 00 14 00 00 00 00       $  ANS015:7E9 03 22 00 14 00 00 00 00
  $  REQ016:7E1 03 22 00 15 00 00 00 00       $  ANS016:7E9 03 22 00 15 00 00 00 00
  $  REQ017:7E1 03 22 00 16 00 00 00 00       $  ANS017:7E9 03 22 00 16 00 00 00 00
  $  REQ018:7E1 03 22 00 17 00 00 00 00       $  ANS018:7E9 03 22 00 17 00 00 00 00
  $  REQ019:7E1 03 22 00 18 00 00 00 00       $  ANS019:7E9 03 22 00 18 00 00 00 00
  $  REQ020:7E1 03 22 00 19 00 00 00 00       $  ANS020:7E9 03 22 00 19 00 00 00 00
  $  REQ021:7E1 03 22 00 1A 00 00 00 00       $  ANS021:7E9 03 22 00 1A 00 00 00 00
  $  REQ022:7E1 03 22 00 1B 00 00 00 00       $  ANS022:7E9 03 22 00 1B 00 00 00 00
  $  REQ023:7E1 03 22 00 1C 00 00 00 00       $  ANS023:7E9 03 22 00 1C 00 00 00 00
  $  REQ024:7E1 03 22 00 1D 00 00 00 00       $  ANS024:7E9 03 22 00 1D 00 00 00 00
  $  REQ025:7E1 03 22 00 1E 00 00 00 00       $  ANS025:7E9 03 22 00 1E 00 00 00 00
  $  REQ026:7E1 03 22 00 1F 00 00 00 00       $  ANS026:7E9 03 22 00 1F 00 00 00 00
  $  REQ027:7E1 03 22 00 20 00 00 00 00       $  ANS027:7E9 03 22 00 20 00 00 00 00
  $  REQ028:7E1 03 22 00 21 00 00 00 00       $  ANS028:7E9 03 22 00 21 00 00 00 00
  $  REQ029:7E1 03 22 00 22 00 00 00 00       $  ANS029:7E9 03 22 00 22 00 00 00 00
  $  REQ030:7E1 03 22 00 23 00 00 00 00       $  ANS030:7E9 03 22 00 23 00 00 00 00
  $  REQ031:7E1 03 22 00 24 00 00 00 00       $  ANS031:7E9 03 22 00 24 00 00 00 00
  $  REQ032:7E1 03 22 00 25 00 00 00 00       $  ANS032:7E9 03 22 00 25 00 00 00 00
  $  REQ033:7E1 03 22 00 26 00 00 00 00       $  ANS033:7E9 03 22 00 26 00 00 00 00
  $  REQ034:7E1 03 22 00 27 00 00 00 00       $  ANS034:7E9 03 22 00 27 00 00 00 00
  $  REQ035:7E1 03 22 00 28 00 00 00 00       $  ANS035:7E9 03 22 00 28 00 00 00 00
  $  REQ036:7E1 03 22 00 29 00 00 00 00       $  ANS036:7E9 03 22 00 29 00 00 00 00
  $  REQ037:7E1 03 22 00 2A 00 00 00 00       $  ANS037:7E9 03 22 00 2A 00 00 00 00
  $  REQ038:7E1 03 22 00 2B 00 00 00 00       $  ANS038:7E9 03 22 00 2B 00 00 00 00
  $  REQ039:7E1 03 22 00 2C 00 00 00 00       $  ANS039:7E9 03 22 00 2C 00 00 00 00
  $  REQ040:7E1 03 22 00 2D 00 00 00 00       $  ANS040:7E9 03 22 00 2D 00 00 00 00
  $  REQ041:7E1 03 22 00 2E 00 00 00 00       $  ANS041:7E9 03 22 00 2E 00 00 00 00
  $  REQ042:7E1 03 22 00 2F 00 00 00 00       $  ANS042:7E9 03 22 00 2F 00 00 00 00
  $  REQ043:7E1 03 22 00 30 00 00 00 00       $  ANS043:7E9 03 22 00 30 00 00 00 00
  $  REQ044:7E1 03 22 00 32 00 00 00 00       $  ANS044:7E9 03 22 00 32 00 00 00 00
  $  REQ045:7E1 03 22 00 33 00 00 00 00       $  ANS045:7E9 03 22 00 33 00 00 00 00
  $  REQ046:7E1 03 22 00 34 00 00 00 00       $  ANS046:7E9 03 22 00 34 00 00 00 00
  $  REQ047:7E1 03 22 00 35 00 00 00 00       $  ANS047:7E9 03 22 00 35 00 00 00 00
  $  REQ048:7E1 03 22 00 37 00 00 00 00       $  ANS048:7E9 03 22 00 37 00 00 00 00
  $  REQ049:7E1 03 22 00 38 00 00 00 00       $  ANS049:7E9 03 22 00 38 00 00 00 00
  $  REQ050:7E1 03 22 00 39 00 00 00 00       $  ANS050:7E9 03 22 00 39 00 00 00 00
  $  REQ051:7E1 03 22 00 40 00 00 00 00       $  ANS051:7E9 03 22 00 40 00 00 00 00
  $  REQ052:7E1 03 22 00 41 00 00 00 00       $  ANS052:7E9 03 22 00 41 00 00 00 00
  $  REQ053:7E1 03 22 00 42 00 00 00 00       $  ANS053:7E9 03 22 00 42 00 00 00 00
  $  REQ054:7E1 03 22 00 43 00 00 00 00       $  ANS054:7E9 03 22 00 43 00 00 00 00
  $  REQ055:7E1 03 22 00 44 00 00 00 00       $  ANS055:7E9 03 22 00 44 00 00 00 00
  $  REQ056:7E1 03 22 00 45 00 00 00 00       $  ANS056:7E9 03 22 00 45 00 00 00 00
  $  REQ057:7E1 03 22 01 00 00 00 00 00       $  ANS057:7E9 03 22 01 00 00 00 00 00
  $  REQ058:7E1 03 22 01 01 00 00 00 00       $  ANS058:7E9 03 22 01 01 00 00 00 00
  $  REQ059:7E1 03 22 01 02 00 00 00 00       $  ANS059:7E9 03 22 01 02 00 00 00 00

  $  000:制动踏板状态                                $    $               $    $  ANS000.BYTE004  $  if(x1==0) y=@00aa; else if(x1==1) y=@0062; else if(x1==2) y=@00bd; else if(x1==3) y=@00be; else y=@001c;
  $  001:驻车开关状态                                $    $               $    $  ANS000.BYTE005  $  if(x1==0) y=@00aa; else if(x1==1) y=@00d5; else y=@001c;
  $  002:MC压力值                                    $    $               $    $  ANS000.BYTE006  $  y=(x1*9987.84+x2*39.015)/255-42.5;
  $  003:加速踏板位置状态                            $    $               $    $  ANS001.BYTE004  $  if(x1==0) y=@0022; else if(x1==1) y=@00be; else y=@001c;
  $  004:加速踏板位置                                $    $  %            $    $  ANS001.BYTE005  $  y=x1*99.96/255;
  $  005:节气门位置状态                              $    $               $    $  ANS002.BYTE004  $  if(x1==0) y=@0022; else if(x1==1) y=@00be; else y=@001c;
  $  006:节气门位置                                  $    $  %            $    $  ANS002.BYTE005  $  y=x1*99.96/255;
  $  007:高原系数                                    $    $               $    $  ANS003.BYTE004  $  y=x1*3.98/255;
  $  008:蓄电池电压                                  $    $  V            $    $  ANS004.BYTE004  $  y=x1*23.62/12+x2*1.96/255+0.3;
  $  009:发动机指示扭矩                              $    $  %            $    $  ANS005.BYTE004  $  y=x1*99.96/255;
  $  010:发动机扭矩损失                              $    $  %            $    $  ANS005.BYTE005  $  y=x1*99.96/255;
  $  011:TCU(自动变速箱控制器)计算车速               $    $  km/h         $    $  ANS006.BYTE004  $  y=(x1*4488.0+x2*17.5313)/255;
  $  012:TCU(自动变速箱控制器)计算车速状态           $    $               $    $  ANS006.BYTE006  $  if(x1==0) y=@0022; else if(x1==1) y=@00be; else y=@001c;
  $  013:CAN车速                                     $    $  km/h         $    $  ANS007.BYTE004  $  y=(x1*4488.0+x2*17.5313)/255;
  $  014:CAN车速状态                                 $    $               $    $  ANS007.BYTE006  $  if(x1==0) y=@0022; else if(x1==1) y=@00be; else y=@001c;
  $  015:TCU(自动变速箱控制器)测量的发动机转速       $    $  rpm          $    $  ANS008.BYTE004  $  y=(x1*16320.0+x2*63.75)/255;
  $  016:CAN发动机转速                               $    $  rpm          $    $  ANS009.BYTE004  $  y=(x1*16320.0+x2*63.75)/255;
  $  017:CAN发动机转速状态                           $    $               $    $  ANS009.BYTE006  $  if(x1==0) y=@0022; else if(x1==1) y=@00be; else y=@001c;
  $  018:输入轴1转速                                 $    $  rpm          $    $  ANS010.BYTE004  $  y=x1*63.75/255;
  $  019:输入轴2转速                                 $    $  rpm          $    $  ANS011.BYTE004  $  y=(x1*16320.0+x2*63.75)/255;
  $  020:输出轴转速                                  $    $  rpm          $    $  ANS012.BYTE004  $  y=(x1*16320.0+x2*63.75)/255;
  $  021:车辆前行方向                                $    $               $    $  ANS012.BYTE006  $  if(x1==0) y=@0491; else if(x1==1) y=@00d8; else y=@001c;
  $  022:换挡手柄                                    $    $               $    $  ANS013.BYTE004  $  if(x1==0) y=@00bf;else if(x1==1) y=@00c9; else if(x1==2) y=@00ca;else if(x1==3) y=@00cb; else if(x1==4) y=@00cc;else if(x1==5) y=@00cd;else if(x1==6) y=@00ce; else if(x1==7) y=@00cf;else if(x1==8) y=@00d0; else y=@001c;
  $  023:换杆挡状态                                  $    $               $    $  ANS013.BYTE005  $  if(x1==0) y=@0022; else if(x1==1) y=@00be; else y=@001c;
  $  024:当前档位                                    $    $               $    $  ANS013.BYTE006  $  if(x1==0) y=@00bf;else if(x1==1) y=@00c0; else if(x1==2) y=@00c1;else if(x1==3) y=@00c2; else if(x1==4) y=@00c3;else if(x1==5) y=@00c4;else if(x1==6) y=@00c5; else if(x1==7) y=@00c6; else if(x1==8) y=@00c7;else if(x1==9) y=@00c8;else y=@001c;
  $  025:主压力阀设置电流                            $    $  mA           $    $  ANS014.BYTE004  $  y=x1*186.88+x2*186.15/255;
  $  026:主压力阀实际电流                            $    $  mA           $    $  ANS014.BYTE006  $  y=x1*191.25/255;
  $  027:安全阀1设置电流                             $    $  mA           $    $  ANS015.BYTE004  $  y=x1*200+x2*199.22/255;
  $  028:安全阀1实际电流                             $    $  mA           $    $  ANS015.BYTE004  $  y=x1*200+x2*199.22/255;
  $  029:离合器阀1设置电流                           $    $  mA           $    $  ANS016.BYTE004  $  y=x1*186.88+x2*186.15/255;
  $  030:离合器1实际电流                             $    $  mA           $    $  ANS016.BYTE006  $  y=x1*192+x2*191.25/255;
  $  031:离合器1实际压力                             $    $               $    $  ANS017.BYTE004  $  y=x1*256+x2;
  $  032:离合器1滑磨点                               $    $               $    $  ANS017.BYTE006  $  y=x1*256+x2;
  $  033:EPB(电子驻车)状态                           $    $               $    $  ANS018.BYTE004  $  if(x1==0) y=@00de; else if(x1==1) y=@0046; else if(x1==2) y=@00df;else if(x1==3) y=@00df;else if(x1==4) y=@0059;else y=@001c;
  $  034:安全阀2设置电流                             $    $  mA           $    $  ANS019.BYTE004  $  y=x1*200+x2*199.2/255;
  $  035:安全阀2实际电流                             $    $  mA           $    $  ANS019.BYTE006  $  y=x1*200+x2*199.2/255;
  $  036:离合器阀2设置电流                           $    $  mA           $    $  ANS020.BYTE004  $  y=x1*186.88+x2*186.2/255;
  $  037:离合器阀2实际电流                           $    $  mA           $    $  ANS020.BYTE006  $  y=x1*186.88+x2*186.2/255;
  $  038:离合器2实际压力                             $    $               $    $  ANS021.BYTE004  $  y=x1*256+x2;
  $  039:离合器2滑磨点                               $    $               $    $  ANS021.BYTE006  $  y=x1*256+x2;
  $  040:读取遥控驾驶状态                            $    $               $    $  ANS022.BYTE004  $  if(x1==0) y=@0022; else if(x1==1)y=@00dd; else y=@001c;
  $  041:促动阀1位置传感器                           $    $  mm           $    $  ANS023.BYTE004  $  y=x1*2.56 + x2*0.01 - 15;
  $  042:促动阀3位置传感器                           $    $  mm           $    $  ANS024.BYTE004  $  y=x1*2.56 + x2*0.01 - 15;
  $  043:促动器阀1开关状态                           $    $               $    $  ANS025.BYTE004  $  if(x1==0) y=@00a0; else if(x1==1) y=@009f; else y=@001c;
  $  044:促动器阀2开关状态                           $    $               $    $  ANS026.BYTE004  $  if(x1==0) y=@00a0; else if(x1==1) y=@009f; else y=@001c;
  $  045:促动器1中位位置                             $    $               $    $  ANS027.BYTE004  $  y=x1*256+x2;
  $  046:促动器3中位位置                             $    $               $    $  ANS028.BYTE004  $  y=x1*256+x2;
  $  047:多路阀开关状态                              $    $               $    $  ANS029.BYTE004  $  if((x1==0x00)&&(x2==0x00)) y=@00a0; else if((x1==0x00)&&(x2==0x01)) y=@009f; else y=@001c;
  $  048:促动器2位置传感器                           $    $  mm           $    $  ANS030.BYTE004  $  y=x1*2.56 + x2*0.01 - 15;
  $  049:促动器4位置传感器                           $    $  mm           $    $  ANS031.BYTE004  $  y=x1*2.56 + x2*0.01 - 15;
  $  050:促动器阀3开关状态                           $    $               $    $  ANS032.BYTE004  $  if(x1==0) y=@00a0; else if(x1==1) y=@009f; else y=@001c;
  $  051:促动器阀4开关状态                           $    $               $    $  ANS033.BYTE004  $  if(x1==0) y=@00a0; else if(x1==1) y=@009f; else y=@001c;
  $  052:促动器1中位置                               $    $               $    $  ANS034.BYTE004  $  y=x1*256+x2;
  $  053:促动器4中位置                               $    $               $    $  ANS035.BYTE004  $  y=x1*256+x2;
  $  054:冷却阀设置电流                              $    $  mA           $    $  ANS036.BYTE004  $  y=x1*200+x2*199.0/255;
  $  055:冷却阀实际电流                              $    $  mA           $    $  ANS036.BYTE006  $  y=x1*200+x2*199.0/255;
  $  056:变速器油温                                  $    $  degree C     $    $  ANS037.BYTE004  $  y=x1;
  $  057:离合器油温                                  $    $  degree C     $    $  ANS038.BYTE004  $  y=x1;
  $  058:控制单元温度                                $    $  degree C     $    $  ANS039.BYTE004  $  y=x1;
  $  059:传感器电压                                  $    $  V            $    $  ANS040.BYTE004  $  y=x1*156.6720/255 + x2*0.6120/255;
  $  060:冷却液温度                                  $    $  degree C     $    $  ANS041.BYTE004  $  y=x1-60;
  $  061:进气温度                                    $    $  degree C     $    $  ANS041.BYTE005  $  y=x1-60;
  $  062:P档锁定状态                                 $    $               $    $  ANS042.BYTE004  $  if(x1==0) y=@00bf; else if(x1==1)y=@011f;else if(x1==2)y=@00da;else if(x1==3)y=@00db;else if(x1==4)y=@00dc;else y=@001c;
  $  063:P档系统状态                                 $    $               $    $  ANS042.BYTE005  $  if(x1==0) y=@0022; else if(x1==1)y=@0059;else y=@0048;
  $  064:加速度传感器状态                            $    $               $    $  ANS043.BYTE004  $  if(x1==0) y=@0022; else if(x1==1) y=@00be; else y=@001c;
  $  065:水平倾角                                    $    $  %            $    $  ANS043.BYTE005  $  y=x1-60;
  $  066:1.3V电压                                    $    $  V            $    $  ANS044.BYTE004  $  y=x1*79.64/255 + x2*0.31/255;
  $  067:3.3V电压                                    $    $  V            $    $  ANS044.BYTE006  $  y=x1*79.64/255 + x2*0.31/255;
  $  068:加速度传感器适配次数                        $    $               $    $  ANS045.BYTE004  $  y=x1*256+x2;
  $  069:主压力阀适配次数                            $    $               $    $  ANS046.BYTE004  $  y=x1*256+x2;
  $  070:离合器阀1适配次数                           $    $               $    $  ANS047.BYTE004  $  y=x1*256+x2;
  $  071:离合器阀2适配次数                           $    $               $    $  ANS047.BYTE006  $  y=x1*256+x2;
  $  072:档位适配次数                                $    $               $    $  ANS048.BYTE004  $  y=x1*256+x2;
  $  073:离合器1适配次数                             $    $               $    $  ANS049.BYTE004  $  y=x1*256+x2;
  $  074:离合器2适配次数                             $    $               $    $  ANS049.BYTE006  $  y=x1*256+x2;
  $  075:整车工作模式                                $    $               $    $  ANS050.BYTE004  $  if(x1==0x00) y=@00d2; else if(x1==0x01) y=@03ea; else if(x1==0x02) y=@0492; else if(x1==0x03) y=@0493; else if(x1==0x04) y=@0494;else if(x1==0x05) y=@0495;else if(x1==0x06) y=@03eb;else if(x1==0x07) y=@03ec;else y=@001c;
  $  076:离合器强制脱开                              $    $               $    $  ANS050.BYTE005  $  if(x1==0) y=@00ea; else if(x1==1) y=@00eb; else y=@001c;
  $  077:离合器强制脱开命令有效标识位                $    $               $    $  ANS050.BYTE006  $  if(x1==0) y=@0048; else if(x1==1) y=@00e6; else y=@001c;
  $  078:促动器5位置传感器                           $    $  mm           $    $  ANS051.BYTE004  $  y=x1*2.56 + x2*0.01 - 15;
  $  079:促动器5中位位置                             $    $               $    $  ANS051.BYTE006  $  y=x1*256+x2;
  $  080:促动器5设置电流                             $    $  mA           $    $  ANS052.BYTE004  $  y=x1*200+x2*199.2/255;
  $  081:促动器5实际电流                             $    $  mA           $    $  ANS052.BYTE006  $  y=x1*200+x2*199.2/255;
  $  082:主压力阀-1设置电流                          $    $  mA           $    $  ANS053.BYTE004  $  y=x1*186.88+x2*186.15/255;
  $  083:主压力阀-1实际电流                          $    $  mA           $    $  ANS053.BYTE006  $  y=x1*191.25/255;
  $  084:油泵压力                                    $    $  bar          $    $  ANS054.BYTE004  $  y=(x1*368.67+x2*1.44)/255-1.31;
  $  085:电机运行占空比                              $    $               $    $  ANS055.BYTE004  $  y=x1;
  $  086:电机使能信息                                $    $               $    $  ANS055.BYTE005  $  y=x1;
  $  087:电机转速                                    $    $  n/min        $    $  ANS055.BYTE006  $  y=x1;
  $  088:电子油泵适配次数                            $    $               $    $  ANS056.BYTE004  $  y=x1*256+x2;
  $  089:SD1                                         $    $               $    $  ANS057.BYTE004  $  HEX(x1);
  $  090:SD2                                         $    $               $    $  ANS058.BYTE004  $  HEX(x1);
  $  091:SD3                                         $    $               $    $  ANS059.BYTE004  $  HEX(x1);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E1 30 01 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
