
    车型ID：6a24

    模拟：协议模拟-->6a24

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:724 02 10 01 00 00 00 00 00       $~  ANS000:72C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:724 02 3E 00 00 00 00 00 00       $!  ANS000:72C 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:724 03 19 02 09 00 00 00 00       $#  ANS000:72C 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:724 04 14 FF FF FF 00 00 00       $$  ANS000:72C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:724 03 22 F1 87 00 00 00 00       $%  ANS000:72C 03 22 F1 87 00 00 00 00
  $%  REQ001:724 03 22 F1 89 00 00 00 00       $%  ANS001:72C 03 22 F1 89 00 00 00 00
  $%  REQ002:724 03 22 F1 90 00 00 00 00       $%  ANS002:72C 03 22 F1 90 00 00 00 00
  $%  REQ003:724 03 22 F1 91 00 00 00 00       $%  ANS003:72C 03 22 F1 91 00 00 00 00
  $%  REQ004:724 03 22 F1 93 00 00 00 00       $%  ANS004:72C 03 22 F1 93 00 00 00 00
  $%  REQ005:724 03 22 F1 95 00 00 00 00       $%  ANS005:72C 03 22 F1 95 00 00 00 00
  $%  REQ006:724 03 22 F1 98 00 00 00 00       $%  ANS006:72C 03 22 F1 98 00 00 00 00
  $%  REQ007:724 03 22 F1 99 00 00 00 00       $%  ANS007:72C 03 22 F1 99 00 00 00 00
  $%  REQ008:724 03 22 F1 9D 00 00 00 00       $%  ANS008:72C 03 22 F1 9D 00 00 00 00
  $%  REQ009:724 03 22 F1 A1 00 00 00 00       $%  ANS009:72C 03 22 F1 A1 00 00 00 00
  $%  REQ010:724 03 22 2A 81 00 00 00 00       $%  ANS010:72C 03 22 2A 81 00 00 00 00
  $%  REQ011:724 03 22 2A 82 00 00 00 00       $%  ANS011:72C 03 22 2A 82 00 00 00 00
  $%  REQ012:724 03 22 2A 83 00 00 00 00       $%  ANS012:72C 03 22 2A 83 00 00 00 00
  $%  REQ013:724 03 22 2A 84 00 00 00 00       $%  ANS013:72C 03 22 2A 84 00 00 00 00
  $%  REQ014:724 03 22 2A 85 00 00 00 00       $%  ANS014:72C 03 22 2A 85 00 00 00 00

  $%  000:OEM（原厂设备）部件编号:            $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本编号:                    $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:VIN（车辆识别码）:                  $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本编号:                    $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件版本号:                $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU软件版本号:                $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:维修车间码和/或诊断仪序列号:        $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:编程日期:                           $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:ECU安装日期:                        $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:系统配置1:                          $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  010:雷达配置参数1:                      $%    $%  ANS010.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  011:雷达配置参数2:                      $%    $%  ANS011.BYTE004  $%  0 HEX
  $%  012:雷达配置参数3:                      $%    $%  ANS012.BYTE004  $%  0 HEX
  $%  013:雷达配置参数4:                      $%    $%  ANS013.BYTE004  $%  0 HEX
  $%  014:雷达配置参数5:                      $%    $%  ANS014.BYTE004  $%  0 HEX

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:724 03 22 2A 80 00 00 00 00       $  ANS000:72C 03 22 2A 80 00 00 00 00
  $  REQ001:724 03 22 2A 86 00 00 00 00       $  ANS001:72C 03 22 2A 86 00 00 00 00

  $  000.雷达射频模块状态       $    $       $    $  ANS000.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0127;else y=@0004;
  $  001.目标幅度               $    $       $    $  ANS001.BYTE004  $  Y=X1;
  $  002.目标速度               $    $       $    $  ANS001.BYTE005  $  if((x1*256+x2)<=32768) y=(x1*256+x2)*0.01;else y=(x1*256+x2-65536)*0.01;
  $  003.补偿角度               $    $       $    $  ANS001.BYTE007  $  if((x1*256+x2)<=32768) y=(x1*256+x2)*0.01;else y=(x1*256+x2-65536)*0.01;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:724 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
