
    车型ID：6b20

    模拟：协议模拟-->6b20

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:760 02 10 01 00 00 00 00 00       $~  ANS000:768 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:760 02 3E 00 00 00 00 00 00       $!  ANS000:768 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:760 03 19 02 09 00 00 00 00       $#  ANS000:768 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:760 04 14 FF FF FF 00 00 00       $$  ANS000:768 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:760 03 22 F1 87 00 00 00 00       $%  ANS000:768 03 22 F1 87 00 00 00 00
  $%  REQ001:760 03 22 F1 89 00 00 00 00       $%  ANS001:768 03 22 F1 89 00 00 00 00
  $%  REQ002:760 03 22 F1 90 00 00 00 00       $%  ANS002:768 03 22 F1 90 00 00 00 00
  $%  REQ003:760 03 22 F1 91 00 00 00 00       $%  ANS003:768 03 22 F1 91 00 00 00 00
  $%  REQ004:760 03 22 F1 92 00 00 00 00       $%  ANS004:768 03 22 F1 92 00 00 00 00
  $%  REQ005:760 03 22 F1 93 00 00 00 00       $%  ANS005:768 03 22 F1 93 00 00 00 00
  $%  REQ006:760 03 22 F1 94 00 00 00 00       $%  ANS006:768 03 22 F1 94 00 00 00 00
  $%  REQ007:760 03 22 F1 95 00 00 00 00       $%  ANS007:768 03 22 F1 95 00 00 00 00
  $%  REQ008:760 03 22 F1 98 00 00 00 00       $%  ANS008:768 03 22 F1 98 00 00 00 00
  $%  REQ009:760 03 22 F1 9D 00 00 00 00       $%  ANS009:768 03 22 F1 9D 00 00 00 00
  $%  REQ010:760 03 22 F1 A1 00 00 00 00       $%  ANS010:768 03 22 F1 A1 00 00 00 00

  $%  000:零件号:                             $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本编号:                    $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:VIN（车辆识别码）:                  $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本编号:                    $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件编号:                  $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU硬件版本号:                $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:供应商ECU软件编号:                  $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  007:供应商ECU软件版本号:                $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  008:维修车间码和/或测试仪序列号:        $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  009:ECU安装日期:                        $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  010:配置信息:                           $%    $%  ANS010.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:760 03 22 01 10 00 00 00 00       $  ANS000:768 03 22 01 10 00 00 00 00
  $  REQ001:760 03 22 01 11 00 00 00 00       $  ANS001:768 03 22 01 11 00 00 00 00
  $  REQ002:760 03 22 01 12 00 00 00 00       $  ANS002:768 03 22 01 12 00 00 00 00
  $  REQ003:760 03 22 01 13 00 00 00 00       $  ANS003:768 03 22 01 13 00 00 00 00
  $  REQ004:760 03 22 01 14 00 00 00 00       $  ANS004:768 03 22 01 14 00 00 00 00
  $  REQ005:760 03 22 01 15 00 00 00 00       $  ANS005:768 03 22 01 15 00 00 00 00
  $  REQ006:760 03 22 01 16 00 00 00 00       $  ANS006:768 03 22 01 16 00 00 00 00
  $  REQ007:760 03 22 01 17 00 00 00 00       $  ANS007:768 03 22 01 17 00 00 00 00
  $  REQ008:760 03 22 01 18 00 00 00 00       $  ANS008:768 03 22 01 18 00 00 00 00
  $  REQ009:760 03 22 01 19 00 00 00 00       $  ANS009:768 03 22 01 19 00 00 00 00
  $  REQ010:760 03 22 01 1A 00 00 00 00       $  ANS010:768 03 22 01 1A 00 00 00 00
  $  REQ011:760 03 22 01 1B 00 00 00 00       $  ANS011:768 03 22 01 1B 00 00 00 00
  $  REQ012:760 03 22 01 1C 00 00 00 00       $  ANS012:768 03 22 01 1C 00 00 00 00
  $  REQ013:760 03 22 01 1D 00 00 00 00       $  ANS013:768 03 22 01 1D 00 00 00 00
  $  REQ014:760 03 22 01 1E 00 00 00 00       $  ANS014:768 03 22 01 1E 00 00 00 00
  $  REQ015:760 03 22 01 1F 00 00 00 00       $  ANS015:768 03 22 01 1F 00 00 00 00
  $  REQ016:760 03 22 01 20 00 00 00 00       $  ANS016:768 03 22 01 20 00 00 00 00
  $  REQ017:760 03 22 01 21 00 00 00 00       $  ANS017:768 03 22 01 21 00 00 00 00
  $  REQ018:760 03 22 01 22 00 00 00 00       $  ANS018:768 03 22 01 22 00 00 00 00
  $  REQ019:760 03 22 01 23 00 00 00 00       $  ANS019:768 03 22 01 23 00 00 00 00

  $  000.在记忆位置1的座椅前后位置       $    $  pulse     $    $  ANS000.BYTE004  $  if((X1*256+X2)<=65535) Y=(X1*256+X2)*1;else y=@0004;
  $  001.在记忆位置1的靠背前后位置       $    $  pulse     $    $  ANS001.BYTE004  $  if((X1*256+X2)<=65535) Y=(X1*256+X2)*1;else y=@0004;
  $  002.在记忆位置1的座垫上下位置       $    $  pulse     $    $  ANS002.BYTE004  $  if((X1*256+X2)<=65535) Y=(X1*256+X2)*1;else y=@0004;
  $  003.在记忆位置1的座椅上下位置       $    $  pulse     $    $  ANS003.BYTE004  $  if((X1*256+X2)<=65535) Y=(X1*256+X2)*1;else y=@0004;
  $  004.在记忆位置2的座椅前后位置       $    $  pulse     $    $  ANS004.BYTE004  $  if((X1*256+X2)<=65535) Y=(X1*256+X2)*1;else y=@0004;
  $  005.在记忆位置2的靠背前后位置       $    $  pulse     $    $  ANS005.BYTE004  $  if((X1*256+X2)<=65535) Y=(X1*256+X2)*1;else y=@0004;
  $  006.在记忆位置2的座垫上下位置       $    $  pulse     $    $  ANS006.BYTE004  $  if((X1*256+X2)<=65535) Y=(X1*256+X2)*1;else y=@0004;
  $  007.在记忆位置2的座椅上下位置       $    $  pulse     $    $  ANS007.BYTE004  $  if((X1*256+X2)<=65535) Y=(X1*256+X2)*1;else y=@0004;
  $  008.在记忆位置3的座椅前后位置       $    $  pulse     $    $  ANS008.BYTE004  $  if((X1*256+X2)<=65535) Y=(X1*256+X2)*1;else y=@0004;
  $  009.在记忆位置3的靠背前后位置       $    $  pulse     $    $  ANS009.BYTE004  $  if((X1*256+X2)<=65535) Y=(X1*256+X2)*1;else y=@0004;
  $  010.在记忆位置3的座垫上下位置       $    $  pulse     $    $  ANS010.BYTE004  $  if((X1*256+X2)<=65535) Y=(X1*256+X2)*1;else y=@0004;
  $  011.在记忆位置3的座椅上下位置       $    $  pulse     $    $  ANS011.BYTE004  $  if((X1*256+X2)<=65535) Y=(X1*256+X2)*1;else y=@0004;
  $  012.座椅向前开关状态                $    $            $    $  ANS012.BYTE004  $  if(X1==0) Y=@0029;else if(X1==1) Y=@00ac;else y=@0004;
  $  013.座椅向后开关状态                $    $            $    $  ANS013.BYTE004  $  if(X1==0) Y=@0029;else if(X1==1) Y=@00ac;else y=@0004;
  $  014.座椅向上开关状态                $    $            $    $  ANS014.BYTE004  $  if(X1==0) Y=@0029;else if(X1==1) Y=@00ac;else y=@0004;
  $  015.座椅向下开关状态                $    $            $    $  ANS015.BYTE004  $  if(X1==0) Y=@0029;else if(X1==1) Y=@00ac;else y=@0004;
  $  016.座椅靠背向前开关状态            $    $            $    $  ANS016.BYTE004  $  if(X1==0) Y=@0029;else if(X1==1) Y=@00ac;else y=@0004;
  $  017.座椅靠背向后开关状态            $    $            $    $  ANS017.BYTE004  $  if(X1==0) Y=@0029;else if(X1==1) Y=@00ac;else y=@0004;
  $  018.座垫向上开关状态                $    $            $    $  ANS018.BYTE004  $  if(X1==0) Y=@0029;else if(X1==1) Y=@00ac;else y=@0004;
  $  019.座垫向下开关状态                $    $            $    $  ANS019.BYTE004  $  if(X1==0) Y=@0029;else if(X1==1) Y=@00ac;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:760 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
