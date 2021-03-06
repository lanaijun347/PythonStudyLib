
    车型ID：1d13

    模拟：协议模拟-->1d13

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E9

进入命令:

  $~  REQ000:7E1 02 10 01 00 00 00 00 00       $~  ANS000:7E9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E1 02 3E 80 00 00 00 00 00       $!  ANS000:7E9 02 3E 80 00 00 00 00 00

退出命令:

  $@  REQ000:7E1 02 10 01 00 00 00 00 00       $@  ANS000:7E9 02 10 01 00 00 00 00 00


;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E1 05 18 00 FF FF FF 00 00       $#  ANS000:7E9 05 18 00 FF FF FF 00 00

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
  $  REQ014:7E1 03 22 00 17 00 00 00 00       $  ANS014:7E9 03 22 00 17 00 00 00 00
  $  REQ015:7E1 03 22 00 1B 00 00 00 00       $  ANS015:7E9 03 22 00 1B 00 00 00 00
  $  REQ016:7E1 03 22 00 1C 00 00 00 00       $  ANS016:7E9 03 22 00 1C 00 00 00 00
  $  REQ017:7E1 03 22 00 1D 00 00 00 00       $  ANS017:7E9 03 22 00 1D 00 00 00 00
  $  REQ018:7E1 03 22 00 1E 00 00 00 00       $  ANS018:7E9 03 22 00 1E 00 00 00 00
  $  REQ019:7E1 03 22 00 1F 00 00 00 00       $  ANS019:7E9 03 22 00 1F 00 00 00 00
  $  REQ020:7E1 03 22 00 20 00 00 00 00       $  ANS020:7E9 03 22 00 20 00 00 00 00
  $  REQ021:7E1 03 22 00 21 00 00 00 00       $  ANS021:7E9 03 22 00 21 00 00 00 00
  $  REQ022:7E1 03 22 00 22 00 00 00 00       $  ANS022:7E9 03 22 00 22 00 00 00 00
  $  REQ023:7E1 03 22 00 23 00 00 00 00       $  ANS023:7E9 03 22 00 23 00 00 00 00
  $  REQ024:7E1 03 22 00 24 00 00 00 00       $  ANS024:7E9 03 22 00 24 00 00 00 00
  $  REQ025:7E1 03 22 00 25 00 00 00 00       $  ANS025:7E9 03 22 00 25 00 00 00 00
  $  REQ026:7E1 03 22 00 26 00 00 00 00       $  ANS026:7E9 03 22 00 26 00 00 00 00
  $  REQ027:7E1 03 22 00 27 00 00 00 00       $  ANS027:7E9 03 22 00 27 00 00 00 00
  $  REQ028:7E1 03 22 00 28 00 00 00 00       $  ANS028:7E9 03 22 00 28 00 00 00 00
  $  REQ029:7E1 03 22 00 2A 00 00 00 00       $  ANS029:7E9 03 22 00 2A 00 00 00 00
  $  REQ030:7E1 03 22 00 2B 00 00 00 00       $  ANS030:7E9 03 22 00 2B 00 00 00 00
  $  REQ031:7E1 03 22 00 2C 00 00 00 00       $  ANS031:7E9 03 22 00 2C 00 00 00 00
  $  REQ032:7E1 03 22 00 2D 00 00 00 00       $  ANS032:7E9 03 22 00 2D 00 00 00 00
  $  REQ033:7E1 03 22 00 2E 00 00 00 00       $  ANS033:7E9 03 22 00 2E 00 00 00 00
  $  REQ034:7E1 03 22 00 2F 00 00 00 00       $  ANS034:7E9 03 22 00 2F 00 00 00 00
  $  REQ035:7E1 03 22 00 30 00 00 00 00       $  ANS035:7E9 03 22 00 30 00 00 00 00
  $  REQ036:7E1 03 22 00 32 00 00 00 00       $  ANS036:7E9 03 22 00 32 00 00 00 00
  $  REQ037:7E1 03 22 00 33 00 00 00 00       $  ANS037:7E9 03 22 00 33 00 00 00 00
  $  REQ038:7E1 03 22 00 34 00 00 00 00       $  ANS038:7E9 03 22 00 34 00 00 00 00
  $  REQ039:7E1 03 22 00 35 00 00 00 00       $  ANS039:7E9 03 22 00 35 00 00 00 00
  $  REQ040:7E1 03 22 00 36 00 00 00 00       $  ANS040:7E9 03 22 00 36 00 00 00 00
  $  REQ041:7E1 03 22 00 37 00 00 00 00       $  ANS041:7E9 03 22 00 37 00 00 00 00
  $  REQ042:7E1 03 22 00 38 00 00 00 00       $  ANS042:7E9 03 22 00 38 00 00 00 00
  $  REQ043:7E1 03 22 00 39 00 00 00 00       $  ANS043:7E9 03 22 00 39 00 00 00 00
  $  REQ044:7E1 03 22 00 40 00 00 00 00       $  ANS044:7E9 03 22 00 40 00 00 00 00
  $  REQ045:7E1 03 22 00 43 00 00 00 00       $  ANS045:7E9 03 22 00 43 00 00 00 00
  $  REQ046:7E1 03 22 00 44 00 00 00 00       $  ANS046:7E9 03 22 00 44 00 00 00 00
  $  REQ047:7E1 03 22 01 00 00 00 00 00       $  ANS047:7E9 03 22 01 00 00 00 00 00
  $  REQ048:7E1 03 22 01 01 00 00 00 00       $  ANS048:7E9 03 22 01 01 00 00 00 00
  $  REQ049:7E1 03 22 01 02 00 00 00 00       $  ANS049:7E9 03 22 01 02 00 00 00 00

  $  000.制动踏板状态                                $    $               $    $  ANS000.BYTE004  $  if(x1==0) y=@0004; else if(x1==1) y=@0003; else if(x1==2) y=@00c6; else if(x1==3) y=@00c7; else y=@0002;
  $  001.驻车开关状态                                $    $               $    $  ANS000.BYTE005  $  if(x1==0) y=@0004; else if(x1==1) y=@0187; else y=@0002;
  $  002.MC压力值                                    $    $  bar          $    $  ANS000.BYTE006  $  y=(x1*9987.84+x2*39.015)/255-42.5;
  $  003.加速踏板位置状态                            $    $               $    $  ANS001.BYTE004  $  if(x1==0) y=@0045; else if(x1==1) y=@00c7; else y=@0002;
  $  004.加速踏板位置                                $    $  %            $    $  ANS001.BYTE005  $  y=x1*99.96/255;
  $  005.节气门位置状态                              $    $               $    $  ANS002.BYTE004  $  if(x1==0) y=@0045; else if(x1==1) y=@00c7; else y=@0002;
  $  006.节气门位置                                  $    $  %            $    $  ANS002.BYTE005  $  y=x1*99.96/255;
  $  007.高原系数                                    $    $  %            $    $  ANS003.BYTE004  $  y=x1*397.8/255;
  $  008.蓄电池电压                                  $    $  V            $    $  ANS004.BYTE004  $  y=x1*23.62/12+x2*1.96/255+0.3;
  $  009.发动机指示扭矩                              $    $  %            $    $  ANS005.BYTE004  $  y=x1*99.96/255;
  $  010.发动机扭矩损失                              $    $  %            $    $  ANS005.BYTE005  $  y=x1*99.96/255;
  $  011.TCU(自动变速箱控制器)计算车速               $    $  km/h         $    $  ANS006.BYTE004  $  y=(x1*4488.0+x2*17.5)/255;
  $  012.TCU(自动变速箱控制器)计算车速状态           $    $               $    $  ANS006.BYTE006  $  if(x1==0) y=@0045; else if(x1==1) y=@00c7; else y=@0002;
  $  013.CAN车速                                     $    $  km/h         $    $  ANS007.BYTE004  $  y=(x1*4488.0+x2*17.5)/255;
  $  014.CAN车速状态                                 $    $               $    $  ANS007.BYTE006  $  if(x1==0) y=@0045; else if(x1==1) y=@00c7; else y=@0002;
  $  015.TCU(自动变速箱控制器)测量的发动机转速       $    $  rpm          $    $  ANS008.BYTE004  $  y=(x1*16320.0+x2*64)/255;
  $  016.CAN发动机转速                               $    $  rpm          $    $  ANS009.BYTE004  $  y=(x1*16320.0+x2*64)/255;
  $  017.CAN发动机转速状态                           $    $               $    $  ANS009.BYTE006  $  if(x1==0) y=@0045; else if(x1==1) y=@00c7; else y=@0002;
  $  018.输入轴1转速                                 $    $  rpm          $    $  ANS010.BYTE004  $  y=(x1*16320.0+x2*64)/255;
  $  019.输入轴2转速                                 $    $  rpm          $    $  ANS011.BYTE004  $  y=(x1*16320.0+x2*64)/255;
  $  020.输出轴转速                                  $    $  rpm          $    $  ANS012.BYTE004  $  y=(x1*16320.0+x2*64)/255;
  $  021.车辆行驶方向                                $    $               $    $  ANS012.BYTE006  $  if(x1==0) y=@0181; else if(x1==1) y=@0182; else y=@0002;
  $  022.换挡模式                                    $    $               $    $  ANS013.BYTE004  $  if(x1==0) y=@0069;else if(x1==1) y=@0073; else if(x1==2) y=@0074;else if(x1==3) y=@0075; else if(x1==4) y=@0076;else if(x1==5) y=@0077;else if(x1==6) y=@0078; else if(x1==7) y=@0079;else if(x1==8) y=@007a; else y=@0002;
  $  023.换挡杆状态                                  $    $               $    $  ANS013.BYTE005  $  if(x1==0) y=@0045; else if(x1==1) y=@00c7; else y=@0002;
  $  024.当前档位                                    $    $               $    $  ANS013.BYTE006  $  if(x1==0) y=@0069;else if(x1==1) y=@006a; else if(x1==2) y=@006b;else if(x1==3) y=@006c; else if(x1==4) y=@006d;else if(x1==5) y=@006e;else if(x1==6) y=@006f; else if(x1==7) y=@0071; else if(x1==8) y=@0072;else y=@0002;
  $  025.EPB(电子驻车)状态                           $    $               $    $  ANS014.BYTE004  $  if(x1==0) y=@0009; else if(x1==1) y=@012b; else if(x1==2) y=@0183;else if(x1==3) y=@0184;else if(x1==4) y=@0046;else y=@0002;
  $  026.遥控驾驶状态                                $    $               $    $  ANS015.BYTE004  $  if(x1==0) y=@0045; else if(x1==1)y=@017b; else y=@0002;
  $  027.促动阀1位置传感器                           $    $  mm           $    $  ANS016.BYTE004  $  y=x1*2.56 + x2*0.01 - 15;
  $  028.促动阀3位置传感器                           $    $  mm           $    $  ANS017.BYTE004  $  y=x1*2.56 + x2*0.01 - 15;
  $  029.促动器阀1开关状态                           $    $               $    $  ANS018.BYTE004  $  if(x1==0) y=@0000; else if(x1==1) y=@0001; else y=@0002;
  $  030.促动器阀2开关状态                           $    $               $    $  ANS019.BYTE004  $  if(x1==0) y=@0000; else if(x1==1) y=@0001; else y=@0002;
  $  031.促动器1中位置                               $    $               $    $  ANS020.BYTE004  $  y=x1*256+x2;
  $  032.促动器3中位置                               $    $               $    $  ANS021.BYTE004  $  y=x1*256+x2;
  $  033.多路阀开关状态                              $    $               $    $  ANS022.BYTE004  $  if(x1==0) y=@0000; else if(x1==1) y=@0001; else y=@0002;
  $  034.促动器2位置传感器                           $    $  mm           $    $  ANS023.BYTE004  $  y=x1*2.56 + x2*0.01 - 15;
  $  035.促动器4位置传感器                           $    $  mm           $    $  ANS024.BYTE004  $  y=x1*2.56 + x2*0.01 - 15;
  $  036.促动器阀3开关状态                           $    $               $    $  ANS025.BYTE004  $  if(x1==0) y=@0000; else if(x1==1) y=@0001; else y=@0002;
  $  037.促动器阀4开关状态                           $    $               $    $  ANS026.BYTE004  $  if(x1==0) y=@0000; else if(x1==1) y=@0001; else y=@0002;
  $  038.促动器2中位置                               $    $               $    $  ANS027.BYTE004  $  y=x1*256+x2;
  $  039.促动器4中位置                               $    $               $    $  ANS028.BYTE004  $  y=x1*256+x2;
  $  040.变速器油温                                  $    $  degree C     $    $  ANS029.BYTE004  $  y=x1-60;
  $  041.离合器油温                                  $    $  degree C     $    $  ANS030.BYTE004  $  y=x1-60;
  $  042.控制单元温度                                $    $  degree C     $    $  ANS031.BYTE004  $  y=x1-60;
  $  043.传感器电压                                  $    $  V            $    $  ANS032.BYTE004  $  y=x1*159.283/255 + x2*0.622/255;
  $  044.冷却液温度                                  $    $  degree C     $    $  ANS033.BYTE004  $  y=x1-60;
  $  045.进气温度                                    $    $  degree C     $    $  ANS033.BYTE005  $  y=x1-60;
  $  046.P档锁定状态                                 $    $               $    $  ANS034.BYTE004  $  if(x1==0) y=@0069; else if(x1==1)y=@017c;else if(x1==2)y=@017d;else if(x1==3)y=@017e;else if(x1==4)y=@017f;else y=@0002;
  $  047.P档系统状态                                 $    $               $    $  ANS034.BYTE005  $  if(x1==0) y=@0045; else if(x1==1)y=@0180;else y=@003f;
  $  048.加速度传感器状态                            $    $               $    $  ANS035.BYTE004  $  if(x1==0) y=@0045; else if(x1==1) y=@00c7; else y=@0002;
  $  049.水平倾角                                    $    $  %            $    $  ANS035.BYTE005  $  y=x1-60;
  $  050.1.3V电压                                    $    $  V            $    $  ANS036.BYTE004  $  y=x1*79.64/255 + x2*0.31/255;
  $  051.3.3V电压                                    $    $  V            $    $  ANS036.BYTE006  $  y=x1*79.64/255 + x2*0.31/255;
  $  052.加速度传感器适配次数                        $    $               $    $  ANS037.BYTE004  $  y=x1*256+x2;
  $  053.主压力阀适配次数                            $    $               $    $  ANS038.BYTE004  $  y=x1*256+x2;
  $  054.离合器阀1适配次数                           $    $               $    $  ANS039.BYTE004  $  y=x1*256+x2;
  $  055.离合器阀2适配次数                           $    $               $    $  ANS039.BYTE006  $  y=x1*256+x2;
  $  056.安全阀1适配次数                             $    $               $    $  ANS040.BYTE004  $  y=x1*256+x2;
  $  057.安全阀2适配次数                             $    $               $    $  ANS040.BYTE006  $  y=x1*256+x2;
  $  058.档位适配次数                                $    $               $    $  ANS041.BYTE004  $  y=x1*256+x2;
  $  059.离合器1适配次数                             $    $               $    $  ANS042.BYTE004  $  y=x1*256+x2;
  $  060.离合器2适配次数                             $    $               $    $  ANS042.BYTE006  $  y=x1*256+x2;
  $  061.整车工作模式                                $    $               $    $  ANS043.BYTE004  $  if(x1==0x00) y=@003e; else if(x1==0x01) y=@030d; else if(x1==0x02) y=@030e; else if(x1==0x03) y=@030f; else if(x1==0x04) y=@0310;else if(x1==0x05) y=@0311;else if(x1==0x06) y=@0312;else if(x1==0x07) y=@0313;else y=@0314;
  $  062.离合器强制脱开                              $    $               $    $  ANS043.BYTE005  $  if(x1&0x01) y=@02f8; else y=@02f7;
  $  063.离合器强制脱开命令有效标识位                $    $               $    $  ANS043.BYTE006  $  if(x1&0x01) y=@0093; else y=@003f;
  $  064.促动器5位置传感器                           $    $  mm           $    $  ANS044.BYTE004  $  y=x1*2.56 + x2*0.01 - 15;
  $  065.促动器5中位位置                             $    $               $    $  ANS044.BYTE006  $  y=x1*256+x2;
  $  066.油泵压力                                    $    $  bar          $    $  ANS045.BYTE004  $  y=(x1*368.672+x2*1.44)/255-1.313;
  $  067.电机运行占空比                              $    $  %            $    $  ANS046.BYTE004  $  y=x1;
  $  068.电机使能信息                                $    $               $    $  ANS046.BYTE005  $  if(x1==0) y=@005a; else if(x1==1) y=@005b; else y=@0314;
  $  069.电机转速                                    $    $  rpm          $    $  ANS046.BYTE006  $  y=x1*256+x2;
  $  070.SD1                                         $    $               $    $  ANS047.BYTE004  $  HEX(x1);
  $  071.SD2                                         $    $               $    $  ANS048.BYTE004  $  HEX(x1);
  $  072.SD3                                         $    $               $    $  ANS049.BYTE004  $  HEX(x1);

;******************************************************************************************************************************************************

动作测试:

$^ 00.档位动作测试 
$^TYPE0
$^BUTTON:挂1档 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 05 2F 20 01 03 01 00 00     $^

$^BUTTON:挂2档 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 05 2F 20 01 03 02 00 00     $^

$^BUTTON:挂3档 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 05 2F 20 01 03 03 00 00     $^

$^BUTTON:挂4档 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 05 2F 20 01 03 04 00 00     $^

$^BUTTON:挂5档 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 05 2F 20 01 03 05 00 00     $^

$^BUTTON:挂6档 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 05 2F 20 01 03 06 00 00     $^

$^BUTTON:挂R档 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 05 2F 20 01 03 08 00 00     $^

$^BUTTON:1,3档挂N档 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 05 2F 20 01 03 09 00 00     $^

$^BUTTON:2,4档挂N档 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 05 2F 20 01 03 0A 00 00     $^

$^BUTTON:5,7档挂N档 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 05 2F 20 01 03 0B 00 00     $^

$^BUTTON:6,R档挂N档 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 05 2F 20 01 03 0C 00 00     $^

$^BUTTON:所有档位回N档 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 05 2F 20 01 03 0D 00 00     $^

$^BUTTON:挂EV1档 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 05 2F 20 01 03 0E 00 00     $^

$^BUTTON:挂EV2档 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 05 2F 20 01 03 0F 00 00     $^

$^BUTTON:EV档挂N档 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 05 2F 20 01 03 10 00 00     $^

$^BUTTON:退出 
$^REQ00:7E1 02 10 03 00 00 00 00 00     $^
$^REQ01:7E1 04 2F 20 01 00 00 00 00     $^

$^TIP:执行条件要求(为了安全请将刹车踏板踩到底) (1)整车N档位 (2)发动机启动中 (3)选择档位测试前先将所有档位回中位 (4)必须踩住刹车踏板 
;----------------------------------------------------------------------------------------------------

$^ 01.离合器1压力测试 
$^IN  REQ00:7E1 02 10 03 00 00 00 00 00     $^IN  
$^IN  REQ01:7E1 04 2F 20 02 04 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E1 06 2F 20 02 03 XX XX 00     $^

$^BUTTON:退出
$^REQ00:7E1 04 2F 20 02 00 00 00 00     $^

$^DSP:离合器1压力测试
$^TIP:执行条件要求(为了安全请将刹车踏板踩到底) (1)整车N档位 (2)发动机启动中 (3)必须踩住刹车踏板 
$^TIP:请输入测试值(范围:0~4000) 
$^IN_F:y=x1*256+x2;
$^RANGE:0,4000
;----------------------------------------------------------------------------------------------------

$^ 02.离合器2压力测试 
$^IN  REQ00:7E1 02 10 03 00 00 00 00 00     $^IN  
$^IN  REQ01:7E1 04 2F 20 03 04 00 00 00     $^IN  

 $^TYPE:2
$^BUTTON:输入
$^REQ00:7E1 06 2F 20 03 03 XX XX 00     $^

$^BUTTON:退出
$^REQ00:7E1 04 2F 20 03 00 00 00 00     $^

$^DSP:离合器2压力测试
$^TIP:执行条件要求(为了安全请将刹车踏板踩到底) (1)整车N档位 (2)发动机启动中 (3)必须踩住刹车踏板 
$^TIP:请输入测试值(范围:0~4000) 
$^IN_F:y=x1*256+x2;
$^RANGE:0,4000
;----------------------------------------------------------------------------------------------------

30帧:

  $FC REQ000:7E1 30 01 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
