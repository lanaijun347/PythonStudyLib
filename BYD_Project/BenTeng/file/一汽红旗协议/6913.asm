
    车型ID：6913

    模拟：协议模拟-->6913

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:742 02 10 01 00 00 00 00 00       $~  ANS000:74A 02 10 01 00 00 00 00 00
  $~  REQ001:742 03 22 4F 8D 00 00 00 00       $~  ANS001:74A 03 22 4F 8D 00 00 00 00

空闲命令:

  $!  REQ000:742 02 3E 00 00 00 00 00 00       $!  ANS000:74A 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:742 03 19 02 09 00 00 00 00       $#  ANS000:74A 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:742 04 14 FF FF FF 00 00 00       $$  ANS000:74A 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:742 03 22 F1 87 00 00 00 00       $%  ANS000:74A 03 22 F1 87 00 00 00 00
  $%  REQ001:742 03 22 F1 89 00 00 00 00       $%  ANS001:74A 03 22 F1 89 00 00 00 00
  $%  REQ002:742 03 22 F1 90 00 00 00 00       $%  ANS002:74A 03 22 F1 90 00 00 00 00
  $%  REQ003:742 03 22 F1 91 00 00 00 00       $%  ANS003:74A 03 22 F1 91 00 00 00 00
  $%  REQ004:742 03 22 F1 93 00 00 00 00       $%  ANS004:74A 03 22 F1 93 00 00 00 00
  $%  REQ005:742 03 22 F1 95 00 00 00 00       $%  ANS005:74A 03 22 F1 95 00 00 00 00
  $%  REQ006:742 03 22 F1 98 00 00 00 00       $%  ANS006:74A 03 22 F1 98 00 00 00 00
  $%  REQ007:742 03 22 F1 99 00 00 00 00       $%  ANS007:74A 03 22 F1 99 00 00 00 00
  $%  REQ008:742 03 22 F1 9D 00 00 00 00       $%  ANS008:74A 03 22 F1 9D 00 00 00 00
  $%  REQ009:742 03 22 F1 A1 00 00 00 00       $%  ANS009:74A 03 22 F1 A1 00 00 00 00

  $%  000:零件号:                     $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本号:              $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:VIN:                        $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本号:              $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件版本号:        $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU软件版本号:        $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:测试仪序列号:               $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:编程日期:                   $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:ECU安装日期:                $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:系统配置:                   $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:742 03 22 4F 80 00 00 00 00       $  ANS000:74A 03 22 4F 80 00 00 00 00
  $  REQ001:742 03 22 4F 86 00 00 00 00       $  ANS001:74A 03 22 4F 86 00 00 00 00
  $  REQ002:742 03 22 4F 8C 00 00 00 00       $  ANS002:74A 03 22 4F 8C 00 00 00 00
  $  REQ003:742 03 22 4F 8D 00 00 00 00       $  ANS003:74A 03 22 4F 8D 00 00 00 00
  $  REQ004:742 03 22 4F 91 00 00 00 00       $  ANS004:74A 03 22 4F 91 00 00 00 00
  $  REQ005:742 03 22 4F 92 00 00 00 00       $  ANS005:74A 03 22 4F 92 00 00 00 00
  $  REQ006:742 03 22 4F 93 00 00 00 00       $  ANS006:74A 03 22 4F 93 00 00 00 00
  $  REQ007:742 03 22 4F 81 00 00 00 00       $  ANS007:74A 03 22 4F 81 00 00 00 00
  $  REQ008:742 03 22 4F 85 00 00 00 00       $  ANS008:74A 03 22 4F 85 00 00 00 00
  $  REQ009:742 03 22 4F 89 00 00 00 00       $  ANS009:74A 03 22 4F 89 00 00 00 00
  $  REQ010:742 03 22 4F 8A 00 00 00 00       $  ANS010:74A 03 22 4F 8A 00 00 00 00
  $  REQ011:742 03 22 4F 8B 00 00 00 00       $  ANS011:74A 03 22 4F 8B 00 00 00 00
  $  REQ012:742 03 22 4F 8E 00 00 00 00       $  ANS012:74A 03 22 4F 8E 00 00 00 00
  $  REQ013:742 03 22 4F 8F 00 00 00 00       $  ANS013:74A 03 22 4F 8F 00 00 00 00
  $  REQ014:742 03 22 4F 95 00 00 00 00       $  ANS014:74A 03 22 4F 95 00 00 00 00
  $  REQ015:742 03 22 4F 96 00 00 00 00       $  ANS015:74A 03 22 4F 96 00 00 00 00
  $  REQ016:742 03 22 4F 97 00 00 00 00       $  ANS016:74A 03 22 4F 97 00 00 00 00
  $  REQ017:742 03 22 4F 98 00 00 00 00       $  ANS017:74A 03 22 4F 98 00 00 00 00
  $  REQ018:742 03 22 4F 99 00 00 00 00       $  ANS018:74A 03 22 4F 99 00 00 00 00

  $  000.KL30电供电电压                           $    $  V         $    $  ANS000.BYTE004  $  Y=(X1*1)/10;
  $  001.驾驶员侧温度设置反馈                     $    $  degC      $    $  ANS001.BYTE004  $  if(X1>=0&&X1<=253) Y=(X1+150)/10;else if(X1==254) Y=@0014;else if(X1==255) Y=@02b8;else y=@0004;
  $  002.空调气候按钮计数器                       $    $  count     $    $  ANS002.BYTE004  $  Y=X1;
  $  003.空调关按钮计数器                         $    $  count     $    $  ANS003.BYTE004  $  Y=X1;
  $  004.空调风量控制信号                         $    $            $    $  ANS004.BYTE004  $  if(X1<=63)Y=X1*1-31;else Y=@0004;
  $  005.AC(空调系统)风量等级反馈                 $    $            $    $  ANS005.BYTE004  $  if(X1==0) y=@02ad;else if(X1==1) y=@0299;else if(X1==2) y=@029a;else if(X1==3) y=@029b;else if(X1==4) y=@029c;else if(X1==5) y=@02ae;else if(X1==6) y=@02af;else if(X1==7) y=@02b0;else y=@0004;
  $  006.开关亮度模式                             $    $            $    $  ANS006.BYTE004  $  if(X1==0) y=@02ab;else if(X1==1) y=@02ac;else y=@0004;
  $  007.驾驶员加热控制CAN输出                    $    $            $    $  ANS007.BYTE004  $  if((X1&0x03)==0) Y=@0014; else if((X1&0x03)==1) Y=@0299; else if((X1&0x03)==2) Y=@029a; else if((X1&0x03)==3) Y=@029b;else y=@0004;
  $  008.驾驶员加热指示灯驱动状态                 $    $            $    $  ANS007.BYTE004  $  if(((X1>>2)&0x03)==0) Y=@02b1; else if(((X1>>2)&0x03)==1) Y=@02bc; else if(((X1>>2)&0x03)==2) Y=@02bd; else if(((X1>>2)&0x03)==3) Y=@02be; else y=@0004;
  $  009.升温开关                                 $    $            $    $  ANS008.BYTE004  $  Y=X1&0x0f;
  $  010.降温开关                                 $    $            $    $  ANS008.BYTE004  $  Y=(X1>>4)&0x0f;
  $  011.前风窗除雾开关计数器                     $    $            $    $  ANS009.BYTE004  $  Y=X1&0x0f;
  $  012.前风窗除雾指示灯状态                     $    $            $    $  ANS009.BYTE004  $  if((((X1>>4)&1))==0) Y=@02b1; else Y=@02bb;
  $  013.后风窗除雾开关计数器                     $    $            $    $  ANS010.BYTE004  $  Y=X1&0x0f;
  $  014.后风窗除雾指示灯状态                     $    $            $    $  ANS010.BYTE004  $  if((((X1>>4)&1))==0) Y=@02b1; else Y=@02bb;
  $  015.Auto开关计数器                           $    $            $    $  ANS011.BYTE004  $  Y=X1&0x0f;
  $  016.Auto指示灯状态                           $    $            $    $  ANS011.BYTE004  $  if((((X1>>4)&1))==0) Y=@02b1; else Y=@02bb;
  $  017.AC(空调系统)循环模式开关计数器           $    $            $    $  ANS012.BYTE004  $  Y=X1&0x0f;
  $  018.AC(空调系统)循环模式开关指示灯状态       $    $            $    $  ANS012.BYTE004  $  if((((X1>>4)&1))==0) Y=@02b1; else Y=@02bb;
  $  019.ACPM2.5开关计数器                        $    $            $    $  ANS013.BYTE004  $  Y=X1&0x0f;
  $  020.ACPM2.5指示灯状态                        $    $            $    $  ANS013.BYTE004  $  if(((X1>>4)&1)==0) Y=@02b1; else Y=@02bb;
  $  021.CO2 浓度高指示灯状态                     $    $            $    $  ANS014.BYTE004  $  if((X1&0x01)==0) Y=@02b1; else Y=@02bb;
  $  022.自然通风指示灯状态                       $    $            $    $  ANS014.BYTE004  $  if((X1&0x02)==0) Y=@02b1; else Y=@02bb;
  $  023.空气质量指示灯状态                       $    $            $    $  ANS014.BYTE004  $  if((X1&0x04)==0) Y=@02b1; else Y=@02bb;
  $  024.自动除雾指示灯状态                       $    $            $    $  ANS014.BYTE004  $  if((X1&0x08)==0) Y=@02b1; else Y=@02bb;
  $  025.吹脚开关计数器                           $    $            $    $  ANS015.BYTE004  $  Y=X1&0x0f;
  $  026.吹脚模式指示灯状态                       $    $            $    $  ANS015.BYTE004  $  if((X1&0x10)==0) Y=@02b1; else Y=@02bb;
  $  027.吹脚/除霜开关计数器                      $    $            $    $  ANS016.BYTE004  $  Y=X1&0x0f;
  $  028.吹脚/除霜指示灯状态                      $    $            $    $  ANS016.BYTE004  $  if((X1&0x10)==0) Y=@02b1; else Y=@02bb;
  $  029.吹脸开关计数器                           $    $            $    $  ANS017.BYTE004  $  Y=X1&0x0f;
  $  030.吹脸指示灯状态                           $    $            $    $  ANS017.BYTE004  $  if((X1&0x10)==0) Y=@02b1; else Y=@02bb;
  $  031.吹脸/吹脚开关计数器                      $    $            $    $  ANS018.BYTE004  $  Y=X1&0x0f;
  $  032.吹脸/吹脚指示灯状态                      $    $            $    $  ANS018.BYTE004  $  if((X1&0x10)==0) Y=@02b1; else Y=@02bb;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:742 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
