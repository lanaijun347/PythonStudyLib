
    车型ID：6930

    模拟：协议模拟-->6930

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:773 02 10 01 00 00 00 00 00       $~  ANS000:77B 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:773 02 3E 00 00 00 00 00 00       $!  ANS000:77B 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:773 03 19 02 09 00 00 00 00       $#  ANS000:77B 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:773 04 14 FF FF FF 00 00 00       $$  ANS000:77B 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:773 03 22 F1 87 00 00 00 00       $%  ANS000:77B 03 22 F1 87 00 00 00 00
  $%  REQ001:773 03 22 F1 89 00 00 00 00       $%  ANS001:77B 03 22 F1 89 00 00 00 00
  $%  REQ002:773 03 22 F1 90 00 00 00 00       $%  ANS002:77B 03 22 F1 90 00 00 00 00
  $%  REQ003:773 03 22 F1 91 00 00 00 00       $%  ANS003:77B 03 22 F1 91 00 00 00 00
  $%  REQ004:773 03 22 F1 92 00 00 00 00       $%  ANS004:77B 03 22 F1 92 00 00 00 00
  $%  REQ005:773 03 22 F1 93 00 00 00 00       $%  ANS005:77B 03 22 F1 93 00 00 00 00
  $%  REQ006:773 03 22 F1 94 00 00 00 00       $%  ANS006:77B 03 22 F1 94 00 00 00 00
  $%  REQ007:773 03 22 F1 95 00 00 00 00       $%  ANS007:77B 03 22 F1 95 00 00 00 00
  $%  REQ008:773 03 22 F1 98 00 00 00 00       $%  ANS008:77B 03 22 F1 98 00 00 00 00
  $%  REQ009:773 03 22 F1 99 00 00 00 00       $%  ANS009:77B 03 22 F1 99 00 00 00 00
  $%  REQ010:773 03 22 F1 9D 00 00 00 00       $%  ANS010:77B 03 22 F1 9D 00 00 00 00
  $%  REQ011:773 03 22 F1 A1 00 00 00 00       $%  ANS011:77B 03 22 F1 A1 00 00 00 00
  $%  REQ012:773 03 22 F1 A2 00 00 00 00       $%  ANS012:77B 03 22 F1 A2 00 00 00 00
  $%  REQ013:773 03 22 F1 AA 00 00 00 00       $%  ANS013:77B 03 22 F1 AA 00 00 00 00
  $%  REQ014:773 03 22 F1 A9 00 00 00 00       $%  ANS014:77B 03 22 F1 A9 00 00 00 00
  $%  REQ015:773 03 22 F1 AC 00 00 00 00       $%  ANS015:77B 03 22 F1 AC 00 00 00 00
  $%  REQ016:773 03 22 60 C0 00 00 00 00       $%  ANS016:77B 03 22 60 C0 00 00 00 00
  $%  REQ017:773 03 22 60 C1 00 00 00 00       $%  ANS017:77B 03 22 60 C1 00 00 00 00
  $%  REQ018:773 03 22 60 C2 00 00 00 00       $%  ANS018:77B 03 22 60 C2 00 00 00 00
  $%  REQ019:773 03 22 60 C3 00 00 00 00       $%  ANS019:77B 03 22 60 C3 00 00 00 00
  $%  REQ020:773 03 22 60 C4 00 00 00 00       $%  ANS020:77B 03 22 60 C4 00 00 00 00
  $%  REQ021:773 03 22 60 C5 00 00 00 00       $%  ANS021:77B 03 22 60 C5 00 00 00 00
  $%  REQ022:773 03 22 60 C6 00 00 00 00       $%  ANS022:77B 03 22 60 C6 00 00 00 00
  $%  REQ023:773 03 22 60 D0 00 00 00 00       $%  ANS023:77B 03 22 60 D0 00 00 00 00
  $%  REQ024:773 03 22 60 F0 00 00 00 00       $%  ANS024:77B 03 22 60 F0 00 00 00 00
  $%  REQ025:773 03 22 60 D1 00 00 00 00       $%  ANS025:77B 03 22 60 D1 00 00 00 00
  $%  REQ026:773 03 22 60 F1 00 00 00 00       $%  ANS026:77B 03 22 60 F1 00 00 00 00
  $%  REQ027:773 03 22 60 FF 00 00 00 00       $%  ANS027:77B 03 22 60 FF 00 00 00 00
  $%  REQ028:773 03 22 60 D2 00 00 00 00       $%  ANS028:77B 03 22 60 D2 00 00 00 00

  $%  000:零件号:                     $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本号:              $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:VIN:                        $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本号:              $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件号:            $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU硬件版本号:        $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:供应商ECU软件号:            $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  007:供应商ECU软件版本号:        $%    $%  ANS007.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  008:测试仪序列号:               $%    $%  ANS008.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  009:编程日期:                   $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  010:ECU安装日期:                $%    $%  ANS010.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  011:系统配置:                   $%    $%  ANS011.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  012:远程诊断指令配置:           $%    $%  ANS012.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  013:电池编码1:                  $%    $%  ANS013.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  014:根秘钥:                     $%    $%  ANS014.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  015:电池编码2:                  $%    $%  ANS015.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30);
  $%  016:终端ID:                     $%    $%  ANS016.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7);
  $%  017:终端型号:                   $%    $%  ANS017.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20);
  $%  018:制造商ID:                   $%    $%  ANS018.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5);
  $%  019:车辆颜色:                   $%    $%  ANS019.BYTE004  $%  Y=HEX(X1);
  $%  020:车牌号:                     $%    $%  ANS020.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8);
  $%  021:省城ID:                     $%    $%  ANS021.BYTE004  $%  Y=HEX(X1,X2);
  $%  022:县城ID:                     $%    $%  ANS022.BYTE004  $%  Y=HEX(X1,X2);
  $%  023:企业后台IP:                 $%    $%  ANS023.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  024:国家后台IP:                 $%    $%  ANS024.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  025:企业后台端口:               $%    $%  ANS025.BYTE004  $%  Y=HEX(X1,X2);
  $%  026:国家后台端口:               $%    $%  ANS026.BYTE004  $%  Y=HEX(X1,X2);
  $%  027:企业后台域名:               $%    $%  ANS027.BYTE004  $%  0 ASCII
  $%  028:SIM卡号:                    $%    $%  ANS028.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:773 03 22 60 D3 00 00 00 00       $  ANS000:77B 03 22 60 D3 00 00 00 00
  $  REQ001:773 03 22 60 D4 00 00 00 00       $  ANS001:77B 03 22 60 D4 00 00 00 00
  $  REQ002:773 03 22 60 D5 00 00 00 00       $  ANS002:77B 03 22 60 D5 00 00 00 00
  $  REQ003:773 03 22 60 D6 00 00 00 00       $  ANS003:77B 03 22 60 D6 00 00 00 00
  $  REQ004:773 03 22 60 D7 00 00 00 00       $  ANS004:77B 03 22 60 D7 00 00 00 00
  $  REQ005:773 03 22 60 D8 00 00 00 00       $  ANS005:77B 03 22 60 D8 00 00 00 00
  $  REQ006:773 03 22 60 D9 00 00 00 00       $  ANS006:77B 03 22 60 D9 00 00 00 00
  $  REQ007:773 03 22 60 DA 00 00 00 00       $  ANS007:77B 03 22 60 DA 00 00 00 00
  $  REQ008:773 03 22 60 DB 00 00 00 00       $  ANS008:77B 03 22 60 DB 00 00 00 00
  $  REQ009:773 03 22 60 DC 00 00 00 00       $  ANS009:77B 03 22 60 DC 00 00 00 00
  $  REQ010:773 03 22 60 DD 00 00 00 00       $  ANS010:77B 03 22 60 DD 00 00 00 00
  $  REQ011:773 03 22 60 DE 00 00 00 00       $  ANS011:77B 03 22 60 DE 00 00 00 00
  $  REQ012:773 03 22 60 DF 00 00 00 00       $  ANS012:77B 03 22 60 DF 00 00 00 00
  $  REQ013:773 03 22 60 E0 00 00 00 00       $  ANS013:77B 03 22 60 E0 00 00 00 00
  $  REQ014:773 03 22 60 E1 00 00 00 00       $  ANS014:77B 03 22 60 E1 00 00 00 00
  $  REQ015:773 03 22 60 E2 00 00 00 00       $  ANS015:77B 03 22 60 E2 00 00 00 00
  $  REQ016:773 03 22 60 E3 00 00 00 00       $  ANS016:77B 03 22 60 E3 00 00 00 00
  $  REQ017:773 03 22 60 E4 00 00 00 00       $  ANS017:77B 03 22 60 E4 00 00 00 00

  $  000.存储器状态                 $    $        $    $  ANS000.BYTE004  $  if(X1==0) y=@01fb;else if(X1==1) y=@01fc;else if(X1==2) y=@01fd;else if(X1==3) y=@01fe;else y=@0004;
  $  001.T盒激活与否                $    $        $    $  ANS001.BYTE004  $  if(X1==0) y=@0005;else if(X1==1) y=@01fa;else y=@0004;
  $  002.KL30电供电电压             $    $  V     $    $  ANS002.BYTE004  $  if(X1<=254)Y=(X1*7)/100;else Y=@0004;
  $  003.外部供电电压               $    $  V     $    $  ANS003.BYTE004  $  if(X1<=254)Y=(X1*7)/100;else Y=@0004;
  $  004.定位状态                   $    $        $    $  ANS004.BYTE004  $  if(X1==0) y=@01b3;else if(X1==1) y=@01b4;else y=@0004;
  $  005.定位模块状态               $    $        $    $  ANS005.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0071;else if(X1==255) y=@0004;else y=@0004;
  $  006.定位系统天线故障状态       $    $        $    $  ANS006.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@01d2;else if(X1==2) y=@01f8;else if(X1==255) y=@0004;else y=@0004;
  $  007.碰撞信号状态               $    $        $    $  ANS007.BYTE004  $  if(X1==0) y=@01d0;else if(X1==1) y=@01d1;else if(X1==2) y=@01d2;else if(X1==3) y=@01f8;else y=@0004;
  $  008.紧急呼叫按钮状态           $    $        $    $  ANS008.BYTE004  $  if(X1==0) y=@01f7;else if(X1==1) y=@00cc;else y=@0004;
  $  009.紧急呼叫指示灯状态         $    $        $    $  ANS009.BYTE004  $  if(X1==0) y=@0014;else if(X1==1) y=@0094;else y=@0004;
  $  010.通讯模块故障状态           $    $        $    $  ANS010.BYTE004  $  if(X1==0) y=@003e;else if(X1==1) y=@0071;else y=@0004;
  $  011.通讯信号强度               $    $        $    $  ANS011.BYTE004  $  if(X1<=5)Y=X1*1;else Y=@0004;
  $  012.后台连接状态               $    $        $    $  ANS012.BYTE004  $  if(X1==0) y=@01f5;else if(X1==1) y=@01f6;else y=@0004;
  $  013.网络类型                   $    $        $    $  ANS013.BYTE004  $  if(X1==0) y=@01d4;else if(X1==1) y=@01d5;else if(X1==2) y=@01d6;else if(X1==3) y=@01d7;else if(X1==4) y=@01d8;else if(X1==7) y=@0004;else y=@0004;
  $  014.故障状态                   $    $        $    $  ANS014.BYTE004  $  if(X1==0) y=@0077;else if(X1==1) y=@00f5;else if(X1==2) y=@0071;else y=@0004;
  $  015.电话状态                   $    $        $    $  ANS015.BYTE004  $  if(X1==0) y=@0026;else if(X1==1) y=@0201;else if(X1==2) y=@0202;else if(X1==3) y=@0203;else if(X1==7) y=@0004;else y=@0004;
  $  016.紧急呼叫状态               $    $        $    $  ANS016.BYTE004  $  if(X1==0) y=@01ff;else if(X1==1) y=@0200;else y=@0004;
  $  017.充电模式                   $    $        $    $  ANS017.BYTE004  $  if(X1==1) y=@0204;else if(X1==2) y=@0205;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:773 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
