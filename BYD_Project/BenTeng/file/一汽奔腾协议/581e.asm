
    车型ID：581e

    模拟：协议模拟-->581e

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:616 02 10 01 00 00 00 00 00       $~  ANS000:617 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:616 02 3E 00 00 00 00 00 00       $!  ANS000:617 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:616 03 19 02 08 00 00 00 00       $#  ANS000:617 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ed000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:616 04 14 FF FF FF 00 00 00       $$  ANS000:617 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:616 03 22 F1 87 00 00 00 00       $%  ANS000:617 03 22 F1 87 00 00 00 00
  $%  REQ001:616 03 22 F1 98 00 00 00 00       $%  ANS001:617 03 22 F1 98 00 00 00 00
  $%  REQ002:616 03 22 F1 99 00 00 00 00       $%  ANS002:617 03 22 F1 99 00 00 00 00
  $%  REQ003:616 03 22 F1 90 00 00 00 00       $%  ANS003:617 03 22 F1 90 00 00 00 00
  $%  REQ004:616 03 22 F1 89 00 00 00 00       $%  ANS004:617 03 22 F1 89 00 00 00 00
  $%  REQ005:616 03 22 F1 83 00 00 00 00       $%  ANS005:617 03 22 F1 83 00 00 00 00
  $%  REQ006:616 03 22 F1 8A 00 00 00 00       $%  ANS006:617 03 22 F1 8A 00 00 00 00
  $%  REQ007:616 03 22 F1 8B 00 00 00 00       $%  ANS007:617 03 22 F1 8B 00 00 00 00
  $%  REQ008:616 03 22 F1 91 00 00 00 00       $%  ANS008:617 03 22 F1 91 00 00 00 00
  $%  REQ009:616 03 22 F1 92 00 00 00 00       $%  ANS009:617 03 22 F1 92 00 00 00 00
  $%  REQ010:616 03 22 F1 94 00 00 00 00       $%  ANS010:617 03 22 F1 94 00 00 00 00
  $%  REQ011:616 03 22 F1 A2 00 00 00 00       $%  ANS011:617 03 22 F1 A2 00 00 00 00
  $%  REQ012:616 03 22 F1 A4 00 00 00 00       $%  ANS012:617 03 22 F1 A4 00 00 00 00
  $%  REQ013:616 03 22 F1 8C 00 00 00 00       $%  ANS013:617 03 22 F1 8C 00 00 00 00
  $%  REQ014:616 03 22 F1 A1 00 00 00 00       $%  ANS014:617 03 22 F1 A1 00 00 00 00

  $%  000:FCC（汽车制造商）零件号:                $%    $%  ANS000.BYTE004  $%  0 ASCII
  $%  001:诊断仪序列号:                           $%    $%  ANS001.BYTE004  $%  0 ASCII
  $%  002:编程日期:                               $%    $%  ANS002.BYTE004  $%  y=SPRINTF([20%02X-%02X-%02X],X1,X2,X3);
  $%  003:VIN（车辆识别码）:                      $%    $%  ANS003.BYTE004  $%  0 ASCII
  $%  004:FCC（汽车制造商） ECU软件版本号:        $%    $%  ANS004.BYTE004  $%  0 ASCII
  $%  005:供应商ECU刷新软件版本号:                $%    $%  ANS005.BYTE004  $%  0 ASCII
  $%  006:供应商代码:                             $%    $%  ANS006.BYTE004  $%  0 ASCII
  $%  007:ECU在供应商生产线上的生产日期:          $%    $%  ANS007.BYTE004  $%  y=SPRINTF([20%02X-%02X-%02X],X1,X2,X3);
  $%  008:FCC（汽车制造商） ECU硬件版本号:        $%    $%  ANS008.BYTE004  $%  0 ASCII
  $%  009:供应商ECU硬件版本号:                    $%    $%  ANS009.BYTE004  $%  0 ASCII
  $%  010:供应商ECU软件版本号:                    $%    $%  ANS010.BYTE004  $%  0 ASCII
  $%  011:ECU在生产线的安装日期:                  $%    $%  ANS011.BYTE004  $%  y=SPRINTF([20%02X-%02X-%02X],X1,X2,X3);
  $%  012:供应商ECU标定软件版本号:                $%    $%  ANS012.BYTE004  $%  0 ASCII
  $%  013:ECU序列号:                              $%    $%  ANS013.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  014:鼓风机驱动:                             $%    $%  ANS014.BYTE004  $%  if(((X1>>0)&1)) Y=@0f0d;else Y=@0f0e;

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:616 03 22 06 00 00 00 00 00       $  ANS000:617 03 22 06 00 00 00 00 00
  $  REQ001:616 03 22 06 01 00 00 00 00       $  ANS001:617 03 22 06 01 00 00 00 00
  $  REQ002:616 03 22 06 02 00 00 00 00       $  ANS002:617 03 22 06 02 00 00 00 00
  $  REQ003:616 03 22 06 03 00 00 00 00       $  ANS003:617 03 22 06 03 00 00 00 00
  $  REQ004:616 03 22 06 04 00 00 00 00       $  ANS004:617 03 22 06 04 00 00 00 00
  $  REQ005:616 03 22 06 05 00 00 00 00       $  ANS005:617 03 22 06 05 00 00 00 00
  $  REQ006:616 03 22 06 06 00 00 00 00       $  ANS006:617 03 22 06 06 00 00 00 00
  $  REQ007:616 03 22 06 07 00 00 00 00       $  ANS007:617 03 22 06 07 00 00 00 00
  $  REQ008:616 03 22 06 17 00 00 00 00       $  ANS008:617 03 22 06 17 00 00 00 00
  $  REQ009:616 03 22 06 18 00 00 00 00       $  ANS009:617 03 22 06 18 00 00 00 00
  $  REQ010:616 03 22 06 1A 00 00 00 00       $  ANS010:617 03 22 06 1A 00 00 00 00
  $  REQ011:616 03 22 06 08 00 00 00 00       $  ANS011:617 03 22 06 08 00 00 00 00
  $  REQ012:616 03 22 06 09 00 00 00 00       $  ANS012:617 03 22 06 09 00 00 00 00

  $  000.阳光传感器状态                  $    $        $    $  ANS000.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0567;else if(X1==2) y=@0ddf;else y=@0004;
  $  001.阳光强度                        $    $        $    $  ANS000.BYTE005  $  Y=X1*256+X2;
  $  002.蒸发箱温度传感器状态            $    $        $    $  ANS001.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@01f8;else if(X1==2) y=@0dde;else if(X1==3) y=@0ddf;else y=@0004;
  $  003.蒸发箱温度                      $    $        $    $  ANS001.BYTE005  $  Y=(X1*256+X2)*1-30;
  $  004.室内温度传感器状态              $    $        $    $  ANS002.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@01f8;else if(X1==2) y=@0dde;else if(X1==3) y=@0ddf;else y=@0004;
  $  005.室内温度                        $    $        $    $  ANS002.BYTE005  $  Y=(X1*256+X2)*1-40;
  $  006.外界温度传感器状态              $    $        $    $  ANS003.BYTE004  $  Y=X1*0.5-40;
  $  007.模式风门执行器状态              $    $        $    $  ANS004.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@01f8;else if(X1==2) y=@0dde;else if(X1==3) y=@0ddf;else y=@0004;
  $  008.模式风门马达电压                $    $  V     $    $  ANS004.BYTE005  $  Y=(X1*256+X2)*0.01;
  $  009.温度风门执行器状态              $    $        $    $  ANS005.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@01f8;else if(X1==2) y=@0dde;else if(X1==3) y=@0ddf;else y=@0004;
  $  010.执行器电压                      $    $  V     $    $  ANS005.BYTE005  $  Y=(X1*256+X2)*0.01;
  $  011.内外循环新鲜空气马达状态0       $    $        $    $  ANS006.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0024;else y=@0004;
  $  012.内外循环新鲜空气马达状态1       $    $        $    $  ANS006.BYTE005  $  if(X1==0) y=@00a1;else if(X1==1) y=@00a2;else y=@0004;
  $  013.鼓风机电压状态                  $    $        $    $  ANS007.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0024;else y=@0004;
  $  014.鼓风机电源电压                  $    $  V     $    $  ANS007.BYTE005  $  Y=X1*0.117647;
  $  015.电瓶电压                        $    $  V     $    $  ANS008.BYTE004  $  Y=X1*0.117647;
  $  016.最新输出状态                    $    $        $    $  ANS009.BYTE004  $  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8);
  $  017.Auto键                          $    $        $    $  ANS010.BYTE004  $  if(((X1>>0)&1)) Y=@00ac;else Y=@00ab;
  $  018.REC键                           $    $        $    $  ANS010.BYTE004  $  if(((X1>>1)&1)) Y=@00ac;else Y=@00ab;
  $  019.AC键                            $    $        $    $  ANS010.BYTE004  $  if(((X1>>2)&1)) Y=@00ac;else Y=@00ab;
  $  020.OFF键                           $    $        $    $  ANS010.BYTE004  $  if(((X1>>3)&1)) Y=@00ac;else Y=@00ab;
  $  021.MODE键                          $    $        $    $  ANS010.BYTE004  $  if(((X1>>4)&1)) Y=@00ac;else Y=@00ab;
  $  022.DUAL键                          $    $        $    $  ANS010.BYTE004  $  if(((X1>>5)&1)) Y=@00ac;else Y=@00ab;
  $  023.除霜键                          $    $        $    $  ANS010.BYTE004  $  if(((X1>>6)&1)) Y=@00ac;else Y=@00ab;
  $  024.后除霜键                        $    $        $    $  ANS010.BYTE004  $  if(((X1>>7)&1)) Y=@00ac;else Y=@00ab;
  $  025.驾驶员侧温度旋钮右旋            $    $        $    $  ANS010.BYTE005  $  if(((X1>>0)&1)) Y=@00ac;else Y=@00ab;
  $  026.驾驶员侧温度旋钮左旋            $    $        $    $  ANS010.BYTE005  $  if(((X1>>1)&1)) Y=@00ac;else Y=@00ab;
  $  027.鼓风机旋钮右旋                  $    $        $    $  ANS010.BYTE005  $  if(((X1>>2)&1)) Y=@00ac;else Y=@00ab;
  $  028.鼓风机旋钮左旋                  $    $        $    $  ANS010.BYTE005  $  if(((X1>>3)&1)) Y=@00ac;else Y=@00ab;
  $  029.副驾驶侧温度旋钮右旋            $    $        $    $  ANS010.BYTE005  $  if(((X1>>4)&1)) Y=@00ac;else Y=@00ab;
  $  030.副驾驶侧温度旋钮左旋            $    $        $    $  ANS010.BYTE005  $  if(((X1>>5)&1)) Y=@00ac;else Y=@00ab;
  $  031.阳光传感器状态                  $    $        $    $  ANS011.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0567;else if(X1==2) y=@0ddf;else y=@0004;
  $  032.阳光强度                        $    $        $    $  ANS011.BYTE005  $  Y=X1*256+X2;
  $  033.温度风门执行器状态              $    $        $    $  ANS012.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@01f8;else if(X1==2) y=@0dde;else if(X1==3) y=@0ddf;else y=@0004;
  $  034.执行器电压                      $    $  V     $    $  ANS012.BYTE005  $  Y=(X1*256+X2)*0.01;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:616 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
