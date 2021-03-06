
    车型ID：6a10

    模拟：协议模拟-->6a10

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:740 02 10 01 00 00 00 00 00       $~  ANS000:748 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:740 02 3E 00 00 00 00 00 00       $!  ANS000:748 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:740 03 19 02 09 00 00 00 00       $#  ANS000:748 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:740 04 14 FF FF FF 00 00 00       $$  ANS000:748 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:740 03 22 F1 87 00 00 00 00       $%  ANS000:748 03 22 F1 87 00 00 00 00
  $%  REQ001:740 03 22 F1 89 00 00 00 00       $%  ANS001:748 03 22 F1 89 00 00 00 00
  $%  REQ002:740 03 22 F1 8C 00 00 00 00       $%  ANS002:748 03 22 F1 8C 00 00 00 00
  $%  REQ003:740 03 22 F1 90 00 00 00 00       $%  ANS003:748 03 22 F1 90 00 00 00 00
  $%  REQ004:740 03 22 F1 91 00 00 00 00       $%  ANS004:748 03 22 F1 91 00 00 00 00
  $%  REQ005:740 03 22 F1 93 00 00 00 00       $%  ANS005:748 03 22 F1 93 00 00 00 00
  $%  REQ006:740 03 22 F1 95 00 00 00 00       $%  ANS006:748 03 22 F1 95 00 00 00 00
  $%  REQ007:740 03 22 F1 98 00 00 00 00       $%  ANS007:748 03 22 F1 98 00 00 00 00
  $%  REQ008:740 03 22 F1 99 00 00 00 00       $%  ANS008:748 03 22 F1 99 00 00 00 00
  $%  REQ009:740 03 22 F1 9D 00 00 00 00       $%  ANS009:748 03 22 F1 9D 00 00 00 00
  $%  REQ010:740 03 22 F1 A1 00 00 00 00       $%  ANS010:748 03 22 F1 A1 00 00 00 00

  $%  000:OEM（原厂设备）部件编号:            $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本编号:                    $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:ECU序列号:                          $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);
  $%  003:VIN（车辆识别码）:                  $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  004:ECU硬件版本编号:                    $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  005:供应商ECU硬件版本号:                $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:供应商ECU软件版本号:                $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  007:维修车间码和/或诊断仪序列号:        $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  008:编程日期:                           $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:ECU安装日期:                        $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  010:系统配置1:                          $%    $%  ANS010.BYTE004  $%  Y=HEX(X1);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:740 03 22 01 01 00 00 00 00       $  ANS000:748 03 22 01 01 00 00 00 00
  $  REQ001:740 03 22 4F 00 00 00 00 00       $  ANS001:748 03 22 4F 00 00 00 00 00
  $  REQ002:740 03 22 4F 01 00 00 00 00       $  ANS002:748 03 22 4F 01 00 00 00 00
  $  REQ003:740 03 22 4F 02 00 00 00 00       $  ANS003:748 03 22 4F 02 00 00 00 00
  $  REQ004:740 03 22 4F 03 00 00 00 00       $  ANS004:748 03 22 4F 03 00 00 00 00
  $  REQ005:740 03 22 4F 06 00 00 00 00       $  ANS005:748 03 22 4F 06 00 00 00 00
  $  REQ006:740 03 22 4F 09 00 00 00 00       $  ANS006:748 03 22 4F 09 00 00 00 00
  $  REQ007:740 03 22 4F 08 00 00 00 00       $  ANS007:748 03 22 4F 08 00 00 00 00
  $  REQ008:740 03 22 4F 0A 00 00 00 00       $  ANS008:748 03 22 4F 0A 00 00 00 00
  $  REQ009:740 03 22 4F 0B 00 00 00 00       $  ANS009:748 03 22 4F 0B 00 00 00 00
  $  REQ010:740 03 22 4F 07 00 00 00 00       $  ANS010:748 03 22 4F 07 00 00 00 00
  $  REQ011:740 03 22 4F 0C 00 00 00 00       $  ANS011:748 03 22 4F 0C 00 00 00 00
  $  REQ012:740 03 22 4F 0D 00 00 00 00       $  ANS012:748 03 22 4F 0D 00 00 00 00
  $  REQ013:740 03 22 4F 0E 00 00 00 00       $  ANS013:748 03 22 4F 0E 00 00 00 00
  $  REQ014:740 03 22 4F 0F 00 00 00 00       $  ANS014:748 03 22 4F 0F 00 00 00 00
  $  REQ015:740 03 22 4F 14 00 00 00 00       $  ANS015:748 03 22 4F 14 00 00 00 00
  $  REQ016:740 03 22 4F 15 00 00 00 00       $  ANS016:748 03 22 4F 15 00 00 00 00
  $  REQ017:740 03 22 4F 23 00 00 00 00       $  ANS017:748 03 22 4F 23 00 00 00 00
  $  REQ018:740 03 22 4F 16 00 00 00 00       $  ANS018:748 03 22 4F 16 00 00 00 00
  $  REQ019:740 03 22 4F 18 00 00 00 00       $  ANS019:748 03 22 4F 18 00 00 00 00
  $  REQ020:740 03 22 4F 19 00 00 00 00       $  ANS020:748 03 22 4F 19 00 00 00 00
  $  REQ021:740 03 22 4F 1C 00 00 00 00       $  ANS021:748 03 22 4F 1C 00 00 00 00
  $  REQ022:740 03 22 4F 1F 00 00 00 00       $  ANS022:748 03 22 4F 1F 00 00 00 00
  $  REQ023:740 03 22 4F 20 00 00 00 00       $  ANS023:748 03 22 4F 20 00 00 00 00
  $  REQ024:740 03 22 4F 22 00 00 00 00       $  ANS024:748 03 22 4F 22 00 00 00 00
  $  REQ025:740 03 22 4F 29 00 00 00 00       $  ANS025:748 03 22 4F 29 00 00 00 00
  $  REQ026:740 03 22 01 00 00 00 00 00       $  ANS026:748 03 22 01 00 00 00 00 00

  $  000.总里程                       $    $  km        $    $  ANS000.BYTE004  $  if((X1*16777216+X2*65536+X3*256+X4)<=33554430) Y=(X1*16777216+X2*65536+X3*256+X4)*0.1;else Y=@0004;
  $  001.左温度电机位置               $    $  %         $    $  ANS001.BYTE004  $  if(X1<=100) Y=X1*1;else Y=@0004;
  $  002.右温度电机位置               $    $  %         $    $  ANS002.BYTE004  $  if(X1<=100) Y=X1*1;else Y=@0004;
  $  003.模式电机位置                 $    $  %         $    $  ANS003.BYTE004  $  if(X1<=100) Y=X1*1;else Y=@0004;
  $  004.循环电机位置                 $    $  %         $    $  ANS004.BYTE004  $  if(X1<=100) Y=X1*1;else Y=@0004;
  $  005.蒸发器传感器温度             $    $  degC      $    $  ANS005.BYTE004  $  if(X1<=180) Y=X1-40;else Y=@0004;
  $  006.左阳光传感器光照强度         $    $  w         $    $  ANS006.BYTE004  $  if((X1*256+X2)<=1000) Y=(X1*256+X2)*1;else Y=@0004;
  $  007.右阳光传感器光照强度         $    $  w         $    $  ANS007.BYTE004  $  if((X1*256+X2)<=1000) Y=(X1*256+X2)*1;else Y=@0004;
  $  008.压力传感器压力值             $    $  MPa       $    $  ANS008.BYTE004  $  if((X1*256+X2)<=3530) Y=(X1*256+X2)*0.01;else Y=@0004;
  $  009.ADS传感器                    $    $            $    $  ANS009.BYTE004  $  if(X1<=100) Y=X1*1;else Y=@0004;
  $  010.AQS传感器                    $    $            $    $  ANS010.BYTE004  $  if(X1==0) Y=@0014;else if(X1==1) Y=@0015;else Y=@0004;
  $  011.PM2.5传感器                  $    $  ug/m3     $    $  ANS011.BYTE004  $  if((X1*256+X2)<=32765) Y=(X1*256+X2)*1;else Y=@0004;
  $  012.内温传感器温度               $    $  degC      $    $  ANS012.BYTE004  $  if(X1<=253) Y=X1-40;else Y=@0004;
  $  013.吹风模式设置                 $    $            $    $  ANS013.BYTE004  $  if(X1==1) y=@00a3;else if(X1==2) y=@00a4;else if(X1==3) y=@00a5;else if(X1==4) y=@00a6;else if(X1==5) y=@00a7;else y=@0004;
  $  014.循环设置                     $    $            $    $  ANS014.BYTE004  $  if(X1==0) y=@00a1;else if(X1==1) y=@00a2;else y=@0004;
  $  015.负离子发生器开关状态         $    $            $    $  ANS015.BYTE004  $  if(X1==0) Y=@0014;else if(X1==1) Y=@0015;else Y=@0004;
  $  016.PM2风扇.5开关状态            $    $            $    $  ANS016.BYTE004  $  if(X1==0) Y=@0014;else if(X1==1) Y=@0015;else Y=@0004;
  $  017.等离子发生器开关状态         $    $            $    $  ANS017.BYTE004  $  if(X1==0) Y=@0014;else if(X1==1) Y=@0015;else Y=@0004;
  $  018.鼓风机档位                   $    $            $    $  ANS018.BYTE004  $  if(X1==0) Y=@008c;else if(X1==1) Y=@0095;else if(X1==2) Y=@0096;else if(X1==3) Y=@0097;else if(X1==4) Y=@0098;else if(X1==5) Y=@0099;else if(X1==6) Y=@009a;else if(X1==7) Y=@009b;else Y=@0004;
  $  019.空调压缩机开启申请信号       $    $            $    $  ANS019.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0094;else y=@0004;
  $  020.压缩机工作许可信号           $    $            $    $  ANS020.BYTE004  $  if(X1==0) y=@009f;else if(X1==1) y=@00a0;else y=@0004;
  $  021.远程空调请求                 $    $            $    $  ANS021.BYTE004  $  if(X1==0) y=@009c;else if(X1==1) y=@009d;else if(X1==2) y=@009e;else y=@0004;
  $  022.钥匙位置                     $    $            $    $  ANS022.BYTE004  $  if(X1==0) y=@008f;else if(X1==1) y=@0090;else if(X1==2) y=@0091;else if(X1==3) y=@004e;else y=@0004;
  $  023.远程车辆模式                 $    $            $    $  ANS023.BYTE004  $  if(X1==0) y=@006a;else if(X1==1) y=@0092;else y=@0004;
  $  024.水阀电机驱动状态             $    $            $    $  ANS024.BYTE004  $  if(X1==0) Y=@0014;else if(X1==1) Y=@0015;else Y=@0004;
  $  025.外控变排量压缩机数值         $    $            $    $  ANS025.BYTE004  $  if((X1*256+X2)<=1023) Y=(X1*256+X2)*1;else Y=@0004;
  $  026.车速                         $    $  km/h      $    $  ANS026.BYTE004  $  if((X1*256+X2)<=32767) Y=(X1*256+X2)*0.01;else Y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:740 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
