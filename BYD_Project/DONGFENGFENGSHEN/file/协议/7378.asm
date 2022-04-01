
    车型ID：7378

    模拟：协议模拟-->7378

;******************************************************************************************************************************************************

    通讯线: $~11$~12$~500k$~7BF

进入命令:

  $~  REQ000:7B7 02 10 01 00 00 00 00 00       $~  ANS000:7BF 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7B7 02 3E 00 00 00 00 00 00       $!  ANS000:7BF 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7B7 03 19 02 09 00 00 00 00       $#  ANS000:7BF 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/58000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7B7 04 14 FF FF FF 00 00 00       $$  ANS000:7BF 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7B7 03 22 F1 89 00 00 00 00       $%  ANS000:7BF 03 22 F1 89 00 00 00 00
  $%  REQ001:7B7 03 22 F1 79 00 00 00 00       $%  ANS001:7BF 03 22 F1 79 00 00 00 00
  $%  REQ002:7B7 03 22 F1 99 00 00 00 00       $%  ANS002:7BF 03 22 F1 99 00 00 00 00
  $%  REQ003:7B7 03 22 F1 8A 00 00 00 00       $%  ANS003:7BF 03 22 F1 8A 00 00 00 00
  $%  REQ004:7B7 03 22 F1 87 00 00 00 00       $%  ANS004:7BF 03 22 F1 87 00 00 00 00
  $%  REQ005:7B7 03 22 F1 97 00 00 00 00       $%  ANS005:7BF 03 22 F1 97 00 00 00 00
  $%  REQ006:7B7 03 22 F1 7F 00 00 00 00       $%  ANS006:7BF 03 22 F1 7F 00 00 00 00
  $%  REQ007:7B7 03 22 F1 9C 00 00 00 00       $%  ANS007:7BF 03 22 F1 9C 00 00 00 00
  $%  REQ008:7B7 03 22 F1 7E 00 00 00 00       $%  ANS008:7BF 03 22 F1 7E 00 00 00 00
  $%  REQ009:7B7 03 22 F1 A1 00 00 00 00       $%  ANS009:7BF 03 22 F1 A1 00 00 00 00
  $%  REQ010:7B7 03 22 F1 8C 00 00 00 00       $%  ANS010:7BF 03 22 F1 8C 00 00 00 00

  $%  000:软件版本(OEM):        $%    $%  ANS000.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  001:硬件版本(OEM):        $%    $%  ANS001.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  002:软件发布日期:         $%    $%  ANS002.BYTE004  $%  if((x1==0xff&&x2==0xff&&x3==0xff&&x4==0xff)||(x1==0&&x2==0&&x3==0&&x4==0))y=@0425;else y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  003:供应商代码:           $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:OEM零件号:            $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  005:系统名称:             $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:软件校验码:           $%    $%  ANS006.BYTE004  $%  HEX(x1,x2);
  $%  007:标定软件版本:         $%    $%  ANS007.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4),(x1&0x0F),x2);
  $%  008:标定软件校验码:       $%    $%  ANS008.BYTE004  $%  HEX(x1,x2);
  $%  009:维修店编码:           $%    $%  ANS009.BYTE004  $%  if((x1==0xff&&x2==0xff&&x3==0xff&&x4==0xff&&x5==0xff)||(x1==0&&x2==0&&x3==0&&x4==0&&x5==0))y=@0425;else y=ASCII(x1,x2,x3,x4,x5);
  $%  010:维修日期:             $%    $%  ANS009.BYTE009  $%  if((x1==0xff&&x2==0xff&&x3==0xff&&x4==0xff)||(x1==0&&x2==0&&x3==0&&x4==0))y=@0425;else y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:维修时的里程:         $%    $%  ANS009.BYTE013  $%  if((x1==0xff&&x2==0xff&&x3==0xff)||(x1==0&&x2==0&&x3==0))y=@0425;else y=(x1<<16)+(x2<<8)+x3;
  $%  012:控制器序列号:         $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7B7 03 22 B6 00 00 00 00 00       $  ANS000:7BF 03 22 B6 00 00 00 00 00
  $  REQ001:7B7 03 22 B6 01 00 00 00 00       $  ANS001:7BF 03 22 B6 01 00 00 00 00
  $  REQ002:7B7 03 22 B6 02 00 00 00 00       $  ANS002:7BF 03 22 B6 02 00 00 00 00
  $  REQ003:7B7 03 22 B6 03 00 00 00 00       $  ANS003:7BF 03 22 B6 03 00 00 00 00
  $  REQ004:7B7 03 22 B6 04 00 00 00 00       $  ANS004:7BF 03 22 B6 04 00 00 00 00
  $  REQ005:7B7 03 22 B6 05 00 00 00 00       $  ANS005:7BF 03 22 B6 05 00 00 00 00
  $  REQ006:7B7 03 22 B6 06 00 00 00 00       $  ANS006:7BF 03 22 B6 06 00 00 00 00
  $  REQ007:7B7 03 22 B6 07 00 00 00 00       $  ANS007:7BF 03 22 B6 07 00 00 00 00
  $  REQ008:7B7 03 22 B6 08 00 00 00 00       $  ANS008:7BF 03 22 B6 08 00 00 00 00
  $  REQ009:7B7 03 22 B6 09 00 00 00 00       $  ANS009:7BF 03 22 B6 09 00 00 00 00
  $  REQ010:7B7 03 22 B6 0A 00 00 00 00       $  ANS010:7BF 03 22 B6 0A 00 00 00 00
  $  REQ011:7B7 03 22 B6 0B 00 00 00 00       $  ANS011:7BF 03 22 B6 0B 00 00 00 00
  $  REQ012:7B7 03 22 B6 0C 00 00 00 00       $  ANS012:7BF 03 22 B6 0C 00 00 00 00

  $  000.执行传感器物理位置                            $    $  %        $    $  ANS000.BYTE004  $  y=(x1*256+x2)/128;
  $  001.执行传感器供电电压                            $    $  V        $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.1;
  $  002.执行器电机电流反馈信号                        $    $  A        $    $  ANS002.BYTE004  $  y=(x1*256+x2)*0.1;
  $  003.GBC(电子换挡控制器)位置CAN信号                $    $           $    $  ANS003.BYTE004  $  if(x==0x0)y=@01ab;else if(x==0x1)y=@016f;else if(x==0x2)y=@0170;else if(x==0x3)y=@016a;else if(x==0x4)y=@0215;else if(x==0x5)y=@0603;else if(x==0x6)y=@0604;else if(x==0xF)y=@0605;
  $  004.GBC(电子换挡控制器)故障CAN信号                $    $           $    $  ANS004.BYTE004  $  if(x==0x0)y=@0045;else if(x==0x1)y=@020b;else if(x==0x2)y=@05fc;else if(x==0x3)y=@05fd;else if(x==0x4)y=@05fe;else if(x==0x5)y=@05ff;else if(x==0x6)y=@0210;else if(x==0x7)y=@0600;else if(x==0x8)y=@0600;else if(x==0x9)y=@0212;else if(x==0xA)y=@0601;else if(x==0xB)y=@0602;
  $  005.GBC(电子换挡控制器)动作CAN信号                $    $           $    $  ANS005.BYTE004  $  if(x==0x0)y=@05fa;else if(x==0x1)y=@05fb;
  $  006.接收到EMS(发动机控制器系统)档位请求信号       $    $           $    $  ANS006.BYTE004  $  if(x==0x0)y=@00b3;else if(x==0x4)y=@00b4;else if(x==0x5)y=@00b1;else if(x==0x7)y=@00b2;
  $  007.接收到ESC2(电子车身稳定系统)车速信号          $    $  km/h     $    $  ANS007.BYTE004  $  y=(x1*256+x2)*0.05625;
  $  008.接收到TCU(自动变速箱系统)故障状态信号         $    $           $    $  ANS008.BYTE004  $  y=x&0xF;
  $  009.传感器1档位数据P                              $    $           $    $  ANS009.BYTE004  $  y=(x1*256+x2)&0x3FF;
  $  010.传感器1档位数据D                              $    $           $    $  ANS010.BYTE004  $  y=(x1*256+x2)&0x3FF;
  $  011.传感器2档位数据P                              $    $           $    $  ANS011.BYTE004  $  y=(x1*256+x2)&0x3FF;
  $  012.传感器2档位数据D                              $    $           $    $  ANS012.BYTE004  $  y=(x1*256+x2)&0x3FF;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7B7 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
