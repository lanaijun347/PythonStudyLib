
    车型ID：740e

    模拟：协议模拟-->740e

;******************************************************************************************************************************************************

    通讯线: $~03$~08$~500k$~70E

进入命令:

  $~  REQ000:706 02 10 01 00 00 00 00 00       $~  ANS000:70E 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:706 02 3E 00 00 00 00 00 00       $!  ANS000:70E 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:706 03 19 02 09 00 00 00 00       $#  ANS000:70E 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/3a000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:706 04 14 FF FF FF 00 00 00       $$  ANS000:70E 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:706 03 22 F1 89 00 00 00 00       $%  ANS000:70E 03 22 F1 89 00 00 00 00
  $%  REQ001:706 03 22 F1 8A 00 00 00 00       $%  ANS001:70E 03 22 F1 8A 00 00 00 00
  $%  REQ002:706 03 22 F1 87 00 00 00 00       $%  ANS002:70E 03 22 F1 87 00 00 00 00
  $%  REQ003:706 03 22 F1 90 00 00 00 00       $%  ANS003:70E 03 22 F1 90 00 00 00 00
  $%  REQ004:706 03 22 F1 97 00 00 00 00       $%  ANS004:70E 03 22 F1 97 00 00 00 00
  $%  REQ005:706 03 22 F1 8C 00 00 00 00       $%  ANS005:70E 03 22 F1 8C 00 00 00 00
  $%  REQ006:706 03 22 F1 A1 00 00 00 00       $%  ANS006:70E 03 22 F1 A1 00 00 00 00
  $%  REQ007:706 03 22 F1 79 00 00 00 00       $%  ANS007:70E 03 22 F1 79 00 00 00 00
  $%  REQ008:706 03 22 F1 7F 00 00 00 00       $%  ANS008:70E 03 22 F1 7F 00 00 00 00
  $%  REQ009:706 03 22 F1 95 00 00 00 00       $%  ANS009:70E 03 22 F1 95 00 00 00 00
  $%  REQ010:706 03 22 F1 93 00 00 00 00       $%  ANS010:70E 03 22 F1 93 00 00 00 00
  $%  REQ011:706 03 22 F1 99 00 00 00 00       $%  ANS011:70E 03 22 F1 99 00 00 00 00

  $%  000:软件版本(OEM):        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  001:供应商代码:           $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  002:零部件号:             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  003:VIN码:                $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:系统名称:             $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3);
  $%  005:生产序列号:           $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:维修店编码:           $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  007:维修时间:             $%    $%  ANS006.BYTE009  $%  HEX(x1,x2,x3,x4);
  $%  008:维修时的总里程:       $%    $%  ANS006.BYTE013  $%  y=(x1<<16)+(x2<<8)+x3;
  $%  009:硬件版本(OEM):        $%    $%  ANS007.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  010:软件校验码:           $%    $%  ANS008.BYTE004  $%  HEX(x1,x2);
  $%  011:软件版本(SYS):        $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:硬件版本(SYS):        $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  013:编程日期:             $%    $%  ANS011.BYTE004  $%  HEX(x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:706 03 22 02 00 00 00 00 00       $  ANS000:70E 03 22 02 00 00 00 00 00
  $  REQ001:706 03 22 01 00 00 00 00 00       $  ANS001:70E 03 22 01 00 00 00 00 00
  $  REQ002:706 03 22 01 01 00 00 00 00       $  ANS002:70E 03 22 01 01 00 00 00 00
  $  REQ003:706 03 22 01 02 00 00 00 00       $  ANS003:70E 03 22 01 02 00 00 00 00
  $  REQ004:706 03 22 01 03 00 00 00 00       $  ANS004:70E 03 22 01 03 00 00 00 00
  $  REQ005:706 03 22 01 04 00 00 00 00       $  ANS005:70E 03 22 01 04 00 00 00 00
  $  REQ006:706 03 22 01 05 00 00 00 00       $  ANS006:70E 03 22 01 05 00 00 00 00
  $  REQ007:706 03 22 12 00 00 00 00 00       $  ANS007:70E 03 22 12 00 00 00 00 00
  $  REQ008:706 03 22 12 01 00 00 00 00       $  ANS008:70E 03 22 12 01 00 00 00 00
  $  REQ009:706 03 22 12 02 00 00 00 00       $  ANS009:70E 03 22 12 02 00 00 00 00
  $  REQ010:706 03 22 12 03 00 00 00 00       $  ANS010:70E 03 22 12 03 00 00 00 00
  $  REQ011:706 03 22 12 04 00 00 00 00       $  ANS011:70E 03 22 12 04 00 00 00 00
  $  REQ012:706 03 22 01 A0 00 00 00 00       $  ANS012:70E 03 22 01 A0 00 00 00 00
  $  REQ013:706 03 22 01 A1 00 00 00 00       $  ANS013:70E 03 22 01 A1 00 00 00 00
  $  REQ014:706 03 22 01 A2 00 00 00 00       $  ANS014:70E 03 22 01 A2 00 00 00 00
  $  REQ015:706 03 22 01 A3 00 00 00 00       $  ANS015:70E 03 22 01 A3 00 00 00 00
  $  REQ016:706 03 22 01 A4 00 00 00 00       $  ANS016:70E 03 22 01 A4 00 00 00 00
  $  REQ017:706 03 22 01 A5 00 00 00 00       $  ANS017:70E 03 22 01 A5 00 00 00 00
  $  REQ018:706 03 22 01 A6 00 00 00 00       $  ANS018:70E 03 22 01 A6 00 00 00 00
  $  REQ019:706 03 22 01 A7 00 00 00 00       $  ANS019:70E 03 22 01 A7 00 00 00 00
  $  REQ020:706 03 22 01 A8 00 00 00 00       $  ANS020:70E 03 22 01 A8 00 00 00 00

  $  000.行车自动落锁功能                                              $    $          $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@0160;else y=@0161;
  $  001.车身防盗报警功能                                              $    $          $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@0160;else y=@0161;
  $  002.紧急制动双闪功能                                              $    $          $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@0160;else y=@0161;
  $  003.前转向灯类型                                                  $    $          $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@0560;else y=@01b2;
  $  004.左右日间行车灯控制功能                                        $    $          $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@01af;else y=@01b0;
  $  005.后转向灯类型                                                  $    $          $    $  ANS000.BYTE004  $  if(((x>>6)&1)) y=@0560;else y=@01b2;
  $  006.前转向灯DTC使能                                               $    $          $    $  ANS000.BYTE004  $  if(((x>>7)&1)) y=@0160;else y=@0161;
  $  007.自动雨刮功能                                                  $    $          $    $  ANS000.BYTE005  $  if(((x>>0)&1)) y=@0160;else y=@0161;
  $  008.电动后尾门功能                                                $    $          $    $  ANS000.BYTE005  $  if(((x>>1)&1)) y=@0160;else y=@0161;
  $  009.雨量关窗功能                                                  $    $          $    $  ANS000.BYTE005  $  if(((x>>2)&1)) y=@0160;else y=@0161;
  $  010.多色氛围灯功能                                                $    $          $    $  ANS000.BYTE005  $  if(((x>>3)&1)) y=@0160;else y=@0161;
  $  011.电动后视镜折叠功能                                            $    $          $    $  ANS000.BYTE005  $  if(((x>>4)&1)) y=@0160;else y=@0161;
  $  012.自动灯光功能配置                                              $    $          $    $  ANS000.BYTE005  $  if(((x>>5)&1)) y=@0160;else y=@0161;
  $  013.高压油箱盖锁                                                  $    $          $    $  ANS000.BYTE005  $  if(((x>>6)&1)) y=@0160;else y=@0161;
  $  014.环境光线阈值百分比                                            $    $          $    $  ANS000.BYTE008  $  y=x;
  $  015.红外光线阈值百分比                                            $    $          $    $  ANS000.BYTE009  $  y=x;
  $  016.伴我回家灯开关激活最大时间                                    $    $  ms      $    $  ANS001.BYTE004  $  y=(x&0x07)*500;
  $  017.弯道辅助照明                                                  $    $          $    $  ANS001.BYTE005  $  if(((x>>3)&1)) y=@0160;else y=@0161;
  $  018.伴我回家灯的持续点亮时间                                      $    $  s       $    $  ANS002.BYTE004  $  y=(x&0x0F)*5;
  $  019.自动关闭近光灯和雾灯的时间周期 (熄火后大灯自动关闭时间)       $    $  s       $    $  ANS002.BYTE004  $  y=((x>>4)&0x0F)*5;
  $  020.点火开关关闭后,车窗电源延时关闭时间                           $    $  s       $    $  ANS003.BYTE004  $  y=((x>>4)&0x0F)*5;
  $  021.行李箱开关滤波时间                                            $    $  ms      $    $  ANS004.BYTE004  $  y=x*20+100;
  $  022.行李箱锁驱动时间                                              $    $  ms      $    $  ANS004.BYTE005  $  y=x*20+100;
  $  023.全部车门关闭时,顶灯保持点亮时间(顶灯延迟关闭时间)             $    $  s       $    $  ANS004.BYTE006  $  y=((x>>1)&0x0F)*5;
  $  024.至少一个车门未关闭时,顶灯保持点亮时间                         $    $  min     $    $  ANS004.BYTE006  $  y=((x>>5)&0x07)*5;
  $  025.行李箱开启时,行李箱开关滤波时间                               $    $  ms      $    $  ANS005.BYTE004  $  y=(x&0x0F)*240;
  $  026.碰撞解锁功能                                                  $    $          $    $  ANS005.BYTE005  $  if(((x>>0)&1)) y=@0160;else y=@0161;
  $  027.后视镜和后风挡除霜启用                                        $    $          $    $  ANS005.BYTE005  $  if(((x>>2)&1)) y=@0160;else y=@0161;
  $  028.除霜的最长激活时间                                            $    $  min     $    $  ANS005.BYTE005  $  y=(x>>3)&0x0F;
  $  029.前雨刮清洗延长刮刷次数                                        $    $          $    $  ANS005.BYTE006  $  y=x&0x07;
  $  030.前雨刮清洗延长刮水功能                                        $    $          $    $  ANS005.BYTE006  $  if(((x>>3)&1)) y=@0160;else y=@0161;
  $  031.前洗涤开关雨刮联动最小时间                                    $    $  ms      $    $  ANS005.BYTE006  $  y=((x>>4)&0x0F)*40;
  $  032.后雨刮清洗延长刮水时间                                        $    $          $    $  ANS005.BYTE007  $  y=x&0x07;
  $  033.后雨刮清洗延长刮水功能                                        $    $          $    $  ANS005.BYTE007  $  if(((x>>3)&1)) y=@0160;else y=@0161;
  $  034.后洗涤开关雨刮联动最小时间                                    $    $  ms      $    $  ANS005.BYTE007  $  y=((x>>4)&0x0F)*40;
  $  035.自动重新上锁功能                                              $    $          $    $  ANS006.BYTE004  $  if(((x>>0)&1)) y=@0160;else y=@0161;
  $  036.节电电源输出最大时间                                          $    $          $    $  ANS006.BYTE004  $  y=(x>>2)&0x7F;
  $  037.车窗一键升降功能                                              $    $          $    $  ANS006.BYTE005  $  ifx1 y=@0160;else y=@0161;
  $  038.多色氛围灯色彩值                                              $    $          $    $  ANS006.BYTE006  $  y=x;
  $  039.多色氛围灯亮度值                                              $    $          $    $  ANS006.BYTE007  $  y=x;
  $  040.左后转向灯反馈                                                $    $          $    $  ANS007.BYTE004  $  if(((x>>0)&1))y=@0165;else y=@0166;
  $  041.右后转向灯反馈                                                $    $          $    $  ANS007.BYTE004  $  if(((x>>1)&1))y=@0165;else y=@0166;
  $  042.危险灯开关                                                    $    $          $    $  ANS007.BYTE004  $  if(((x>>2)&1))y=@0165;else y=@0166;
  $  043.左前转向灯反馈                                                $    $          $    $  ANS007.BYTE004  $  if(((x>>3)&1))y=@0165;else y=@0166;
  $  044.右前转向灯反馈                                                $    $          $    $  ANS007.BYTE004  $  if(((x>>4)&1))y=@0165;else y=@0166;
  $  045.制动灯开关                                                    $    $          $    $  ANS007.BYTE004  $  if(((x>>5)&1))y=@0352;else y=@0510;
  $  046.行李箱状态开关                                                $    $          $    $  ANS008.BYTE004  $  if(((x>>3)&1))y=@015d;else y=@006c;
  $  047.左前车门状态开关                                              $    $          $    $  ANS008.BYTE004  $  if(((x>>4)&1))y=@015d;else y=@006c;
  $  048.右前车门状态开关                                              $    $          $    $  ANS008.BYTE004  $  if(((x>>5)&1))y=@015d;else y=@006c;
  $  049.左后车门状态开关                                              $    $          $    $  ANS008.BYTE004  $  if(((x>>6)&1))y=@015d;else y=@006c;
  $  050.右后车门状态开关                                              $    $          $    $  ANS008.BYTE004  $  if(((x>>7)&1))y=@015d;else y=@006c;
  $  051.行李箱开启开关                                                $    $          $    $  ANS009.BYTE004  $  if(((x>>1)&1))y=@004c;else y=@004b;
  $  052.高压油箱盖开关                                                $    $          $    $  ANS009.BYTE004  $  if(((x>>2)&1))y=@004c;else y=@004b;
  $  053.主驾驶门锁状态开关                                            $    $          $    $  ANS009.BYTE004  $  if(((x>>3)&1))y=@0068;else y=@0069;
  $  054.内后备箱解锁开关                                              $    $          $    $  ANS009.BYTE004  $  if(((x>>4)&1))y=@0068;else y=@0069;
  $  055.中控车门锁止开关                                              $    $          $    $  ANS009.BYTE004  $  if(((x>>5)&1))y=@01b5;else y=@00de;
  $  056.中控车门解锁开关                                              $    $          $    $  ANS009.BYTE004  $  if(((x>>6)&1))y=@01b5;else y=@00de;
  $  057.后雨刮停止开关输入状态                                        $    $          $    $  ANS010.BYTE004  $  if(((x>>1)&1))y=@01b3;else y=@01b4;
  $  058.前雨刮停止开关输入状态                                        $    $          $    $  ANS010.BYTE004  $  if(((x>>2)&1))y=@01b3;else y=@01b4;
  $  059.发动机舱盖接触开关                                            $    $          $    $  ANS010.BYTE005  $  if(((x>>4)&1))y=@015d;else y=@006c;
  $  060.外部后视镜折叠开关                                            $    $          $    $  ANS010.BYTE005  $  if(((x>>5)&1))y=@0561;else y=@0562;
  $  061.外部后视镜展开开关                                            $    $          $    $  ANS010.BYTE005  $  if(((x>>6)&1))y=@00dd;else y=@00de;
  $  062.IGN 2(点火2)                                                  $    $          $    $  ANS011.BYTE004  $  if(((x>>1)&1))y=@004c;else y=@004b;
  $  063.IGN 1(点火1)                                                  $    $          $    $  ANS011.BYTE004  $  if(((x>>2)&1))y=@004c;else y=@004b;
  $  064.钥匙插入                                                      $    $          $    $  ANS011.BYTE004  $  if(((x>>3)&1))y=@004c;else y=@004b;
  $  065.ACC                                                           $    $          $    $  ANS011.BYTE004  $  if(((x>>4)&1))y=@004c;else y=@004b;
  $  066.左闪光灯过载-过载计数器                                       $    $          $    $  ANS012.BYTE004  $  y=((x1<<8)+x2)&0x7FFF;
  $  067.左闪光灯过载-过载标志                                         $    $          $    $  ANS012.BYTE004  $  if(((x>>7)&1)) y=@015e;else y =@015f;
  $  068.右闪光灯过载-过载计数器                                       $    $          $    $  ANS013.BYTE004  $  y=((x1<<8)+x2)&0x7FFF;
  $  069.右闪光灯过载-过载标志                                         $    $          $    $  ANS013.BYTE004  $  if(((x>>7)&1)) y=@015e;else y =@015f;
  $  070.后雾灯过载-过载计数器                                         $    $          $    $  ANS014.BYTE004  $  y=((x1<<8)+x2)&0x7FFF;
  $  071.后雾灯过载-过载标志                                           $    $          $    $  ANS014.BYTE004  $  if(((x>>7)&1)) y=@015e;else y =@015f;
  $  072.前雾灯过载-过载计数器                                         $    $          $    $  ANS015.BYTE004  $  y=((x1<<8)+x2)&0x7FFF;
  $  073.前雾灯过载-过载标志                                           $    $          $    $  ANS015.BYTE004  $  if(((x>>7)&1)) y=@015e;else y =@015f;
  $  074.内饰灯过载-过载计数器                                         $    $          $    $  ANS016.BYTE004  $  y=((x1<<8)+x2)&0x7FFF;
  $  075.内饰灯过载-过载标志                                           $    $          $    $  ANS016.BYTE004  $  if(((x>>7)&1)) y=@015e;else y =@015f;
  $  076.位置灯过载-过载计数器                                         $    $          $    $  ANS017.BYTE004  $  y=((x1<<8)+x2)&0x7FFF;
  $  077.位置灯过载-过载标志                                           $    $          $    $  ANS017.BYTE004  $  if(((x>>7)&1)) y=@015e;else y =@015f;
  $  078.近光灯过载-过载计数器                                         $    $          $    $  ANS018.BYTE004  $  y=((x1<<8)+x2)&0x7FFF;
  $  079.近光灯过载-过载标志                                           $    $          $    $  ANS018.BYTE004  $  if(((x>>7)&1)) y=@015e;else y =@015f;
  $  080.远光灯过载-过载计数器                                         $    $          $    $  ANS019.BYTE004  $  y=((x1<<8)+x2)&0x7FFF;
  $  081.远光灯过载-过载标志                                           $    $          $    $  ANS019.BYTE004  $  if(((x>>7)&1)) y=@015e;else y =@015f;
  $  082.PWL(车窗电源)启用继电器过载-过载计数器                        $    $          $    $  ANS020.BYTE004  $  y=((x1<<8)+x2)&0x7FFF;
  $  083.PWL(车窗电源)启用继电器过载-过载标志                          $    $          $    $  ANS020.BYTE004  $  if(((x>>7)&1)) y=@015e;else y =@015f;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:706 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
