
    车型ID：1812

    模拟：协议模拟-->1812

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:782 02 10 01 00 00 00 00 00       $~  ANS000:78A 02 10 01 00 00 00 00 00
  $~  REQ001:782 03 22 F1 97 00 00 00 00       $~  ANS001:78A 03 22 F1 97 00 00 00 00

空闲命令:

  $!  REQ000:782 02 3E 80 00 00 00 00 00       $!  ANS000:78A 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:782 03 19 02 09 00 00 00 00       $#  ANS000:78A 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:782 04 14 FF FF FF 00 00 00       $$  ANS000:78A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:782 03 22 F1 92 00 00 00 00       $%  ANS000:78A 03 22 F1 92 00 00 00 00
  $%  REQ001:782 03 22 F1 93 00 00 00 00       $%  ANS001:78A 03 22 F1 93 00 00 00 00
  $%  REQ002:782 03 22 F1 94 00 00 00 00       $%  ANS002:78A 03 22 F1 94 00 00 00 00
  $%  REQ003:782 03 22 F1 95 00 00 00 00       $%  ANS003:78A 03 22 F1 95 00 00 00 00
  $%  REQ004:782 03 22 F1 97 00 00 00 00       $%  ANS004:78A 03 22 F1 97 00 00 00 00
  $%  REQ005:782 03 22 F1 12 00 00 00 00       $%  ANS005:78A 03 22 F1 12 00 00 00 00
  $%  REQ006:782 03 22 F1 8A 00 00 00 00       $%  ANS006:78A 03 22 F1 8A 00 00 00 00
  $%  REQ007:782 03 22 F1 91 00 00 00 00       $%  ANS007:78A 03 22 F1 91 00 00 00 00

  $%  000:系统供应商ECU硬件零件编号:        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  001:硬件版本:                         $%    $%  ANS001.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  002:硬件日期:                         $%    $%  ANS001.BYTE005  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  003:软件编号:                         $%    $%  ANS002.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  004:软件版本:                         $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  005:软件日期:                         $%    $%  ANS003.BYTE006  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);
  $%  006:修改次数:                         $%    $%  ANS003.BYTE009  $%  y=x1;
  $%  007:系统名称:                         $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3);
  $%  008:车辆名称:                         $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  009:系统供应商名称:                   $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  010:客户零部件编号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:782 03 22 20 01 00 00 00 00       $  ANS000:78A 03 22 20 01 00 00 00 00
  $  REQ001:782 03 22 20 02 00 00 00 00       $  ANS001:78A 03 22 20 02 00 00 00 00
  $  REQ002:782 03 22 20 03 00 00 00 00       $  ANS002:78A 03 22 20 03 00 00 00 00
  $  REQ003:782 03 22 20 04 00 00 00 00       $  ANS003:78A 03 22 20 04 00 00 00 00
  $  REQ004:782 03 22 20 05 00 00 00 00       $  ANS004:78A 03 22 20 05 00 00 00 00
  $  REQ005:782 03 22 20 45 00 00 00 00       $  ANS005:78A 03 22 20 45 00 00 00 00
  $  REQ006:782 03 22 FD 00 00 00 00 00       $  ANS006:78A 03 22 FD 00 00 00 00 00
  $  REQ007:782 03 22 FD 03 00 00 00 00       $  ANS007:78A 03 22 FD 03 00 00 00 00

  $  000:左前轮速                    $    $  km/h          $    $  ANS000.BYTE004  $  y=(x1*256+x2)*4506.00/65535;
  $  001:右前轮速                    $    $  km/h          $    $  ANS000.BYTE006  $  y=(x1*256+x2)*4506.00/65535;
  $  002:左后轮速                    $    $  km/h          $    $  ANS000.BYTE008  $  y=(x1*256+x2)*4506.00/65535;
  $  003:右后轮速                    $    $  km/h          $    $  ANS000.BYTE010  $  y=(x1*256+x2)*4506.00/65535;
  $  004:阀继电器电压                $    $  V             $    $  ANS001.BYTE004  $  y=x1*20.4/255;
  $  005:UC供电电压                  $    $  V             $    $  ANS001.BYTE005  $  y=x1*20.4/255;
  $  006:点火循环次数                $    $                $    $  ANS001.BYTE006  $  y=x1*256+x2;
  $  007:制动踏板状态                $    $                $    $  ANS002.BYTE004  $  if(x1&0x01)y=@0062;else y=@00aa;
  $  008:阀继电器状态                $    $                $    $  ANS002.BYTE004  $  if(x1&0x20)y=@0004;else y=@0005;
  $  009:左前进液阀                  $    $                $    $  ANS002.BYTE005  $  if(x1&0x01)y=@0006;else y=@0007;
  $  010:左前出液阀                  $    $                $    $  ANS002.BYTE005  $  if(x1&0x02)y=@0006;else y=@0007;
  $  011:右前进液阀                  $    $                $    $  ANS002.BYTE005  $  if(x1&0x04)y=@0006;else y=@0007;
  $  012:右前出液阀                  $    $                $    $  ANS002.BYTE005  $  if(x1&0x08)y=@0006;else y=@0007;
  $  013:左后进液阀                  $    $                $    $  ANS002.BYTE005  $  if(x1&0x10)y=@0006;else y=@0007;
  $  014:左后出液阀                  $    $                $    $  ANS002.BYTE005  $  if(x1&0x20)y=@0006;else y=@0007;
  $  015:右后进液阀                  $    $                $    $  ANS002.BYTE005  $  if(x1&0x40)y=@0006;else y=@0007;
  $  016:右后出液阀                  $    $                $    $  ANS002.BYTE005  $  if(x1&0x80)y=@0006;else y=@0007;
  $  017:USV1                        $    $                $    $  ANS002.BYTE006  $  if(x1&0x01)y=@0006;else y=@0007;
  $  018:USV2                        $    $                $    $  ANS002.BYTE006  $  if(x1&0x02)y=@0006;else y=@0007;
  $  019:HSV1                        $    $                $    $  ANS002.BYTE006  $  if(x1&0x04)y=@0006;else y=@0007;
  $  020:HSV2                        $    $                $    $  ANS002.BYTE006  $  if(x1&0x08)y=@0006;else y=@0007;
  $  021:泵电机继电器状态            $    $                $    $  ANS002.BYTE006  $  if(x1&0x40)y=@0004;else y=@0005;
  $  022:加注状态                    $    $                $    $  ANS003.BYTE004  $  if(x1==0x00)y=@000c;else if(x1==0xAA)y=@000d;else if(x1==0xEE)y=@000e;else y=@000f;
  $  023:下线检测状态                $    $                $    $  ANS004.BYTE004  $  if(x1==0x00)y=@0010;else if(x1==0xAA)y=@0011;else if(x1==0xEE)y=@0012;else y=@000f;
  $  024:EPB(电子驻车)变量配置       $    $                $    $  ANS005.BYTE004  $  if(x1==0xBB)y=@06d6;else if(x1==0xDD)y=@059c;else y=@001c;
  $  025:车速                        $    $  km/h          $    $  ANS006.BYTE004  $  y=(x1*256+x2)*4505.5/65535;
  $  026:主缸压力                    $    $  bar           $    $  ANS007.BYTE004  $  if(x1>127)y=(x1-256)*501.4/128+x2*3.9/255;else y=x1*501.4/128+x2*3.9/255;
  $  027:转向角                      $    $  °            $    $  ANS007.BYTE006  $  if(x1>127)y=(x1-256)*25.6+x2*0.1;else y=x1*25.6+x2*0.1;
  $  028:偏航率                      $    $  rps           $    $  ANS007.BYTE008  $  if(x1>127)y=(x1-256)*69.8/128+x2*0.54/255;else y=x1*69.8/128+x2*0.54/255;
  $  029:横向加速度                  $    $  米/平方秒     $    $  ANS007.BYTE010  $  if(x1>127)y=(x1-256)*888.67/128+x2*6.92/255;else y=x1*888.67/128+x2*6.92/255;
  $  030:纵向加速度                  $    $  米/平方秒     $    $  ANS007.BYTE012  $  if(x1>127)y=(x1-256)*888.67/128+x2*6.92/255;else y=x1*888.67/128+x2*6.92/255;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:782 30 00 05 00 00 00 00 00  $FC 
  $FC REQ001:782 30 08 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
