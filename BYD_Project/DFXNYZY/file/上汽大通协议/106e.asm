
    车型ID：106e

    模拟：协议模拟-->106e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:742 02 10 01 00 00 00 00 00       $~  ANS000:7C2 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:742 02 3E 80 00 00 00 00 00       $!  ANS000:7C2 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:742 03 19 02 09 00 00 00 00       $#  ANS000:7C2 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/6e000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:742 04 14 FF FF FF 00 00 00       $$  ANS000:7C2 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:742 03 22 F1 86 00 00 00 00       $%  ANS000:7C2 03 22 F1 86 00 00 00 00
  $%  REQ001:742 03 22 F1 95 00 00 00 00       $%  ANS001:7C2 03 22 F1 95 00 00 00 00
  $%  REQ002:742 03 22 F1 91 00 00 00 00       $%  ANS002:7C2 03 22 F1 91 00 00 00 00
  $%  REQ003:742 03 22 F1 87 00 00 00 00       $%  ANS003:7C2 03 22 F1 87 00 00 00 00
  $%  REQ004:742 03 22 F1 A0 00 00 00 00       $%  ANS004:7C2 03 22 F1 A0 00 00 00 00
  $%  REQ005:742 03 22 F1 90 00 00 00 00       $%  ANS005:7C2 03 22 F1 90 00 00 00 00
  $%  REQ006:742 03 22 F1 A8 00 00 00 00       $%  ANS006:7C2 03 22 F1 A8 00 00 00 00

  $%  000:当前诊断模式:                                $%    $%  ANS000.BYTE004  $%  HEX(X1);
  $%  001:博士电控单元软件版本号(BB号):                $%    $%  ANS001.BYTE004  $%  HEX(X1,X2,X3);
  $%  002:博士电控单元软件版本号(阶段):                $%    $%  ANS001.BYTE004  $%  ASCII(X1);
  $%  003:博士电控单元软件版本号(气囊代码):            $%    $%  ANS001.BYTE004  $%  HEX(X1);
  $%  004:博士电控单元软件版本号(项目编号):            $%    $%  ANS001.BYTE004  $%  HEX(X1);
  $%  005:博世电控单元硬件版本号:                      $%    $%  ANS001.BYTE004  $%  HEX(X1);
  $%  006:博士电控单元软件版本号(日期):                $%    $%  ANS001.BYTE004  $%  HEX(X1,X2,X3,X4);
  $%  007:博士电控单元软件版本号(序列号和类别):        $%    $%  ANS001.BYTE004  $%  HEX(X1);
  $%  008:博士电控单元软件版本号(制造商):              $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2);
  $%  009:SAIC硬件版本号:                              $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  010:SAIC零件号:                                  $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  011:SAIC软件版本号:                              $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%c%02X%02X%02X%02X%02X],X1,X2,X3,X4,X5,X6);
  $%  012:VIN码:                                       $%    $%  ANS005.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  013:车辆特征信息:                                $%    $%  ANS006.BYTE004  $%  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:742 03 22 F1 A5 00 00 00 00       $  ANS000:7C2 03 22 F1 A5 00 00 00 00
  $  REQ001:742 03 22 F1 96 00 00 00 00       $  ANS001:7C2 03 22 F1 96 00 00 00 00
  $  REQ002:742 03 22 F1 D2 00 00 00 00       $  ANS002:7C2 03 22 F1 D2 00 00 00 00
  $  REQ003:742 03 22 F1 D3 00 00 00 00       $  ANS003:7C2 03 22 F1 D3 00 00 00 00
  $  REQ004:742 03 22 D0 05 00 00 00 00       $  ANS004:7C2 03 22 D0 05 00 00 00 00
  $  REQ005:742 03 22 F1 9A 00 00 00 00       $  ANS005:7C2 03 22 F1 9A 00 00 00 00
  $  REQ006:742 03 22 F1 9D 00 00 00 00       $  ANS006:7C2 03 22 F1 9D 00 00 00 00
  $  REQ007:742 03 22 F1 98 00 00 00 00       $  ANS007:7C2 03 22 F1 98 00 00 00 00
  $  REQ008:742 03 22 F1 87 00 00 00 00       $  ANS008:7C2 03 22 F1 87 00 00 00 00
  $  REQ009:742 03 22 F1 9B 00 00 00 00       $  ANS009:7C2 03 22 F1 9B 00 00 00 00
  $  REQ010:742 03 22 F1 A8 00 00 00 00       $  ANS010:7C2 03 22 F1 A8 00 00 00 00
  $  REQ011:742 03 22 F1 90 00 00 00 00       $  ANS011:7C2 03 22 F1 90 00 00 00 00
  $  REQ012:742 03 22 D0 01 00 00 00 00       $  ANS012:7C2 03 22 D0 01 00 00 00 00

  $  000.前排乘员侧安全带(BTFP)                                  $    $           $    $  ANS000.BYTE004  $  if((x&0x08)==0x08)y=@0445;else y=@0112;
  $  001.驾驶员侧安全带(BTFD)                                    $    $           $    $  ANS000.BYTE004  $  if((x&0x04)==0x04)y=@0445;else y=@0112;
  $  002.前乘客气囊(ABFP)                                        $    $           $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@0445;else y=@0112;
  $  003.驾驶员气囊(ABFD)                                        $    $           $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@0445;else y=@0112;
  $  004.前排乘员侧PAS(PASFP)                                    $    $           $    $  ANS000.BYTE006  $  if((x&0x02)==0x02)y=@0445;else y=@0112;
  $  005.驾驶员侧PAS(PASFD)                                      $    $           $    $  ANS000.BYTE006  $  if((x&0x01)==0x01)y=@0445;else y=@0112;
  $  006.碰撞输出信号来自CAN                                     $    $           $    $  ANS000.BYTE008  $  if((x&0x10)==0x10)y=@0445;else y=@0112;
  $  007.系统警告灯状态来自CAN                                   $    $           $    $  ANS000.BYTE008  $  if((x&0x01)==0x01)y=@0445;else y=@0112;
  $  008.碰撞输出信号来自硬件线                                  $    $           $    $  ANS000.BYTE009  $  if((x&0x10)==0x10)y=@0445;else y=@0112;
  $  009.前排乘员气囊(ABFP)                                      $    $           $    $  ANS000.BYTE004  $  if((x&0x02)==0x02)y=@0445;else y=@0112;
  $  010.驾驶员气囊(ABFD)                                        $    $           $    $  ANS000.BYTE004  $  if((x&0x01)==0x01)y=@0445;else y=@0112;
  $  011.前排乘员侧PAS(PASFP)                                    $    $           $    $  ANS000.BYTE006  $  if((x&0x02)==0x02)y=@0445;else y=@0112;
  $  012.驾驶员侧PAS(PASFD)                                      $    $           $    $  ANS000.BYTE006  $  if((x&0x01)==0x01)y=@0445;else y=@0112;
  $  013.碰撞输出信号来自CAN                                     $    $           $    $  ANS000.BYTE008  $  if((x&0x10)==0x10)y=@0445;else y=@0112;
  $  014.系统警告灯状态来自CAN                                   $    $           $    $  ANS000.BYTE008  $  if((x&0x01)==0x01)y=@0445;else y=@0112;
  $  015.碰撞输出信号来自硬件线                                  $    $           $    $  ANS000.BYTE009  $  if((x&0x10)==0x10)y=@0445;else y=@0112;
  $  016.博世零件号                                              $    $           $    $  ANS001.BYTE004  $  ASCII(x1,x2,x3,x4);
  $  017.EEPROM版本                                              $    $           $    $  ANS001.BYTE008  $  HEX(X1);
  $  018.实际运行时间                                            $    $           $    $  ANS001.BYTE009  $  HEX(X1,X2,X3,X4);
  $  019.上电/下电 计数器                                        $    $           $    $  ANS001.BYTE013  $  HEX(X1,X2,X3,X4);
  $  020.最终碰撞代码                                            $    $           $    $  ANS002.BYTE004  $  HEX(X);
  $  021.碰撞次数记录器                                          $    $           $    $  ANS002.BYTE005  $  y=x;
  $  022.发生碰撞时后排中间乘员座位安全带指示警告灯状态          $    $           $    $  ANS002.BYTE006  $  if((x&0x30)==0x00)y=@028b;else if((x&0x30)==0x10)y=@043e;else y=@0004;
  $  023.发生碰撞时后排乘客座位安全带指示警告灯状态              $    $           $    $  ANS002.BYTE006  $  if((x&0x0C)==0x00)y=@028b;else if((x&0x0C)==0x04)y=@043e;else y=@0004;
  $  024.发生碰撞时后驾驶侧座位安全带指示警告灯状态              $    $           $    $  ANS002.BYTE006  $  if((x&0x03)==0x00)y=@028b;else if((x&0x03)==0x01)y=@043e;else y=@0004;
  $  025.发生碰撞时前排乘员安全带指示警告灯状态                  $    $           $    $  ANS002.BYTE007  $  if((x&0xC0)==0x00)y=@028b;else if((x&0xC0)==0x40)y=@043e;else y=@0004;
  $  026.发生碰撞时驾驶员安全带指示警告灯状态                    $    $           $    $  ANS002.BYTE007  $  if((x&0x30)==0x00)y=@028b;else if((x&0x30)==0x10)y=@043e;else y=@0004;
  $  027.发生碰撞时PADI警告灯状态                                $    $           $    $  ANS002.BYTE007  $  if((x&0x0C)==0x00)y=@028b;else if((x&0x0C)==0x04)y=@043e;else y=@0004;
  $  028.发生碰撞时系统警告灯状态                                $    $           $    $  ANS002.BYTE007  $  if((x&0x03)==0x00)y=@028b;else if((x&0x03)==0x01)y=@043e;else y=@0004;
  $  029.PASFP故障状态                                           $    $           $    $  ANS002.BYTE008  $  if((x&0x08)==0x08)y=@00b3;else y=@0197;
  $  030.PASFD故障状态                                           $    $           $    $  ANS002.BYTE008  $  if((x&0x04)==0x04)y=@00b3;else y=@0197;
  $  031.主传感器柱2故障状态                                     $    $           $    $  ANS002.BYTE008  $  if((x&0x02)==0x02)y=@00b3;else y=@0197;
  $  032.主传感器柱1故障状态                                     $    $           $    $  ANS002.BYTE008  $  if((x&0x01)==0x01)y=@00b3;else y=@0197;
  $  033.所有的低级动力阶段使能状态                              $    $           $    $  ANS002.BYTE009  $  if((x&0x20)==0x20)y=@00db;else y=@00dc;
  $  034.所有的高级动力阶段使能状态                              $    $           $    $  ANS002.BYTE009  $  if((x&0x10)==0x10)y=@00db;else y=@00dc;
  $  035.DIS SRL HW特殊禁用行                                    $    $           $    $  ANS002.BYTE009  $  if((x&0x08)==0x08)y=@00db;else y=@00dc;
  $  036.前排乘员监测坐垫开关状态                                $    $           $    $  ANS002.BYTE011  $  if((x&0xC0)==0x00)y=@0ba5;else if((x&0xC0)==0x40)y=@0ba6;else y=@01a9;
  $  037.前排乘员气囊是否激活开关                                $    $           $    $  ANS002.BYTE011  $  if((x&0x30)==0x00)y=@0ba5;else if((x&0x30)==0x10)y=@0ba6;else y=@01a9;
  $  038.前排乘员扣带开关状态                                    $    $           $    $  ANS002.BYTE011  $  if((x&0x0C)==0x00)y=@0ba5;else if((x&0x0C)==0x04)y=@0ba6;else y=@01a9;
  $  039.驾驶员扣带开关状态                                      $    $           $    $  ANS002.BYTE011  $  if((x&0x03)==0x00)y=@0ba5;else if((x&0x03)==0x01)y=@0ba6;else y=@01a9;
  $  040.从RAM中获取的故障码记录                                 $    $           $    $  ANS002.BYTE012  $  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24);
  $  041.车速                                                    $    $  km/h     $    $  ANS002.BYTE036  $  y=x1*256+x2;
  $  042.运行时间计数器                                          $    $  s        $    $  ANS002.BYTE038  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  043.碰撞类型                                                $    $           $    $  ANS002.BYTE042  $  if((x1*256+x2)==0x0001)y=@04c9;else if((x1*256+x2)==0x0002)y=@0449;else if((x1*256+x2)==0x0004)y=@044a;else if((x1*256+x2)==0x0008)y=@044b;else if((x1*256+x2)==0x0020)y=@044d;else if((x1*256+x2)==0x0040)y=@044e;else if((x1*256+x2)==0x0080)y=@044f;else if((x1*256+x2)==0x0100)y=@044c;else y=@0004;
  $  044.前Algo启动时间                                          $    $  ms       $    $  ANS002.BYTE044  $  y=(x1*256+x2)*0.5;
  $  045.侧碰撞算法启动时间                                      $    $  ms       $    $  ANS002.BYTE046  $  y=(x1*256+x2)*0.5;
  $  046.后碰撞算法启动时间                                      $    $  ms       $    $  ANS002.BYTE048  $  y=(x1*256+x2)*0.5;
  $  047.碰撞发生到阈值接近的时间                                $    $  ms       $    $  ANS002.BYTE050  $  y=(x1*256+x2)*0.5;
  $  048.碰撞发生到安全带预紧阈值超出的时间                      $    $  ms       $    $  ANS002.BYTE052  $  y=(x1*256+x2)*0.5;
  $  049.碰撞发生到前气囊引爆阈值超出的时间                      $    $  ms       $    $  ANS002.BYTE054  $  y=(x1*256+x2)*0.5;
  $  050.碰撞发生到侧气囊引爆阈值超出的时间                      $    $  ms       $    $  ANS002.BYTE056  $  y=(x1*256+x2)*0.5;
  $  051.算法复位时间                                            $    $  ms       $    $  ANS002.BYTE058  $  y=(x1*256+x2)*0.5;
  $  052.碰撞发生到ECU X轴最大加速度时间                         $    $  ms       $    $  ANS002.BYTE060  $  y=(x1*256+x2)*0.5;
  $  053.碰撞发生到ECU Y轴最大加速度时间                         $    $  ms       $    $  ANS002.BYTE062  $  y=(x1*256+x2)*0.5;
  $  054.碰撞发生到前驾驶员PAS最大加速时间                       $    $  ms       $    $  ANS002.BYTE064  $  y=(x1*256+x2)*0.5;
  $  055.碰撞发生到前排乘员PAS最大加速时间                       $    $  ms       $    $  ANS002.BYTE066  $  y=(x1*256+x2)*0.5;
  $  056.碰撞发生到PASMD/UFSD最大加速属时间                      $    $  ms       $    $  ANS002.BYTE068  $  y=(x1*256+x2)*0.5;
  $  057.碰撞发生到PASMP/UFSP最大加速时间                        $    $  ms       $    $  ANS002.BYTE070  $  y=(x1*256+x2)*0.5;
  $  058.可靠性                                                  $    $           $    $  ANS002.BYTE075  $  if(x==0x00)y=@04ca;else if(x==0x01)y=@04cb;else if(x==0x02)y=@04cc;else y=@01a9;
  $  059.Algo激活期间X轴最大加速度时间                           $    $  g        $    $  ANS002.BYTE076  $  y=x*0.8;
  $  060.Algo激活期间Y轴最大加速度时间                           $    $  g        $    $  ANS002.BYTE077  $  y=x*0.8;
  $  061.Algo激活期间PASFD最大加速时间                           $    $  g        $    $  ANS002.BYTE078  $  y=x;
  $  062.Algo激活期间PASFP最大加速时间                           $    $  g        $    $  ANS002.BYTE079  $  y=x;
  $  063.Algo激活期间PASFD/UFSD最大加速时间                      $    $  g        $    $  ANS002.BYTE080  $  y=x;
  $  064.Algo激活期间PASFP/UFSP最大加速时间                      $    $  g        $    $  ANS002.BYTE081  $  y=x;
  $  065.Delta速度                                               $    $           $    $  ANS002.BYTE082  $  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $  066.驾驶员安全带引爆计数器                                  $    $           $    $  ANS002.BYTE102  $  y=x;
  $  067.前排乘员安全带引爆计数器                                $    $           $    $  ANS002.BYTE103  $  y=x;
  $  068.驾驶员气囊引爆计数器                                    $    $           $    $  ANS002.BYTE104  $  y=x;
  $  069.前排乘员气囊引爆计数器                                  $    $           $    $  ANS002.BYTE105  $  y=x;
  $  070.驾驶员侧气囊引爆计数器                                  $    $           $    $  ANS002.BYTE106  $  y=x;
  $  071.乘员侧气囊引爆计数器                                    $    $           $    $  ANS002.BYTE107  $  y=x;
  $  072.驾驶员气帘引爆计数器                                    $    $           $    $  ANS002.BYTE108  $  y=x;
  $  073.前排乘员气帘引爆计数器                                  $    $           $    $  ANS002.BYTE109  $  y=x;
  $  074.驾驶员膝气袋引爆计数器                                  $    $           $    $  ANS002.BYTE110  $  y=x;
  $  075.前排乘员膝气袋引爆计数器                                $    $           $    $  ANS002.BYTE111  $  y=x;
  $  076.后驾驶侧安全带引爆计数器                                $    $           $    $  ANS002.BYTE112  $  y=x;
  $  077.后乘客侧安全带引爆计数器                                $    $           $    $  ANS002.BYTE113  $  y=x;
  $  078.后驾驶侧侧气囊引爆计数器                                $    $           $    $  ANS002.BYTE114  $  y=x;
  $  079.后乘客侧侧气囊引爆计数器                                $    $           $    $  ANS002.BYTE115  $  y=x;
  $  080.在碰撞发生时的能量储备电压                              $    $  V        $    $  ANS002.BYTE116  $  y=x*0.2;
  $  081.在气囊引爆后的能量储备电压                              $    $  V        $    $  ANS002.BYTE117  $  y=x*0.2;
  $  082.引爆前电源电压                                          $    $  V        $    $  ANS002.BYTE118  $  y=x*0.1;
  $  083.引爆后电源电压                                          $    $  V        $    $  ANS002.BYTE119  $  y=x*0.1;
  $  084.碰撞输出状态                                            $    $           $    $  ANS002.BYTE120  $  if((x&0x01)==0x01)y=@0004;else y=@04cf;
  $  085.D3 碰撞记录完成标志                                     $    $           $    $  ANS003.BYTE004  $  HEX(X);
  $  086.D3 碰撞次数记录器                                       $    $           $    $  ANS003.BYTE005  $  y=x;
  $  087.D3 发生碰撞时后排中间乘员座位安全带指示警告灯状态       $    $           $    $  ANS003.BYTE006  $  if((x&0x30)==0x00)y=@028b;else if((x&0x30)==0x10)y=@043e;else y=@0004;
  $  088.D3 发生碰撞时后排乘客座位安全带指示警告灯状态           $    $           $    $  ANS003.BYTE006  $  if((x&0x0C)==0x00)y=@028b;else if((x&0x0C)==0x04)y=@043e;else y=@0004;
  $  089.D3 发生碰撞时后驾驶侧座位安全带指示警告灯状态           $    $           $    $  ANS003.BYTE006  $  if((x&0x03)==0x00)y=@028b;else if((x&0x03)==0x01)y=@043e;else y=@0004;
  $  090.D3 发生碰撞时前排乘员安全带指示警告灯状态               $    $           $    $  ANS003.BYTE007  $  if((x&0xC0)==0x00)y=@028b;else if((x&0xC0)==0x40)y=@043e;else y=@0004;
  $  091.D3 发生碰撞时驾驶员安全带指示警告灯状态                 $    $           $    $  ANS003.BYTE007  $  if((x&0x30)==0x00)y=@028b;else if((x&0x30)==0x10)y=@043e;else y=@0004;
  $  092.D3 发生碰撞时PADI警告灯状态                             $    $           $    $  ANS003.BYTE007  $  if((x&0x0C)==0x00)y=@028b;else if((x&0x0C)==0x04)y=@043e;else y=@0004;
  $  093.D3 发生碰撞时系统警告灯状态                             $    $           $    $  ANS003.BYTE007  $  if((x&0x03)==0x00)y=@028b;else if((x&0x03)==0x01)y=@043e;else y=@0004;
  $  094.D3 PASFP故障状态                                        $    $           $    $  ANS003.BYTE008  $  if((x&0x08)==0x08)y=@00b3;else y=@0197;
  $  095.D3 PASFD故障状态                                        $    $           $    $  ANS003.BYTE008  $  if((x&0x04)==0x04)y=@00b3;else y=@0197;
  $  096.D3 主传感器柱2故障状态                                  $    $           $    $  ANS003.BYTE008  $  if((x&0x02)==0x02)y=@00b3;else y=@0197;
  $  097.D3 主传感器柱1故障状态                                  $    $           $    $  ANS003.BYTE008  $  if((x&0x01)==0x01)y=@00b3;else y=@0197;
  $  098.D3 DIS ALP 全低功率级                                   $    $           $    $  ANS003.BYTE009  $  if((x&0x20)==0x20)y=@00db;else y=@00dc;
  $  099.D3 DIS ALP 全高功率级                                   $    $           $    $  ANS003.BYTE009  $  if((x&0x10)==0x10)y=@00db;else y=@00dc;
  $  100.D3 DIS SRL HW特殊禁用行                                 $    $           $    $  ANS003.BYTE009  $  if((x&0x08)==0x08)y=@00db;else y=@00dc;
  $  101.D3 前排乘员监测坐垫开关状态                             $    $           $    $  ANS003.BYTE011  $  if((x&0xC0)==0x00)y=@0ba5;else if((x&0xC0)==0x40)y=@0ba6;else y=@01a9;
  $  102.D3 前排乘员气囊是否激活开关                             $    $           $    $  ANS003.BYTE011  $  if((x&0x30)==0x00)y=@0ba5;else if((x&0x30)==0x10)y=@0ba6;else y=@01a9;
  $  103.D3 前排乘员扣带开关状态                                 $    $           $    $  ANS003.BYTE011  $  if((x&0x0C)==0x00)y=@0ba5;else if((x&0x0C)==0x04)y=@0ba6;else y=@01a9;
  $  104.D3 驾驶员扣带开关状态                                   $    $           $    $  ANS003.BYTE011  $  if((x&0x03)==0x00)y=@0ba5;else if((x&0x03)==0x01)y=@0ba6;else y=@01a9;
  $  105.D3 从RAM中获取的故障码记录                              $    $           $    $  ANS003.BYTE012  $  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24);
  $  106.D3 车速                                                 $    $  km/h     $    $  ANS003.BYTE036  $  y=x1*256+x2;
  $  107.D3 运行时间计数器                                       $    $  s        $    $  ANS003.BYTE038  $  y=UINT(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  108.D3 碰撞类型                                             $    $           $    $  ANS003.BYTE042  $  if((x1*256+x2)==0x0001)y=@04c9;else if((x1*256+x2)==0x0002)y=@0449;else if((x1*256+x2)==0x0004)y=@044a;else if((x1*256+x2)==0x0008)y=@044b;else if((x1*256+x2)==0x0020)y=@044d;else if((x1*256+x2)==0x0040)y=@044e;else if((x1*256+x2)==0x0080)y=@044f;else if((x1*256+x2)==0x0100)y=@044c;else y=@0004;
  $  109.D3 前Algo启动时间                                       $    $  ms       $    $  ANS003.BYTE044  $  y=(x1*256+x2)*0.5;
  $  110.D3 侧Algo启动时间                                       $    $  ms       $    $  ANS003.BYTE046  $  y=(x1*256+x2)*0.5;
  $  111.D3 后Algo启动时间                                       $    $  ms       $    $  ANS003.BYTE048  $  y=(x1*256+x2)*0.5;
  $  112.D3 碰撞发生到阈值接近的时间                             $    $  ms       $    $  ANS003.BYTE050  $  y=(x1*256+x2)*0.5;
  $  113.D3 碰撞发生到安全带预紧阈值超出的时间                   $    $  ms       $    $  ANS003.BYTE052  $  y=(x1*256+x2)*0.5;
  $  114.D3 碰撞发生到前气囊引爆阈值超出的时间                   $    $  ms       $    $  ANS003.BYTE054  $  y=(x1*256+x2)*0.5;
  $  115.D3 碰撞发生到侧气囊引爆阈值超出的时间                   $    $  ms       $    $  ANS003.BYTE056  $  y=(x1*256+x2)*0.5;
  $  116.D3 算法复位时间                                         $    $  ms       $    $  ANS003.BYTE058  $  y=(x1*256+x2)*0.5;
  $  117.D3 碰撞发生到ECU X轴最大加速度时间                      $    $  ms       $    $  ANS003.BYTE060  $  y=(x1*256+x2)*0.5;
  $  118.D3 碰撞发生到ECU Y轴最大加速度时间                      $    $  ms       $    $  ANS003.BYTE062  $  y=(x1*256+x2)*0.5;
  $  119.D3 碰撞发生到前驾驶员PAS最大加速时间                    $    $  ms       $    $  ANS003.BYTE064  $  y=(x1*256+x2)*0.5;
  $  120.D3 碰撞发生到前排乘员PAS最大加速时间                    $    $  ms       $    $  ANS003.BYTE066  $  y=(x1*256+x2)*0.5;
  $  121.D3 碰撞发生到PASMD/UFSD最大加速属时间                   $    $  ms       $    $  ANS003.BYTE068  $  y=(x1*256+x2)*0.5;
  $  122.D3 碰撞发生到PASMP/UFSP最大加速时间                     $    $  ms       $    $  ANS003.BYTE070  $  y=(x1*256+x2)*0.5;
  $  123.D3 可靠性                                               $    $           $    $  ANS003.BYTE075  $  if(x==0x00)y=@04ca;else if(x==0x01)y=@04cb;else if(x==0x02)y=@04cc;else y=@01a9;
  $  124.D3 Algo激活期间X轴最大加速度时间                        $    $  g        $    $  ANS003.BYTE076  $  y=x*0.8;
  $  125.D3 Algo激活期间Y轴最大加速度时间                        $    $  g        $    $  ANS003.BYTE077  $  y=x*0.8;
  $  126.D3 Algo激活期间PASFD最大加速时间                        $    $  g        $    $  ANS003.BYTE078  $  y=x;
  $  127.D3 Algo激活期间PASFP最大加速时间                        $    $  g        $    $  ANS003.BYTE079  $  y=x;
  $  128.D3 Algo激活期间PASFD/UFSD最大加速时间                   $    $  g        $    $  ANS003.BYTE080  $  y=x;
  $  129.D3 Algo激活期间PASFP/UFSP最大加速时间                   $    $  g        $    $  ANS003.BYTE081  $  y=x;
  $  130.D3 Delta速度                                            $    $           $    $  ANS003.BYTE082  $  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $  131.D3 驾驶员安全带引爆计数器                               $    $           $    $  ANS003.BYTE102  $  y=x;
  $  132.D3 前排乘员安全带引爆计数器                             $    $           $    $  ANS003.BYTE103  $  y=x;
  $  133.D3 驾驶员气囊引爆计数器                                 $    $           $    $  ANS003.BYTE104  $  y=x;
  $  134.D3 前排乘员气囊引爆计数器                               $    $           $    $  ANS003.BYTE105  $  y=x;
  $  135.D3 驾驶员侧气囊引爆计数器                               $    $           $    $  ANS003.BYTE106  $  y=x;
  $  136.D3 前排乘员侧气囊引爆计数器                             $    $           $    $  ANS003.BYTE107  $  y=x;
  $  137.D3 驾驶员气帘引爆计数器                                 $    $           $    $  ANS003.BYTE108  $  y=x;
  $  138.D3 前排乘员气帘引爆计数器                               $    $           $    $  ANS003.BYTE109  $  y=x;
  $  139.D3 驾驶员膝气袋引爆计数器                               $    $           $    $  ANS003.BYTE110  $  y=x;
  $  140.D3 前排乘员膝气袋引爆计数器                             $    $           $    $  ANS003.BYTE111  $  y=x;
  $  141.D3 后驾驶侧安全带引爆计数器                             $    $           $    $  ANS003.BYTE112  $  y=x;
  $  142.D3 后乘客侧安全带引爆计数器                             $    $           $    $  ANS003.BYTE113  $  y=x;
  $  143.D3 后驾驶侧侧气囊引爆计数器                             $    $           $    $  ANS003.BYTE114  $  y=x;
  $  144.D3 后乘客侧侧气囊引爆计数器                             $    $           $    $  ANS003.BYTE115  $  y=x;
  $  145.D3 在碰撞发生时的能量储备电压                           $    $  V        $    $  ANS003.BYTE116  $  y=x*0.2;
  $  146.D3 在气囊引爆后的能量储备电压                           $    $  V        $    $  ANS003.BYTE117  $  y=x*0.2;
  $  147.D3 引爆前电源电压                                       $    $  V        $    $  ANS003.BYTE118  $  y=x*0.1;
  $  148.D3 引爆后电源电压                                       $    $  V        $    $  ANS003.BYTE119  $  y=x*0.1;
  $  149.D3 碰撞输出状态                                         $    $           $    $  ANS003.BYTE120  $  if((x&0x01)==0x01)y=@0004;else y=@04cf;
  $  150.碰撞输出                                                $    $           $    $  ANS004.BYTE004  $  if(x==0x01) y=@000f;else if(x==0x02) y=@0028;else y=@01a9;
  $  151.客户模式                                                $    $           $    $  ANS005.BYTE004  $  if(x==0x00)y=@043c;else if(x==0xFF)y=@043d;else y=@01a9;
  $  152.车辆生产日期                                            $    $           $    $  ANS006.BYTE004  $  HEX(X1,X2,X3,X4,X5,X6);
  $  153.上次保养日期                                            $    $           $    $  ANS007.BYTE004  $  HEX(X1,X2,X3,X4,X5,X6);
  $  154.电控单元零件号                                          $    $           $    $  ANS008.BYTE004  $  ASCII(X1);
  $  155.电控单元零件号2                                         $    $           $    $  ANS008.BYTE005  $  HEX(X1,X2,X3,X4,X5);
  $  156.系统警告灯CAN设备状态                                   $    $           $    $  ANS009.BYTE004  $  if((x&0xE0)==0x00)y=@028b;else if((x&0xE0)==0x20)y=@043e;else if((x&0xE0)==0xE0)y=@043f;else y=@01a9;
  $  157.系统警告灯CAN设备客户编程状态                           $    $           $    $  ANS009.BYTE004  $  if((x&0x10)==0x10)y=@0445;else y=@0112;
  $  158.系统警告灯硬件设备状态                                  $    $           $    $  ANS009.BYTE004  $  if((x&0x0E)==0x00)y=@028b;else if((x&0x0E)==0x02)y=@043e;else if((x&0x0E)==0x04)y=@04d2;else if((x&0x0E)==0x0E)y=@043f;else y=@01a9;
  $  159.系统警告灯硬件设备客户编程状态                          $    $           $    $  ANS009.BYTE004  $  if((x&0x01)==0x01)y=@0445;else y=@0112;
  $  160.碰撞输出CAN设备状态                                     $    $           $    $  ANS009.BYTE008  $  if((x&0xE0)==0x00)y=@0441;else if((x&0xE0)==0x20)y=@0442;else if((x&0xE0)==0xE0)y=@04d0;else y=@01a9;
  $  161.碰撞输出CAN设备客户编程状态                             $    $           $    $  ANS009.BYTE008  $  if((x&0x10)==0x10)y=@0445;else y=@0112;
  $  162.碰撞输出硬件设备状态                                    $    $           $    $  ANS009.BYTE008  $  if((x&0x0E)==0x00)y=@0441;else if((x&0x0E)==0x02)y=@0442;else if((x&0x0E)==0x04)y=@04d1;else if((x&0x0E)==0x0E)y=@04d0;else y=@01a9;
  $  163.碰撞输出硬件设备客户编程状态                            $    $           $    $  ANS009.BYTE008  $  if((x&0x01)==0x01)y=@0445;else y=@0112;
  $  164.车辆特征信息                                            $    $           $    $  ANS010.BYTE004  $  HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $  165.VIN码                                                   $    $           $    $  ANS011.BYTE004  $  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $  166.警告灯                                                  $    $           $    $  ANS012.BYTE004  $  if(x==0x01) y=@000f;else if(x==0x02) y=@0028;else y=@01a9;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:742 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
