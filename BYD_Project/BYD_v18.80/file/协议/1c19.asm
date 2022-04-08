
    车型ID：1c19

    模拟：协议模拟-->1c19

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7BB

进入命令:

  $~  REQ000:7B3 02 10 01 00 00 00 00 00       $~  ANS000:7BB 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7B3 02 3E 80 00 00 00 00 00       $!  ANS000:7BB 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7B3 03 19 02 09 00 00 00 00       $#  ANS000:7BB 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/fe000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7B3 04 14 FF FF FF 00 00 00       $$  ANS000:7BB 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7B3 03 22 F1 93 00 00 00 00       $%  ANS000:7BB 03 22 F1 93 00 00 00 00
  $%  REQ001:7B3 03 22 F1 94 00 00 00 00       $%  ANS001:7BB 03 22 F1 94 00 00 00 00
  $%  REQ002:7B3 03 22 F1 95 00 00 00 00       $%  ANS002:7BB 03 22 F1 95 00 00 00 00
  $%  REQ003:7B3 03 22 F1 8C 00 00 00 00       $%  ANS003:7BB 03 22 F1 8C 00 00 00 00

  $%  000:硬件版本:                $%    $%  ANS000.BYTE004  $%  y=SPRINTF([%d.%d.%d],x1/100,(x1/10)%10,x1%10);
  $%  001:硬件日期:                $%    $%  ANS000.BYTE005  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  002:软件编号:                $%    $%  ANS001.BYTE004  $%  HEX(x1,x2,x3,x4,x5,x6,x7,x8,x9);
  $%  003:软件版本:                $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%d.%.2d.%.2d],(x1*256+x2)/10000,((x1*256+x2)%10000)/100,(x1*256+x2)%100);
  $%  004:软件日期:                $%    $%  ANS002.BYTE006  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);
  $%  005:修改次数:                $%    $%  ANS002.BYTE009  $%  y=x1;
  $%  006:压缩机产品序列号:        $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X %02X %02X],x1,x2,x3);
  $%  007:PTC生产日期:             $%    $%  ANS003.BYTE007  $%  y=SPRINTF([%02d/%02d/%02d],x1,x2,x3);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7B3 03 22 00 06 00 00 00 00       $  ANS000:7BB 03 22 00 06 00 00 00 00
  $  REQ001:7B3 03 22 00 07 00 00 00 00       $  ANS001:7BB 03 22 00 07 00 00 00 00
  $  REQ002:7B3 03 22 00 08 00 00 00 00       $  ANS002:7BB 03 22 00 08 00 00 00 00
  $  REQ003:7B3 03 22 00 09 00 00 00 00       $  ANS003:7BB 03 22 00 09 00 00 00 00
  $  REQ004:7B3 03 22 00 0A 00 00 00 00       $  ANS004:7BB 03 22 00 0A 00 00 00 00
  $  REQ005:7B3 03 22 00 0B 00 00 00 00       $  ANS005:7BB 03 22 00 0B 00 00 00 00
  $  REQ006:7B3 03 22 00 0C 00 00 00 00       $  ANS006:7BB 03 22 00 0C 00 00 00 00
  $  REQ007:7B3 03 22 00 0D 00 00 00 00       $  ANS007:7BB 03 22 00 0D 00 00 00 00
  $  REQ008:7B3 03 22 00 0E 00 00 00 00       $  ANS008:7BB 03 22 00 0E 00 00 00 00
  $  REQ009:7B3 03 22 00 0F 00 00 00 00       $  ANS009:7BB 03 22 00 0F 00 00 00 00
  $  REQ010:7B3 03 22 00 10 00 00 00 00       $  ANS010:7BB 03 22 00 10 00 00 00 00
  $  REQ011:7B3 03 22 00 11 00 00 00 00       $  ANS011:7BB 03 22 00 11 00 00 00 00

  $  000.压缩机控制状态                         $    $               $    $  ANS000.BYTE004  $  if(x1==0x00)y=@003e;else if(x1==0x01)y=@004a;else y=@0002;
  $  001.压缩机实际状态                         $    $               $    $  ANS001.BYTE004  $  if(x1==0x00)y=@003e;else if(x1==0x01)y=@004a;else y=@0002;
  $  002.压缩机目标转速                         $    $  rpm          $    $  ANS002.BYTE004  $  y=x1*256+x2;
  $  003.压缩机实际转速                         $    $  rpm          $    $  ANS003.BYTE004  $  y=x1*256+x2;
  $  004.母线电压                               $    $  V            $    $  ANS004.BYTE004  $  y=x1*256+x2;
  $  005.母线电流                               $    $  A            $    $  ANS005.BYTE004  $  y=x1*31.9/255;
  $  006.压缩机当前功率                         $    $  W            $    $  ANS006.BYTE004  $  y=x1*256+x2;
  $  007.IPM/IGBT(绝缘栅双极型晶体管)温度       $    $  degree C     $    $  ANS007.BYTE004  $  y=x1-100;
  $  008.压缩机壳体温度                         $    $  degree C     $    $  ANS008.BYTE004  $  y=x1-100;
  $  009.本次上电压缩机故障重启次数             $    $               $    $  ANS009.BYTE004  $  y=x1;
  $  010.相电流                                 $    $  A            $    $  ANS010.BYTE004  $  y=x1*31.9/255;
  $  011.电流采样电路状态                       $    $               $    $  ANS011.BYTE004  $  if((x1&0x03)==0x00) y=@0045;else if((x1&0x03)==0x01) y=@02ed;else if((x1&0x03)==0x02) y=@02ee;else if((x1&0x03)==0x03) y=@02ef;
  $  012.三相电流状态                           $    $               $    $  ANS011.BYTE004  $  if((x1&0x0C)==0x00) y=@0045;else if((x1&0x0C)==0x04) y=@02ed;else if((x1&0x0C)==0x08) y=@02ee;else if((x1&0x0C)==0x0C) y=@02ef;
  $  013.IPM/IGBT(绝缘栅双极型晶体管)状态       $    $               $    $  ANS011.BYTE004  $  if(x1&0x10) y=@02f0;else y=@0045;
  $  014.内部温度传感器状态                     $    $               $    $  ANS011.BYTE004  $  if(x1&0x20) y=@00b4;else y=@0045;
  $  015.内部电流状态                           $    $               $    $  ANS011.BYTE004  $  if((x1&0xC0)==0x00) y=@0045;else if((x1&0xC0)==0x40) y=@02f1;else if((x1&0xC0)==0x80) y=@02f2;else if((x1&0xC0)==0xC0) y=@02f3;
  $  016.启动状态                               $    $               $    $  ANS011.BYTE005  $  if(x1&0x01) y=@02f6;else y=@0045;
  $  017.内部温度状态                           $    $               $    $  ANS011.BYTE005  $  switxh(x1&0x07)0x00: y=@0045; 0x01: y=@0045;0x02: y=@02f4; 0x03: y=@02f4;0x04:y=@02f5;0x05:y=@02f5;0x06: y=@010e;0x07: y=@010e;default:y=@007f;
  $  018.转速状态                               $    $               $    $  ANS011.BYTE005  $  if(x1&0x08) y=@00b4;else y=@0045;
  $  019.压缩机负载状态                         $    $               $    $  ANS011.BYTE005  $  if((x1&0x30)==0x10) y=@02e6;else if((x1&0x30)==0x20) y=@02e7;else if((x1&0x30)==0x30) y=@010e;else y=@0045;
  $  020.母线电压状态                           $    $               $    $  ANS011.BYTE005  $  if((x1&0xC0)==0x00) y=@0045;else if((x1&0xC0)==0x40) y=@02ea;else if((x1&0xC0)==0x80) y=@02eb;else if((x1&0xC0)==0xC0) y=@010e;
  $  021.内部低压电状态                         $    $               $    $  ANS011.BYTE006  $  if((x1&0x03)==0x00) y=@0045;else if((x1&0x03)==0x01) y=@02e8;else if((x1&0x03)==0x02) y=@02e9;else if((x1&0x03)==0x03) y=@010e;
  $  022.相电压状态                             $    $               $    $  ANS011.BYTE006  $  if(x1&0x04) y=@02ec;else y=@0045;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7B3 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
