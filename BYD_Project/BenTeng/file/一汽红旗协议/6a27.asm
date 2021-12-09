
    车型ID：6a27

    模拟：协议模拟-->6a27

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:755 02 10 01 00 00 00 00 00       $~  ANS000:75D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:755 02 3E 00 00 00 00 00 00       $!  ANS000:75D 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:755 03 19 02 09 00 00 00 00       $#  ANS000:75D 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:755 04 14 FF FF FF 00 00 00       $$  ANS000:75D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:755 03 22 F1 87 00 00 00 00       $%  ANS000:75D 03 22 F1 87 00 00 00 00
  $%  REQ001:755 03 22 F1 89 00 00 00 00       $%  ANS001:75D 03 22 F1 89 00 00 00 00
  $%  REQ002:755 03 22 F1 90 00 00 00 00       $%  ANS002:75D 03 22 F1 90 00 00 00 00
  $%  REQ003:755 03 22 F1 91 00 00 00 00       $%  ANS003:75D 03 22 F1 91 00 00 00 00
  $%  REQ004:755 03 22 F1 93 00 00 00 00       $%  ANS004:75D 03 22 F1 93 00 00 00 00
  $%  REQ005:755 03 22 F1 95 00 00 00 00       $%  ANS005:75D 03 22 F1 95 00 00 00 00
  $%  REQ006:755 03 22 F1 98 00 00 00 00       $%  ANS006:75D 03 22 F1 98 00 00 00 00
  $%  REQ007:755 03 22 F1 99 00 00 00 00       $%  ANS007:75D 03 22 F1 99 00 00 00 00
  $%  REQ008:755 03 22 F1 9D 00 00 00 00       $%  ANS008:75D 03 22 F1 9D 00 00 00 00
  $%  REQ009:755 03 22 F1 A1 00 00 00 00       $%  ANS009:75D 03 22 F1 A1 00 00 00 00

  $%  000:OEM（原厂设备）部件编号:            $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本编号:                    $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:VIN（车辆识别码）:                  $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本编号:                    $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件版本号:                $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU软件版本号:                $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:维修车间码和/或诊断仪序列号:        $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:编程日期:                           $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:ECU安装日期:                        $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:系统配置1:                          $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:755 03 22 3D 0D 00 00 00 00       $  ANS000:75D 03 22 3D 0D 00 00 00 00
  $  REQ001:755 03 22 3D 0C 00 00 00 00       $  ANS001:75D 03 22 3D 0C 00 00 00 00
  $  REQ002:755 03 22 3D 0B 00 00 00 00       $  ANS002:75D 03 22 3D 0B 00 00 00 00
  $  REQ003:755 03 22 3D 0A 00 00 00 00       $  ANS003:75D 03 22 3D 0A 00 00 00 00
  $  REQ004:755 03 22 3D 09 00 00 00 00       $  ANS004:75D 03 22 3D 09 00 00 00 00
  $  REQ005:755 03 22 3D 08 00 00 00 00       $  ANS005:75D 03 22 3D 08 00 00 00 00
  $  REQ006:755 03 22 3D 07 00 00 00 00       $  ANS006:75D 03 22 3D 07 00 00 00 00
  $  REQ007:755 03 22 3D 06 00 00 00 00       $  ANS007:75D 03 22 3D 06 00 00 00 00
  $  REQ008:755 03 22 3D 05 00 00 00 00       $  ANS008:75D 03 22 3D 05 00 00 00 00
  $  REQ009:755 03 22 3D 04 00 00 00 00       $  ANS009:75D 03 22 3D 04 00 00 00 00
  $  REQ010:755 03 22 3D 03 00 00 00 00       $  ANS010:75D 03 22 3D 03 00 00 00 00
  $  REQ011:755 03 22 3D 02 00 00 00 00       $  ANS011:75D 03 22 3D 02 00 00 00 00
  $  REQ012:755 03 22 3D 01 00 00 00 00       $  ANS012:75D 03 22 3D 01 00 00 00 00
  $  REQ013:755 03 22 3D 00 00 00 00 00       $  ANS013:75D 03 22 3D 00 00 00 00 00

  $  000.车门把手灯输出状态        $    $        $    $  ANS000.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  001.转向灯状态                $    $        $    $  ANS001.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  002.BSD(盲区探测)灯状态       $    $        $    $  ANS002.BYTE004  $  if(X1==0) y=@0115;else if(X1==1) y=@0116;else if(X1==2) y=@0117;else y=@0004;
  $  003.开关背光状态              $    $  %     $    $  ANS003.BYTE004  $  if(X1<=100) Y=X1*1;else Y=@0004;
  $  004.存储的记忆位置个数        $    $        $    $  ANS004.BYTE004  $  if(X1==0) y=@0107;else if(X1==1) y=@010f;else if(X1==2) y=@0110;else if(X1==3) y=@0111;else y=@0004;
  $  005.门灯驱动输出状态          $    $        $    $  ANS005.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0015;else y=@0004;
  $  006.后视镜加热状态            $    $        $    $  ANS006.BYTE004  $  if(X1==0) y=@0113;else if(X1==1) y=@0114;else y=@0004;
  $  007.车门状态                  $    $        $    $  ANS007.BYTE004  $  if(X1==0) y=@0015;else if(X1==1) y=@0112;else y=@0004;
  $  008.车门锁状态                $    $        $    $  ANS008.BYTE004  $  if(X1==0) y=@0030;else if(X1==1) y=@004b;else y=@0004;
  $  009.后视镜折叠状态            $    $        $    $  ANS009.BYTE004  $  if(X1==0) y=@011f;else if(X1==1) y=@0120;else y=@0004;
  $  010.后视镜调整开关状态        $    $        $    $  ANS010.BYTE004  $  if(X1==0) y=@0005;else if(X1==1) y=@0123;else if(X1==2) y=@0124;else if(X1==3) y=@0125;else if(X1==4) y=@0126;else y=@0004;
  $  011.控制器车窗按键状态        $    $        $    $  ANS011.BYTE004  $  if(X1==0) y=@0005;else if(X1==1) y=@011b;else if(X1==2) y=@011c;else if(X1==3) y=@011d;else if(X1==4) y=@011e;else y=@0004;
  $  012.控制器防夹状态            $    $        $    $  ANS012.BYTE004  $  if(X1==0) y=@0118;else if(X1==1) y=@0119;else if(X1==2) y=@011a;else y=@0004;
  $  013.控制器工作电压            $    $  V     $    $  ANS013.BYTE004  $  if(((x1&0x0f)>9) || (((x1>>4)&0x0f)>9) || ((x2&0x0f)>9) || (((x2>>4)&0x0f)>9) ) Y=@0004;else Y=SPRINTF([%x.%02x],x1,x2);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:755 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
