
    车型ID：006f

    模拟：协议模拟-->006f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~778

进入命令:

  $~  REQ000:770 02 10 01 00 00 00 00 00       $~  ANS000:778 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:770 02 3E 80 00 00 00 00 00       $!  ANS000:778 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:770 03 19 02 09 00 00 00 00       $#  ANS000:778 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/4c000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:770 04 14 FF FF FF 00 00 00       $$  ANS000:778 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:770 03 22 F1 90 00 00 00 00       $%  ANS000:778 03 22 F1 90 00 00 00 00
  $%  REQ001:770 03 22 F1 87 00 00 00 00       $%  ANS001:778 03 22 F1 87 00 00 00 00
  $%  REQ002:770 03 22 F1 8A 00 00 00 00       $%  ANS002:778 03 22 F1 8A 00 00 00 00
  $%  REQ003:770 03 22 F1 8B 00 00 00 00       $%  ANS003:778 03 22 F1 8B 00 00 00 00
  $%  REQ004:770 03 22 F1 50 00 00 00 00       $%  ANS004:778 03 22 F1 50 00 00 00 00
  $%  REQ005:770 03 22 F1 89 00 00 00 00       $%  ANS005:778 03 22 F1 89 00 00 00 00
  $%  REQ006:770 03 22 F1 88 00 00 00 00       $%  ANS006:778 03 22 F1 88 00 00 00 00
  $%  REQ007:770 03 22 F1 97 00 00 00 00       $%  ANS007:778 03 22 F1 97 00 00 00 00
  $%  REQ008:770 03 22 F1 80 00 00 00 00       $%  ANS008:778 03 22 F1 80 00 00 00 00
  $%  REQ009:770 03 22 F1 99 00 00 00 00       $%  ANS009:778 03 22 F1 99 00 00 00 00
  $%  REQ010:770 03 22 FF 00 00 00 00 00       $%  ANS010:778 03 22 FF 00 00 00 00 00
  $%  REQ011:770 03 22 F1 84 00 00 00 00       $%  ANS011:778 03 22 F1 84 00 00 00 00
  $%  REQ012:770 03 22 F1 EF 00 00 00 00       $%  ANS012:778 03 22 F1 EF 00 00 00 00
  $%  REQ013:770 03 22 F1 EE 00 00 00 00       $%  ANS013:778 03 22 F1 EE 00 00 00 00
  $%  REQ014:770 03 22 F1 40 00 00 00 00       $%  ANS014:778 03 22 F1 40 00 00 00 00
  $%  REQ015:770 03 22 F1 42 00 00 00 00       $%  ANS015:778 03 22 F1 42 00 00 00 00
  $%  REQ016:770 03 22 F1 45 00 00 00 00       $%  ANS016:778 03 22 F1 45 00 00 00 00

  $%  000:VIN码:                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  001:物料号:                   $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19);
  $%  002:系统供应商识别符:         $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:ECU生产日期:              $%    $%  ANS003.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  004:车厂ECU硬件版本号:        $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7);
  $%  005:车厂ECU软件版本号:        $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  006:车厂ECU软件号:            $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  007:产品型号:                 $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:Boot软件标识:             $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  009:升级程序日期:             $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:UDS版本号:                $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%X.%X.%X.%X],x1,x2,x3,x4);
  $%  011:应用软件指纹:             $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:BOOT应用分区标识:         $%    $%  ANS012.BYTE004  $%  if(x==0) y=@000b; else if(x==1) y=@000c; else if(x==2) y=@0059;else y=@0008;
  $%  013:CAN/CANFD区分标识:        $%    $%  ANS013.BYTE004  $%  if(x==0) y=@01e3; else if(x==1) y=@01e4;else y=@0008;
  $%  014:算法版本号:               $%    $%  ANS014.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  015:性能Level:                $%    $%  ANS015.BYTE004  $%  if(x==0) y=@01e5; else if(x==1) y=@01e6; else if(x==2) y=@01e7; else y=@0008;
  $%  016:是否开启调试信息:         $%    $%  ANS016.BYTE004  $%  if(x==0) y=@01e8; else if(x==1) y=@000a; else y=@0008;
  $%  017:是否开启串口打印:         $%    $%  ANS016.BYTE005  $%  if(x==0) y=@01e8; else if(x==1) y=@000a; else y=@0008;
  $%  018:目标输出个数:             $%    $%  ANS016.BYTE006  $%  if(x==0) y=@01e1; else if(x==1) y=@01e2; else y=@0008;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:770 03 22 03 C0 00 00 00 00       $  ANS000:778 03 22 03 C0 00 00 00 00
  $  REQ001:770 03 22 03 C1 00 00 00 00       $  ANS001:778 03 22 03 C1 00 00 00 00
  $  REQ002:770 03 22 03 C2 00 00 00 00       $  ANS002:778 03 22 03 C2 00 00 00 00
  $  REQ003:770 03 22 03 C3 00 00 00 00       $  ANS003:778 03 22 03 C3 00 00 00 00
  $  REQ004:770 03 22 03 C4 00 00 00 00       $  ANS004:778 03 22 03 C4 00 00 00 00
  $  REQ005:770 03 22 03 C5 00 00 00 00       $  ANS005:778 03 22 03 C5 00 00 00 00
  $  REQ006:770 03 22 03 C6 00 00 00 00       $  ANS006:778 03 22 03 C6 00 00 00 00

  $  000.相位1数据                            $    $             $    $  ANS000.BYTE004  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  001.相位2数据                            $    $             $    $  ANS000.BYTE006  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  002.相位3数据                            $    $             $    $  ANS000.BYTE008  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  003.相位4数据                            $    $             $    $  ANS000.BYTE010  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  004.相位5数据                            $    $             $    $  ANS000.BYTE012  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  005.相位6数据                            $    $             $    $  ANS000.BYTE014  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  006.相位7数据                            $    $             $    $  ANS000.BYTE016  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  007.相位8数据                            $    $             $    $  ANS000.BYTE018  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  008.相位9数据                            $    $             $    $  ANS000.BYTE020  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  009.相位10数据                           $    $             $    $  ANS000.BYTE022  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  010.相位11数据                           $    $             $    $  ANS000.BYTE024  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  011.相位12数据                           $    $             $    $  ANS000.BYTE026  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  012.相位13数据                           $    $             $    $  ANS000.BYTE028  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  013.相位14数据                           $    $             $    $  ANS000.BYTE030  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  014.相位15数据                           $    $             $    $  ANS000.BYTE032  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  015.相位16数据                           $    $             $    $  ANS000.BYTE034  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  016.相位17数据                           $    $             $    $  ANS000.BYTE036  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  017.相位18数据                           $    $             $    $  ANS000.BYTE038  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  018.相位19数据                           $    $             $    $  ANS000.BYTE040  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  019.相位20数据                           $    $             $    $  ANS000.BYTE042  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  020.相位21数据                           $    $             $    $  ANS000.BYTE044  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  021.相位22数据                           $    $             $    $  ANS000.BYTE046  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  022.相位23数据                           $    $             $    $  ANS000.BYTE048  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  023.相位24数据                           $    $             $    $  ANS000.BYTE050  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  024.相位25数据                           $    $             $    $  ANS000.BYTE052  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  025.相位26数据                           $    $             $    $  ANS000.BYTE054  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  026.相位27数据                           $    $             $    $  ANS000.BYTE056  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  027.相位28数据                           $    $             $    $  ANS000.BYTE058  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  028.相位29数据                           $    $             $    $  ANS000.BYTE060  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  029.相位30数据                           $    $             $    $  ANS000.BYTE062  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  030.相位31数据                           $    $             $    $  ANS000.BYTE064  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  031.相位32数据                           $    $             $    $  ANS000.BYTE066  $  y = SPRINTF([%.4f], (x1*256+x2)*0.0001-3.2767);
  $  032.整车安装标定状态                     $    $             $    $  ANS001.BYTE004  $  if(x1==0) y=@01d6;else if(x1==1) y=@01d7;else if(x1==2) y=@01d8;else if(x1==255) y=@01d9;else y=@0005;
  $  033.目标角反测试状态                     $    $             $    $  ANS002.BYTE005  $  switxh(x1&0x03) 0x00: y=@01da;0x03: y=@01db; default: y=@0005;
  $  034.角反水平偏差角度                     $    $  度(°)     $    $  ANS002.BYTE004  $  y = SPRINTF([%.1f], ((((x1>>0)&1))*256+(x2>>2))*0.1-6.3);
  $  035.角反俯仰偏差角度                     $    $  度(°)     $    $  ANS002.BYTE004  $  y = SPRINTF([%.1f], (x1>>1)*0.1-6.3);
  $  036.左前盲区角雷达状态                   $    $             $    $  ANS003.BYTE004  $  if(((x1>>0)&1)) y=@01d4;else y=@01d5;
  $  037.右前盲区角雷达状态                   $    $             $    $  ANS003.BYTE004  $  if(((x1>>2)&1)) y=@01d4;else y=@01d5;
  $  038.左后盲区角雷达状态                   $    $             $    $  ANS003.BYTE004  $  if(((x1>>4)&1)) y=@01d4;else y=@01d5;
  $  039.右后盲区角雷达状态                   $    $             $    $  ANS003.BYTE004  $  if(((x1>>6)&1)) y=@01d4;else y=@01d5;
  $  040.雷达是否老化                         $    $             $    $  ANS004.BYTE004  $  switxh(x1&0x03) 0x00: y=@01e9;0x01: y=@01ea; default: y=@0005;
  $  041.门限标准存在状态                     $    $             $    $  ANS005.BYTE004  $  if(x1==0) y=@00f2;else if(x1==1) y=@01dc;else if(x1==255) y=@010c;else y=@0005;
  $  042.雷达水平标定自检状态                 $    $             $    $  ANS006.BYTE004  $  switxh(x1&0x0F) 0x00: y=@01eb;0x01: y=@01d7;0x02: y=@01ec;0x0F: y=@010c; default: y=@0005;
  $  043.雷达水平标定自检标定结果             $    $             $    $  ANS006.BYTE004  $  if((x1>>4)==0) y=@00f9;else if((x1>>4)==1) y=@01dd;else if((x1>>4)==2) y=@01de;else if((x1>>4)==3) y=@01df;else if((x1>>4)==4) y=@01e0;else if((x1>>4)==15) y=@010c;else y=@0005;
  $  044.雷达水平自标定角度(偏左为负数)       $    $             $    $  ANS006.BYTE005  $  if(x1<255) y=x1*0.1-12.7;else y=@00c2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:770 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
