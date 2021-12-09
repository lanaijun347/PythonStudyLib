
    车型ID：6923

    模拟：协议模拟-->6923

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:774 02 10 01 00 00 00 00 00       $~  ANS000:77C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:774 02 3E 00 00 00 00 00 00       $!  ANS000:77C 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:774 03 19 02 09 00 00 00 00       $#  ANS000:77C 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:774 04 14 FF FF FF 00 00 00       $$  ANS000:77C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:774 03 22 F1 87 00 00 00 00       $%  ANS000:77C 03 22 F1 87 00 00 00 00
  $%  REQ001:774 03 22 F1 89 00 00 00 00       $%  ANS001:77C 03 22 F1 89 00 00 00 00
  $%  REQ002:774 03 22 F1 90 00 00 00 00       $%  ANS002:77C 03 22 F1 90 00 00 00 00
  $%  REQ003:774 03 22 F1 91 00 00 00 00       $%  ANS003:77C 03 22 F1 91 00 00 00 00
  $%  REQ004:774 03 22 F1 93 00 00 00 00       $%  ANS004:77C 03 22 F1 93 00 00 00 00
  $%  REQ005:774 03 22 F1 95 00 00 00 00       $%  ANS005:77C 03 22 F1 95 00 00 00 00
  $%  REQ006:774 03 22 F1 98 00 00 00 00       $%  ANS006:77C 03 22 F1 98 00 00 00 00
  $%  REQ007:774 03 22 F1 99 00 00 00 00       $%  ANS007:77C 03 22 F1 99 00 00 00 00
  $%  REQ008:774 03 22 F1 9D 00 00 00 00       $%  ANS008:77C 03 22 F1 9D 00 00 00 00
  $%  REQ009:774 03 22 F1 A1 00 00 00 00       $%  ANS009:77C 03 22 F1 A1 00 00 00 00
  $%  REQ010:774 03 22 F1 A2 00 00 00 00       $%  ANS010:77C 03 22 F1 A2 00 00 00 00

  $%  000:部件编号:                   $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本号:              $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:VIN:                        $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本号:              $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件版本号:        $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU软件版本号:        $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:测试仪序列号:               $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:编程日期:                   $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:ECU安装日期:                $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:配置信息1:                  $%    $%  ANS009.BYTE004  $%  0 HEX
  $%  010:EOL模式配置:                $%    $%  ANS010.BYTE004  $%  0 HEX

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:774 03 22 61 00 00 00 00 00       $  ANS000:77C 03 22 61 00 00 00 00 00
  $  REQ001:774 03 22 61 02 00 00 00 00       $  ANS001:77C 03 22 61 02 00 00 00 00
  $  REQ002:774 03 22 61 03 00 00 00 00       $  ANS002:77C 03 22 61 03 00 00 00 00
  $  REQ003:774 03 22 61 04 00 00 00 00       $  ANS003:77C 03 22 61 04 00 00 00 00
  $  REQ004:774 03 22 61 05 00 00 00 00       $  ANS004:77C 03 22 61 05 00 00 00 00
  $  REQ005:774 03 22 61 06 00 00 00 00       $  ANS005:77C 03 22 61 06 00 00 00 00
  $  REQ006:774 03 22 61 07 00 00 00 00       $  ANS006:77C 03 22 61 07 00 00 00 00
  $  REQ007:774 03 22 61 01 00 00 00 00       $  ANS007:77C 03 22 61 01 00 00 00 00

  $  000.KL30电供电电压                  $    $  V     $    $  ANS000.BYTE004  $  Y=(X1*1)/10;
  $  001.虚像高度                        $    $        $    $  ANS001.BYTE004  $  Y=X1*1-10;
  $  002.高度调节电机驱动状态            $    $        $    $  ANS002.BYTE004  $  if(X1==0) y=@010e;else if(X1==1) y=@02e0;else if(X1==2) y=@02e2;else y=@0004;
  $  003.工作状态                        $    $        $    $  ANS003.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0387;else if(X1==2) y=@0388;else y=@0004;
  $  004.高度调节开关状态                $    $        $    $  ANS004.BYTE004  $  if(X1==0) y=@010e;else if(X1==1) y=@0389;else if(X1==2) y=@038a;else y=@0004;
  $  005.3管脚电平状态                   $    $        $    $  ANS005.BYTE004  $  if(X1==0) y=@02a7;else if(X1==1) y=@02f2;else y=@0004;
  $  006.4管脚电平状态                   $    $        $    $  ANS006.BYTE004  $  if(X1==0) y=@02a7;else if(X1==1) y=@02f2;else y=@0004;
  $  007.导航                            $    $        $    $  ANS007.BYTE004  $  if((X2&1)==0) Y=@018e;else if((X2&1)!=0) Y=@018d;else y=@0004;
  $  008.电话                            $    $        $    $  ANS007.BYTE004  $  if((X2&2)==0) Y=@018e;else if((X2&2)!=0) Y=@018d;else y=@0004;
  $  009.音频                            $    $        $    $  ANS007.BYTE004  $  if((X2&4)==0) Y=@018e;else if((X2&4)!=0) Y=@018d;else y=@0004;
  $  010.ACC                             $    $        $    $  ANS007.BYTE004  $  if((X1&1)==0&&(X1&2)==0) Y=@018e;else if((X1&1)!=0&&(X1&2)==0)  Y=@018d;else if((X1&1)==0&&(X1&2)!=0)  Y=@018f;else y=@0004;
  $  011.LDW(车道偏离预警系统)/LKA       $    $        $    $  ANS007.BYTE004  $  if((X1&4)==0&&(X1&8)==0) Y=@018e;else if((X1&4)!=0&&(X1&8)==0)  Y=@018d;else if((X1&4)==0&&(X1&8)!=0)  Y=@018f;else y=@0004;
  $  012.TSR                             $    $        $    $  ANS007.BYTE004  $  if((X1&16)==0&&(X1&32)==0) Y=@018e;else if((X1&16)!=0&&(X1&32)==0)  Y=@018d;else if((X1&16)==0&&(X1&32)!=0)  Y=@018f;else y=@0004;
  $  013.FCW                             $    $        $    $  ANS007.BYTE004  $  if((X1&64)==0&&(X1&128)==0) Y=@018e;else if((X1&64)!=0&&(X1&128)==0)  Y=@018d;else if((X1&64)==0&&(X1&128)!=0)  Y=@018f;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:774 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
