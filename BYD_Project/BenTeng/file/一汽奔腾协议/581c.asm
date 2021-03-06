
    车型ID：581c

    模拟：协议模拟-->581c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:698 02 10 01 00 00 00 00 00       $~  ANS000:699 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:698 02 3E 00 00 00 00 00 00       $!  ANS000:699 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:698 03 19 02 08 00 00 00 00       $#  ANS000:699 03 19 02 08 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/eb000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:698 04 14 FF FF FF 00 00 00       $$  ANS000:699 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:698 03 22 F1 87 00 00 00 00       $%  ANS000:699 03 22 F1 87 00 00 00 00
  $%  REQ001:698 03 22 F1 98 00 00 00 00       $%  ANS001:699 03 22 F1 98 00 00 00 00
  $%  REQ002:698 03 22 F1 99 00 00 00 00       $%  ANS002:699 03 22 F1 99 00 00 00 00
  $%  REQ003:698 03 22 F1 90 00 00 00 00       $%  ANS003:699 03 22 F1 90 00 00 00 00
  $%  REQ004:698 03 22 F1 89 00 00 00 00       $%  ANS004:699 03 22 F1 89 00 00 00 00
  $%  REQ005:698 03 22 F1 83 00 00 00 00       $%  ANS005:699 03 22 F1 83 00 00 00 00
  $%  REQ006:698 03 22 F1 8A 00 00 00 00       $%  ANS006:699 03 22 F1 8A 00 00 00 00
  $%  REQ007:698 03 22 F1 8B 00 00 00 00       $%  ANS007:699 03 22 F1 8B 00 00 00 00
  $%  REQ008:698 03 22 F1 91 00 00 00 00       $%  ANS008:699 03 22 F1 91 00 00 00 00
  $%  REQ009:698 03 22 F1 92 00 00 00 00       $%  ANS009:699 03 22 F1 92 00 00 00 00
  $%  REQ010:698 03 22 F1 94 00 00 00 00       $%  ANS010:699 03 22 F1 94 00 00 00 00
  $%  REQ011:698 03 22 F1 A2 00 00 00 00       $%  ANS011:699 03 22 F1 A2 00 00 00 00
  $%  REQ012:698 03 22 F1 00 00 00 00 00       $%  ANS012:699 03 22 F1 00 00 00 00 00
  $%  REQ013:698 03 22 F1 8C 00 00 00 00       $%  ANS013:699 03 22 F1 8C 00 00 00 00

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
  $%  011:ECU安装日期:                            $%    $%  ANS011.BYTE004  $%  y=SPRINTF([20%02X-%02X-%02X],X1,X2,X3);
  $%  012:车辆模式配置:                           $%    $%  ANS012.BYTE004  $%  if(X1==1) y=@0011;else if(X1==2) y=@03c5;else if(X1==3) y=@006a;else if(X1==0) y=@000d;else y=@0004;
  $%  013:ECU序列号:                              $%    $%  ANS013.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:698 03 22 0B 00 00 00 00 00       $  ANS000:699 03 22 0B 00 00 00 00 00
  $  REQ001:698 03 22 0B 01 00 00 00 00       $  ANS001:699 03 22 0B 01 00 00 00 00
  $  REQ002:698 03 22 0B 02 00 00 00 00       $  ANS002:699 03 22 0B 02 00 00 00 00
  $  REQ003:698 03 22 0B 03 00 00 00 00       $  ANS003:699 03 22 0B 03 00 00 00 00

  $  000.会话编号             $    $            $    $  ANS000.BYTE004  $  if(X1==1) y=@00c1;else if(X1==3) y=@00c2;else y=@0004;
  $  001.转向角度信息         $    $  deg       $    $  ANS001.BYTE004  $  Y=X1*0.1;
  $  002.转向角度信号         $    $            $    $  ANS001.BYTE005  $  if(((X1>>7)&1)) Y=@0122;else Y=@0121;
  $  003.转向角速度信息       $    $  deg/s     $    $  ANS002.BYTE004  $  Y=X1*4;
  $  004.转向角速度信号       $    $            $    $  ANS002.BYTE005  $  if(((X1>>7)&1)) Y=@0122;else Y=@0121;
  $  005.方向盘角度状态       $    $            $    $  ANS003.BYTE004  $  if(X1==0) y=@0e8e;else if(X1==1) y=@0579;else if(X1==2) y=@0e8f;else if(X1==3) y=@0e90;else y=@0004;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:698 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
