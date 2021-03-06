
    车型ID：7379

    模拟：协议模拟-->7379

;******************************************************************************************************************************************************

    通讯线: $~11$~12$~500k$~70F

进入命令:

  $~  REQ000:707 02 10 01 00 00 00 00 00       $~  ANS000:70F 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:707 02 3E 00 00 00 00 00 00       $!  ANS000:70F 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:707 03 19 02 09 00 00 00 00       $#  ANS000:70F 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/73790000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:707 04 14 FF FF FF 00 00 00       $$  ANS000:70F 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:707 03 22 F1 89 00 00 00 00       $%  ANS000:70F 03 22 F1 89 00 00 00 00
  $%  REQ001:707 03 22 F1 79 00 00 00 00       $%  ANS001:70F 03 22 F1 79 00 00 00 00
  $%  REQ002:707 03 22 F1 99 00 00 00 00       $%  ANS002:70F 03 22 F1 99 00 00 00 00
  $%  REQ003:707 03 22 F1 8A 00 00 00 00       $%  ANS003:70F 03 22 F1 8A 00 00 00 00
  $%  REQ004:707 03 22 F1 87 00 00 00 00       $%  ANS004:70F 03 22 F1 87 00 00 00 00
  $%  REQ005:707 03 22 F1 97 00 00 00 00       $%  ANS005:70F 03 22 F1 97 00 00 00 00
  $%  REQ006:707 03 22 F1 A1 00 00 00 00       $%  ANS006:70F 03 22 F1 A1 00 00 00 00
  $%  REQ007:707 03 22 F1 90 00 00 00 00       $%  ANS007:70F 03 22 F1 90 00 00 00 00
  $%  REQ008:707 03 22 F1 8C 00 00 00 00       $%  ANS008:70F 03 22 F1 8C 00 00 00 00
  $%  REQ009:707 03 22 F1 88 00 00 00 00       $%  ANS009:70F 03 22 F1 88 00 00 00 00
  $%  REQ010:707 03 22 F1 95 00 00 00 00       $%  ANS010:70F 03 22 F1 95 00 00 00 00

  $%  000:软件版本(OEM):         $%    $%  ANS000.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4)&0x0F,(x1&0x0F),x2);
  $%  001:硬件版本(OEM):         $%    $%  ANS001.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4)&0x0F,(x1&0x0F),x2);
  $%  002:软件发布日期:          $%    $%  ANS002.BYTE004  $%  if((x1==0xff&&x2==0xff&&x3==0xff&&x4==0xff)||(x1==0&&x2==0&&x3==0&&x4==0))y=@0425;else y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  003:供应商代码:            $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:零件号:                $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  005:系统名称:              $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2);
  $%  006:维修店编码:            $%    $%  ANS006.BYTE004  $%  if((x1==0xff&&x2==0xff&&x3==0xff&&x4==0xff&&x5==0xff)||(x1==0&&x2==0&&x3==0&&x4==0&&x5==0))y=@0425;else y=ASCII(x1,x2,x3,x4,x5);
  $%  007:维修日期:              $%    $%  ANS006.BYTE009  $%  if((x1==0xff&&x2==0xff&&x3==0xff&&x4==0xff)||(x1==0&&x2==0&&x3==0&&x4==0))y=@0425;else y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  008:维修时的里程:          $%    $%  ANS006.BYTE013  $%  if((x1==0xff&&x2==0xff&&x3==0xff)||(x1==0&&x2==0&&x3==0))y=@0425;else y=(x1<<16)+(x2<<8)+x3;
  $%  009:VIN码:                 $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  010:ECU生产序列号:         $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  011:OEM软件零件编号:       $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  012:软件版本号(SYS):       $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.数据流
  $  00.数据流
  $  REQ000:707 03 22 F0 10 00 00 00 00       $  ANS000:70F 03 22 F0 10 00 00 00 00
  $  REQ001:707 03 22 18 00 00 00 00 00       $  ANS001:70F 03 22 18 00 00 00 00 00
  $  REQ002:707 03 22 18 01 00 00 00 00       $  ANS002:70F 03 22 18 01 00 00 00 00
  $  REQ003:707 03 22 18 04 00 00 00 00       $  ANS003:70F 03 22 18 04 00 00 00 00
  $  REQ004:707 03 22 18 05 00 00 00 00       $  ANS004:70F 03 22 18 05 00 00 00 00
  $  REQ005:707 03 22 18 08 00 00 00 00       $  ANS005:70F 03 22 18 08 00 00 00 00
  $  REQ006:707 03 22 18 09 00 00 00 00       $  ANS006:70F 03 22 18 09 00 00 00 00
  $  REQ007:707 03 22 18 0A 00 00 00 00       $  ANS007:70F 03 22 18 0A 00 00 00 00
  $  REQ008:707 03 22 18 12 00 00 00 00       $  ANS008:70F 03 22 18 12 00 00 00 00
  $  REQ009:707 03 22 18 13 00 00 00 00       $  ANS009:70F 03 22 18 13 00 00 00 00

  $  000.车型配置(带CC)                     $    $           $    $  ANS000.BYTE004  $  if(x==0x0)y=@05f5;else if(x==0x1)y=@05f6;else if(x==0x2)y=@05f7;else y=@0027;
  $  001.车型配置(无CC)                     $    $           $    $  ANS000.BYTE004  $  if(x==0x0)y=@05f4;else y=@0027;
  $  002.制动踏板信号                       $    $           $    $  ANS001.BYTE004  $  if(((x>>3)&1))y=@0352;else y=@0140;
  $  003.STT(智能启停)仪表指示灯            $    $           $    $  ANS002.BYTE004  $  if(((x1&0xC0)>>6)==0x0)y=@0590;else if(((x1&0xC0)>>6)==0x1)y=@0591;else if(((x1&0xC0)>>6)==0x2)y=@0592;else y=@000a;
  $  004.STT(智能启停)故障状态              $    $           $    $  ANS002.BYTE004  $  if(((x>>4)&1))y=@003a;else y=@0045;
  $  005.STT(智能启停)模式                  $    $           $    $  ANS002.BYTE004  $  if(((x>>3)&1))y=@034a;else y=@034b;
  $  006.STT(智能启停)停机命令              $    $           $    $  ANS002.BYTE004  $  if(((x>>1)&1))y=@0346;else y=@0347;
  $  007.STT(智能启停)重启命令              $    $           $    $  ANS002.BYTE004  $  if(((x>>0)&1))y=@0348;else y=@0349;
  $  008.发动机启动过程中最低电压预测       $    $  V        $    $  ANS003.BYTE004  $  y=(x1*256+x2)*0.0625;
  $  009.SOC(电量)                          $    $  %        $    $  ANS004.BYTE004  $  y=x1*256+x2;
  $  010.电池温度                           $    $  DegC     $    $  ANS004.BYTE006  $  y=(x1*256+x2)-40;
  $  011.电池电压                           $    $  V        $    $  ANS004.BYTE008  $  y=(x1*256+x2+3)*0.0009765625;
  $  012.钥匙档位信号                       $    $           $    $  ANS005.BYTE004  $  if(x==0x0)y=@01b7;else if(x==0x1)y=@0020;else if(x==0x2)y=@01b6;else if(x==0x3)y=@002d;else y=@0027
  $  013.发动机状态信号                     $    $           $    $  ANS006.BYTE004  $  if(x==0x0)y=@02ec;else if(x==0x1)y=@01f6;else if(x==0x2)y=@05f1;else if(x==0x3)y=@01f8;else if(x==0x4) y=@01f9;else if(x==0x5)y=@05f2;else if(x==0x6)y=@05f3;else if(x==0x7)y=@034e;else if(x==0xA)y=@034f;else if(x==0xD)y=@01fe;else if(x==0xF)y=@004e;else y=@0027;
  $  014.STT(智能启停)停机时间              $    $  s        $    $  ANS007.BYTE004  $  y=x1*256+x2;
  $  015.上电计数器                         $    $  s        $    $  ANS008.BYTE004  $  y=(x1*256*256*256+x2*256*256+x3*256+x4)*0.1;
  $  016.下电复位计数器                     $    $           $    $  ANS009.BYTE004  $  HEXx1;

  $)  01.STT不停机
  $  01.STT不停机
  $  REQ000:707 03 22 18 14 00 00 00 00       $  ANS000:70F 03 22 18 14 00 00 00 00

  $  000.制动开关                      $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@05ef;else y=@05f0;
  $  001.制动主缸压力                  $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@05ef;else y=@05f0;
  $  002.制动真空度                    $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@05ef;else y=@05f0;
  $  003.车速                          $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@05ef;else y=@05f0;
  $  004.方向盘转角                    $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@05ef;else y=@05f0;
  $  005.方向盘扭矩无效                $    $       $    $  ANS000.BYTE004  $  if(((x>>5)&1))y=@05ef;else y=@05f0;
  $  006.方向盘回正                    $    $       $    $  ANS000.BYTE004  $  if(((x>>6)&1))y=@05ef;else y=@05f0;
  $  007.蓄电池点亮                    $    $       $    $  ANS000.BYTE005  $  if(((x>>0)&1))y=@05ef;else y=@05f0;
  $  008.蓄电池启动电压SOF             $    $       $    $  ANS000.BYTE005  $  if(((x>>2)&1))y=@05ef;else y=@05f0;
  $  009.蓄电池温度过高                $    $       $    $  ANS000.BYTE005  $  if(((x>>3)&1))y=@05ef;else y=@05f0;
  $  010.车门                          $    $       $    $  ANS000.BYTE006  $  if(((x>>0)&1))y=@05ef;else y=@05f0;
  $  011.安全带                        $    $       $    $  ANS000.BYTE006  $  if(((x>>1)&1))y=@05ef;else y=@05f0;
  $  012.引擎盖                        $    $       $    $  ANS000.BYTE006  $  if(((x>>2)&1))y=@05ef;else y=@05f0;
  $  013.空调                          $    $       $    $  ANS000.BYTE006  $  if(((x>>3)&1))y=@05ef;else y=@05f0;
  $  014.自动泊车功能开启              $    $       $    $  ANS000.BYTE006  $  if(((x>>5)&1))y=@05ef;else y=@05f0;
  $  015.停机时间过长                  $    $       $    $  ANS000.BYTE007  $  if(((x>>0)&1))y=@05ef;else y=@05f0;
  $  016.STT(智能启停)功能未激活       $    $       $    $  ANS000.BYTE007  $  if(((x>>1)&1))y=@05ef;else y=@05f0;
  $  017.STT(智能启停)系统故障         $    $       $    $  ANS000.BYTE007  $  if(((x>>2)&1))y=@05ef;else y=@05f0;

  $)  02.SOC信号转发状态
  $  02.SOC信号转发状态
  $  REQ000:707 03 22 18 15 00 00 00 00       $  ANS000:70F 03 22 18 15 00 00 00 00

  $  000.当月SOC(充电状态)改变功能是否实现           $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@05f8;else y=@05f9;
  $  001.生产阶段SOC(充电状态)改变功能激活状态       $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@0000;else y=@0001;
  $  002.用户阶段SOC(充电状态)改变功能激活状态       $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@0000;else y=@0001;
  $  003.生产阶段SOC(充电状态)改变功能使能状态       $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@0000;else y=@0001;
  $  004.用户阶段SOC(充电状态)改变功能使能状态       $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@0000;else y=@0001;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:707 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
