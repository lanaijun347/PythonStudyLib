
    车型ID：692a

    模拟：协议模拟-->692a

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:764 02 10 01 00 00 00 00 00       $~  ANS000:76C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:764 02 3E 00 00 00 00 00 00       $!  ANS000:76C 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:764 03 19 02 09 00 00 00 00       $#  ANS000:76C 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:764 04 14 FF FF FF 00 00 00       $$  ANS000:76C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:764 03 22 F1 87 00 00 00 00       $%  ANS000:76C 03 22 F1 87 00 00 00 00
  $%  REQ001:764 03 22 F1 89 00 00 00 00       $%  ANS001:76C 03 22 F1 89 00 00 00 00
  $%  REQ002:764 03 22 F1 90 00 00 00 00       $%  ANS002:76C 03 22 F1 90 00 00 00 00
  $%  REQ003:764 03 22 F1 91 00 00 00 00       $%  ANS003:76C 03 22 F1 91 00 00 00 00
  $%  REQ004:764 03 22 F1 93 00 00 00 00       $%  ANS004:76C 03 22 F1 93 00 00 00 00
  $%  REQ005:764 03 22 F1 95 00 00 00 00       $%  ANS005:76C 03 22 F1 95 00 00 00 00
  $%  REQ006:764 03 22 F1 98 00 00 00 00       $%  ANS006:76C 03 22 F1 98 00 00 00 00
  $%  REQ007:764 03 22 F1 99 00 00 00 00       $%  ANS007:76C 03 22 F1 99 00 00 00 00
  $%  REQ008:764 03 22 F1 A1 00 00 00 00       $%  ANS008:76C 03 22 F1 A1 00 00 00 00

  $%  000:零件号:                     $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本号:              $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:VIN:                        $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本号:              $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件版本号:        $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU软件版本号:        $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:测试仪序列号:               $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:编程日期:                   $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:系统配置:                   $%    $%  ANS008.BYTE004  $%  0 HEX

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:764 03 22 3D E0 00 00 00 00       $  ANS000:76C 03 22 3D E0 00 00 00 00
  $  REQ001:764 03 22 3D E2 00 00 00 00       $  ANS001:76C 03 22 3D E2 00 00 00 00
  $  REQ002:764 03 22 3D E3 00 00 00 00       $  ANS002:76C 03 22 3D E3 00 00 00 00
  $  REQ003:764 03 22 3D E4 00 00 00 00       $  ANS003:76C 03 22 3D E4 00 00 00 00
  $  REQ004:764 03 22 3D E5 00 00 00 00       $  ANS004:76C 03 22 3D E5 00 00 00 00
  $  REQ005:764 03 22 3D E6 00 00 00 00       $  ANS005:76C 03 22 3D E6 00 00 00 00
  $  REQ006:764 03 22 3D E7 00 00 00 00       $  ANS006:76C 03 22 3D E7 00 00 00 00
  $  REQ007:764 03 22 3D E8 00 00 00 00       $  ANS007:76C 03 22 3D E8 00 00 00 00
  $  REQ008:764 03 22 01 00 00 00 00 00       $  ANS008:76C 03 22 01 00 00 00 00 00
  $  REQ009:764 03 22 01 01 00 00 00 00       $  ANS009:76C 03 22 01 01 00 00 00 00
  $  REQ010:764 03 22 3D E1 00 00 00 00       $  ANS010:76C 03 22 3D E1 00 00 00 00
  $  REQ011:764 03 22 3D E9 00 00 00 00       $  ANS011:76C 03 22 3D E9 00 00 00 00

  $  000.KL30_D数字电压                     $    $  mV       $    $  ANS000.BYTE004  $  if((X1*256+X2)<=1024)Y=(X1*256+X2)*27.5935683+200;else Y=@0004;
  $  001.电动支杆驱动输出状态               $    $           $    $  ANS001.BYTE004  $  if(X1==0) y=@0393;else if(X1==1) y=@0396;else if(X1==2) y=@0397;else y=@0004;
  $  002.电动支杆HALL反馈运动状态           $    $           $    $  ANS002.BYTE004  $  if(X1==0) y=@0393;else if(X1==1) y=@0396;else if(X1==2) y=@0397;else y=@0004;
  $  003.电动支杆离合器驱动输出状态         $    $           $    $  ANS003.BYTE004  $  if(X1==0) y=@0393;else if(X1==1) y=@0015;else y=@0004;
  $  004.行李箱锁电机驱动输出状态           $    $           $    $  ANS004.BYTE004  $  if(X1==0) y=@0393;else if(X1==1) y=@0030;else y=@0004;
  $  005.吸合电机驱动输出状态               $    $           $    $  ANS005.BYTE004  $  if(X1==0) y=@0393;else if(X1==1) y=@0394;else if(X1==2) y=@0395;else y=@0004;
  $  006.最大开度存储HALL值                 $    $           $    $  ANS006.BYTE004  $  Y=HEX(X1);
  $  007.当前开度HALL值                     $    $           $    $  ANS007.BYTE004  $  Y=HEX(X1,X2);
  $  008.车速                               $    $  km/h     $    $  ANS008.BYTE004  $  if((X1*256+X2)<=32765) Y=(X1*256+X2)*0.01;else Y=@008c;
  $  009.里程表                             $    $  km       $    $  ANS009.BYTE004  $  if((X1*16777216+X2*65536+X3*256+X4)<=536870910)Y=((X1*16777216+X2*65536+X3*256+X4)*1)/10;else Y=@0004;
  $  010.室内开关输入状态                   $    $           $    $  ANS010.BYTE004  $  if((X1&0x01)==0) Y=@025d; else Y=@039a;
  $  011.行李箱外开关输入状态               $    $           $    $  ANS010.BYTE004  $  if((X1&0x02)==0) Y=@025d; else Y=@039a;
  $  012.行李箱内开关输入状态               $    $           $    $  ANS010.BYTE004  $  if((X1&0x04)==0) Y=@025d; else Y=@039a;
  $  013.脚踢开关输入状态                   $    $           $    $  ANS010.BYTE004  $  if((X1&0x08)==0) Y=@025d; else Y=@039a;
  $  014.行李箱锁棘爪开关输入状态           $    $           $    $  ANS010.BYTE004  $  if((X1&0x10)==0) Y=@025d; else Y=@039a;
  $  015.行李箱锁AJAR补抓开关输入状态       $    $           $    $  ANS010.BYTE004  $  if((X1&0x20)==0) Y=@025d; else Y=@039a;
  $  016.行李箱门状态                       $    $           $    $  ANS011.BYTE004  $  if((X1&0x01)==0) Y=@0005; else Y=@0016;
  $  017.行李箱外寻找钥匙命令               $    $           $    $  ANS011.BYTE004  $  if((X1&0x04)==0) Y=@0005; else Y=@0016;
  $  018.高刹车灯命令                       $    $           $    $  ANS011.BYTE004  $  if((X1&0x08)==0) Y=@0005; else Y=@0016;
  $  019.防夹状态                           $    $           $    $  ANS011.BYTE004  $  if((X1&0x10)==0) Y=@0005; else Y=@0016;
  $  020.防撞击状态                         $    $           $    $  ANS011.BYTE004  $  if((X1&0x40)==0) Y=@0005; else Y=@0016;
  $  021.防盗警报                           $    $           $    $  ANS011.BYTE004  $  if((X2&0x04)==0) Y=@0005; else Y=@0016;
  $  022.解锁警报                           $    $           $    $  ANS011.BYTE004  $  if((X2&0x08)==0) Y=@0005; else Y=@0016;
  $  023.行李箱门语音控制反馈               $    $           $    $  ANS011.BYTE004  $  if(((X2>>4)&0x07)==0) Y=@0005; else if(((X2>>4)&0x07)==1) Y=@0398; else if(((X2>>4)&0x07)==2) Y=@0399;else y=@0004;
  $  024.警告喇叭                           $    $           $    $  ANS011.BYTE004  $  if((X3&0x01)==0) Y=@0005; else Y=@0016;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:764 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
