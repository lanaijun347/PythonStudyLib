
    车型ID：6b30

    模拟：协议模拟-->6b30

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:762 02 10 01 00 00 00 00 00       $~  ANS000:76A 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:762 02 3E 00 00 00 00 00 00       $!  ANS000:76A 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:762 03 19 02 09 00 00 00 00       $#  ANS000:76A 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:762 04 14 FF FF FF 00 00 00       $$  ANS000:76A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:762 03 22 F1 87 00 00 00 00       $%  ANS000:76A 03 22 F1 87 00 00 00 00
  $%  REQ001:762 03 22 F1 89 00 00 00 00       $%  ANS001:76A 03 22 F1 89 00 00 00 00
  $%  REQ002:762 03 22 F1 90 00 00 00 00       $%  ANS002:76A 03 22 F1 90 00 00 00 00
  $%  REQ003:762 03 22 F1 91 00 00 00 00       $%  ANS003:76A 03 22 F1 91 00 00 00 00
  $%  REQ004:762 03 22 F1 93 00 00 00 00       $%  ANS004:76A 03 22 F1 93 00 00 00 00
  $%  REQ005:762 03 22 F1 95 00 00 00 00       $%  ANS005:76A 03 22 F1 95 00 00 00 00
  $%  REQ006:762 03 22 F1 98 00 00 00 00       $%  ANS006:76A 03 22 F1 98 00 00 00 00
  $%  REQ007:762 03 22 F1 99 00 00 00 00       $%  ANS007:76A 03 22 F1 99 00 00 00 00
  $%  REQ008:762 03 22 F1 9D 00 00 00 00       $%  ANS008:76A 03 22 F1 9D 00 00 00 00
  $%  REQ009:762 03 22 F1 A1 00 00 00 00       $%  ANS009:76A 03 22 F1 A1 00 00 00 00

  $%  000:零件号:                             $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本编号:                    $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:VIN（车辆识别码）:                  $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本编号:                    $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件版本号:                $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU软件版本号:                $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:维修车间码和/或测试仪序列号:        $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:编程日期:                           $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:ECU安装日期:                        $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:配置信息:                           $%    $%  ANS009.BYTE004  $%  Y=HEX(X1);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:762 03 22 3D A2 00 00 00 00       $  ANS000:76A 03 22 3D A2 00 00 00 00
  $  REQ001:762 03 22 3D A3 00 00 00 00       $  ANS001:76A 03 22 3D A3 00 00 00 00
  $  REQ002:762 03 22 3D A4 00 00 00 00       $  ANS002:76A 03 22 3D A4 00 00 00 00
  $  REQ003:762 03 22 3D A5 00 00 00 00       $  ANS003:76A 03 22 3D A5 00 00 00 00
  $  REQ004:762 03 22 3D A6 00 00 00 00       $  ANS004:76A 03 22 3D A6 00 00 00 00
  $  REQ005:762 03 22 3D A7 00 00 00 00       $  ANS005:76A 03 22 3D A7 00 00 00 00
  $  REQ006:762 03 22 3D A8 00 00 00 00       $  ANS006:76A 03 22 3D A8 00 00 00 00
  $  REQ007:762 03 22 3D A9 00 00 00 00       $  ANS007:76A 03 22 3D A9 00 00 00 00
  $  REQ008:762 03 22 3D AA 00 00 00 00       $  ANS008:76A 03 22 3D AA 00 00 00 00
  $  REQ009:762 03 22 3D AB 00 00 00 00       $  ANS009:76A 03 22 3D AB 00 00 00 00
  $  REQ010:762 03 22 3D AC 00 00 00 00       $  ANS010:76A 03 22 3D AC 00 00 00 00
  $  REQ011:762 03 22 3D AD 00 00 00 00       $  ANS011:76A 03 22 3D AD 00 00 00 00
  $  REQ012:762 03 22 40 02 00 00 00 00       $  ANS012:76A 03 22 40 02 00 00 00 00
  $  REQ013:762 03 22 40 03 00 00 00 00       $  ANS013:76A 03 22 40 03 00 00 00 00
  $  REQ014:762 03 22 40 04 00 00 00 00       $  ANS014:76A 03 22 40 04 00 00 00 00

  $  000.主驾通风等级Ⅰ占空比            $    $  %        $    $  ANS000.BYTE004  $  Y=X1;
  $  001.主驾通风等级Ⅱ占空比            $    $  %        $    $  ANS000.BYTE005  $  Y=X1;
  $  002.副驾通风等级Ⅰ占空比            $    $  %        $    $  ANS000.BYTE006  $  Y=X1;
  $  003.副驾通风等级Ⅱ占空比            $    $  %        $    $  ANS000.BYTE007  $  Y=X1;
  $  004.驾驶员加热器NTC电压值           $    $  V        $    $  ANS001.BYTE004  $  if((X1*256+X2)<=1023) Y=(X1*256+X2)*5/1023;else y=@0004;
  $  005.驾驶员加热器NTC温度转换值       $    $  degC     $    $  ANS002.BYTE004  $  if(X1<=140&&X1>=0) Y=X1*1-40;else Y=@0004;                
  $  006.乘客加热器NTC电压值             $    $  V        $    $  ANS003.BYTE004  $  if((X1*256+X2)<=1023) Y=(X1*256+X2)*5/1023;else y=@0004;
  $  007.乘客加热器NTC温度转换值         $    $  degC     $    $  ANS004.BYTE004  $  if(X1<=140&&X1>=0) Y=X1*1-40;else Y=@0004;                
  $  008.驾驶员加热输出状态              $    $           $    $  ANS005.BYTE004  $  if(X1==0) y=@041a;else if(X1==1) y=@041b;else y=@0004;
  $  009.乘客加热输出状态                $    $           $    $  ANS006.BYTE004  $  if(X1==0) y=@041a;else if(X1==1) y=@041b;else y=@0004;
  $  010.驾驶员通风输出状态              $    $           $    $  ANS007.BYTE004  $  if(X1==0) y=@00e7;else if(X1==1) y=@01e5;else if(X1==2) y=@01e6;else y=@0004;
  $  011.乘客通风输出状态                $    $           $    $  ANS008.BYTE004  $  if(X1==0) y=@00e7;else if(X1==1) y=@01e5;else if(X1==2) y=@01e6;else y=@0004;
  $  012.方向盘加热器NTC电压值           $    $  V        $    $  ANS009.BYTE004  $  if((X1*256+X2)<=1023) Y=(X1*256+X2)*5/1023;else y=@0004;
  $  013.方向盘加热器NTC温度转换值       $    $  degC     $    $  ANS010.BYTE004  $  if(X1<=140&&X1>=0) Y=X1*1-40;else Y=@0004;                
  $  014.方向盘加热输出状态              $    $           $    $  ANS011.BYTE004  $  if(X1==0) y=@041a;else if(X1==1) y=@041b;else y=@0004;
  $  015.方向盘加热开关状态              $    $           $    $  ANS012.BYTE004  $  if(X1==0) Y=@0005; else Y=@0016;
  $  016.系统电源电压值                  $    $  V        $    $  ANS013.BYTE004  $  if((X1*256+X2)<=1023) Y=(X1*256+X2)*665/33792+0.71;else y=@0004;
  $  017.前加热器电源电压值              $    $  V        $    $  ANS013.BYTE006  $  if((X1*256+X2)<=1023) Y=(X1*256+X2)*665/33792;else y=@0004;
  $  018.驾驶员加热器电流值              $    $  A        $    $  ANS014.BYTE004  $  if((X1*256+X2)<=1023) Y=(X1*256+X2)*2125/122880;else y=@0004;
  $  019.乘客加热器电流值                $    $  A        $    $  ANS014.BYTE006  $  if((X1*256+X2)<=1023) Y=(X1*256+X2)*2125/122880;else y=@0004;
  $  020.方向盘加热器电流值              $    $  A        $    $  ANS014.BYTE008  $  if((X1*256+X2)<=1023) Y=(X1*256+X2)*2125/122880;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:762 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
