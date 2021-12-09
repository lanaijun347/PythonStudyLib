
    车型ID：65b2

    模拟：协议模拟-->65b2

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:7E0 02 10 01 00 00 00 00 00       $~  ANS000:7E8 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E0 02 3E 00 00 00 00 00 00       $!  ANS000:7E8 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:7E0 03 19 02 FF 00 00 00 00       $#  ANS000:7E8 03 19 02 FF 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/e1000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E0 04 14 FF FF FF 00 00 00       $$  ANS000:7E8 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E0 03 22 F1 87 00 00 00 00       $%  ANS000:7E8 03 22 F1 87 00 00 00 00
  $%  REQ001:7E0 03 22 F1 8A 00 00 00 00       $%  ANS001:7E8 03 22 F1 8A 00 00 00 00
  $%  REQ002:7E0 03 22 F1 8B 00 00 00 00       $%  ANS002:7E8 03 22 F1 8B 00 00 00 00
  $%  REQ003:7E0 03 22 F1 8C 00 00 00 00       $%  ANS003:7E8 03 22 F1 8C 00 00 00 00
  $%  REQ004:7E0 03 22 F1 90 00 00 00 00       $%  ANS004:7E8 03 22 F1 90 00 00 00 00
  $%  REQ005:7E0 03 22 F1 93 00 00 00 00       $%  ANS005:7E8 03 22 F1 93 00 00 00 00
  $%  REQ006:7E0 03 22 F1 95 00 00 00 00       $%  ANS006:7E8 03 22 F1 95 00 00 00 00
  $%  REQ007:7E0 03 22 F1 99 00 00 00 00       $%  ANS007:7E8 03 22 F1 99 00 00 00 00

  $%  000:零件号:                       $%    $%  ANS000.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  001:供应商标识信息:               $%    $%  ANS001.BYTE004  $%  ASCII(X1,X2,X3,X4,X5);
  $%  002:ECU生产日期:                  $%    $%  ANS002.BYTE004  $%  HEX(X1,X2,X3,X4);
  $%  003:ECU序列号:                    $%    $%  ANS003.BYTE004  $%  HEX(X1,X2,X3,X4);
  $%  004:VIN号:                        $%    $%  ANS004.BYTE004  $%  ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  005:供应商ECU硬件版本编号:        $%    $%  ANS005.BYTE004  $%  ASCII(X1);
  $%  006:供应商ECU软件版本编号:        $%    $%  ANS006.BYTE004  $%  ASCII(X1,X2);
  $%  007:ECU编程日期:                  $%    $%  ANS007.BYTE004  $%  HEX(X1,X2,X3,X4);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E0 03 22 10 01 00 00 00 00       $  ANS000:7E8 03 22 10 01 00 00 00 00
  $  REQ001:7E0 03 22 10 02 00 00 00 00       $  ANS001:7E8 03 22 10 02 00 00 00 00
  $  REQ002:7E0 03 22 10 03 00 00 00 00       $  ANS002:7E8 03 22 10 03 00 00 00 00
  $  REQ003:7E0 03 22 10 04 00 00 00 00       $  ANS003:7E8 03 22 10 04 00 00 00 00
  $  REQ004:7E0 03 22 10 05 00 00 00 00       $  ANS004:7E8 03 22 10 05 00 00 00 00
  $  REQ005:7E0 03 22 10 06 00 00 00 00       $  ANS005:7E8 03 22 10 06 00 00 00 00
  $  REQ006:7E0 03 22 10 08 00 00 00 00       $  ANS006:7E8 03 22 10 08 00 00 00 00
  $  REQ007:7E0 03 22 10 09 00 00 00 00       $  ANS007:7E8 03 22 10 09 00 00 00 00
  $  REQ008:7E0 03 22 10 0A 00 00 00 00       $  ANS008:7E8 03 22 10 0A 00 00 00 00

  $  000.扭矩需求值                  $    $  N.m          $    $  ANS000.BYTE004  $  y=(x1*256+x2)*0.5-5000;
  $  001.最大功率限制                $    $  Kw           $    $  ANS001.BYTE004  $  y=(x1*256+x2)*0.5-5000;
  $  002.真空绝对压力                $    $  KPa          $    $  ANS002.BYTE004  $  y=(x1*0x1000000+x2*0x10000+x3*0x100+x4)*0.1;
  $  003.制动踏板开度                $    $  %            $    $  ANS003.BYTE004  $  y=x1*256+x2;
  $  004.油门踏板开度                $    $  %            $    $  ANS004.BYTE004  $  y=x1*256+x2;
  $  005.外部开关输入状态            $    $               $    $  ANS005.BYTE004  $  strcat: if((x1&0x01)==1) y=@00e0; if((x2&0x01)==0x01) y=@00e1;
  $  006.冷凝器温度                  $    $  degree C     $    $  ANS006.BYTE004  $  y=x1*256+x2-40;
  $  007.暖风加热系统(PTC)温度       $    $  degree C     $    $  ANS007.BYTE004  $  y=x1*256+x2-40;
  $  008.冷却液温度                  $    $  degree C     $    $  ANS008.BYTE004  $  y=x1*256+x2-40;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E0 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
