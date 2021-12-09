
    车型ID：6b14

    模拟：协议模拟-->6b14

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:742 02 10 01 00 00 00 00 00       $~  ANS000:74A 02 10 01 00 00 00 00 00

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

  $%  000:零件号:                             $%    $%  ANS000.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  001:ECU软件版本编号:                    $%    $%  ANS001.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  002:VIN（车辆识别码）:                  $%    $%  ANS002.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17);
  $%  003:ECU硬件版本编号:                    $%    $%  ANS003.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15);
  $%  004:供应商ECU硬件版本号:                $%    $%  ANS004.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  005:供应商ECU软件版本号:                $%    $%  ANS005.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);
  $%  006:维修车间码和/或测试仪序列号:        $%    $%  ANS006.BYTE004  $%  Y=ASCII(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10);
  $%  007:编程日期:                           $%    $%  ANS007.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  008:ECU安装日期:                        $%    $%  ANS008.BYTE004  $%  Y=HEX(X1,X2,X3,X4);
  $%  009:配置信息:                           $%    $%  ANS009.BYTE004  $%  Y=HEX(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:742 03 22 4F 80 00 00 00 00       $  ANS000:74A 03 22 4F 80 00 00 00 00
  $  REQ001:742 03 22 4F 81 00 00 00 00       $  ANS001:74A 03 22 4F 81 00 00 00 00
  $  REQ002:742 03 22 4F 82 00 00 00 00       $  ANS002:74A 03 22 4F 82 00 00 00 00
  $  REQ003:742 03 22 4F 83 00 00 00 00       $  ANS003:74A 03 22 4F 83 00 00 00 00
  $  REQ004:742 03 22 4F 84 00 00 00 00       $  ANS004:74A 03 22 4F 84 00 00 00 00
  $  REQ005:742 03 22 4F 85 00 00 00 00       $  ANS005:74A 03 22 4F 85 00 00 00 00
  $  REQ006:742 03 22 4F 86 00 00 00 00       $  ANS006:74A 03 22 4F 86 00 00 00 00
  $  REQ007:742 03 22 4F 87 00 00 00 00       $  ANS007:74A 03 22 4F 87 00 00 00 00
  $  REQ008:742 03 22 4F 88 00 00 00 00       $  ANS008:74A 03 22 4F 88 00 00 00 00
  $  REQ009:742 03 22 4F 89 00 00 00 00       $  ANS009:74A 03 22 4F 89 00 00 00 00
  $  REQ010:742 03 22 4F 8A 00 00 00 00       $  ANS010:74A 03 22 4F 8A 00 00 00 00
  $  REQ011:742 03 22 4F 8B 00 00 00 00       $  ANS011:74A 03 22 4F 8B 00 00 00 00
  $  REQ012:742 03 22 4F 8C 00 00 00 00       $  ANS012:74A 03 22 4F 8C 00 00 00 00
  $  REQ013:742 03 22 4F 8D 00 00 00 00       $  ANS013:74A 03 22 4F 8D 00 00 00 00
  $  REQ014:742 03 22 4F 8E 00 00 00 00       $  ANS014:74A 03 22 4F 8E 00 00 00 00
  $  REQ015:742 03 22 4F 8F 00 00 00 00       $  ANS015:74A 03 22 4F 8F 00 00 00 00
  $  REQ016:742 03 22 4F 90 00 00 00 00       $  ANS016:74A 03 22 4F 90 00 00 00 00
  $  REQ017:742 03 22 4F 91 00 00 00 00       $  ANS017:74A 03 22 4F 91 00 00 00 00
  $  REQ018:742 03 22 4F 92 00 00 00 00       $  ANS018:74A 03 22 4F 92 00 00 00 00
  $  REQ019:742 03 22 4F 93 00 00 00 00       $  ANS019:74A 03 22 4F 93 00 00 00 00
  $  REQ020:742 03 22 4F 94 00 00 00 00       $  ANS020:74A 03 22 4F 94 00 00 00 00

  $  000.KL30供电电压                          $    $  V        $    $  ANS000.BYTE004  $  if(X1<=255) Y=X1*0.1;
  $  001.驾驶员加热开关计数器                  $    $           $    $  ANS001.BYTE004  $  Y=(X1&0xF);
  $  002.驾驶员加热指示灯驱动状态              $    $           $    $  ANS001.BYTE004  $  if(((X1>>4)&0x03)==0) y=@0014;else if(((X1>>4)&0x03)==1) y=@0420;else if(((X1>>4)&0x03)==2) y=@0421;else if(((X1>>4)&0x03)==3) y=@0422;
  $  003.副驾驶员加热开关计数器                $    $           $    $  ANS002.BYTE004  $  Y=(X1&0xF);
  $  004.副驾驶员加热指示灯驱动状态            $    $           $    $  ANS002.BYTE004  $  if(((X1>>4)&0x03)==0) y=@0014;else if(((X1>>4)&0x03)==1) y=@0420;else if(((X1>>4)&0x03)==2) y=@0421;else if(((X1>>4)&0x03)==3) y=@0422;
  $  005.驾驶员通风开关计数器                  $    $           $    $  ANS003.BYTE004  $  Y=(X1&0xF);
  $  006.驾驶员通风指示灯驱动状态              $    $           $    $  ANS003.BYTE004  $  if(((X1>>4)&0x03)==0) y=@0014;else if(((X1>>4)&0x03)==1) y=@0420;else if(((X1>>4)&0x03)==2) y=@0421;else if(((X1>>4)&0x03)==3) y=@0422;
  $  007.副驾驶员通风开关计数器                $    $           $    $  ANS004.BYTE004  $  Y=(X1&0xF);
  $  008.副驾驶员通风指示灯驱动状态            $    $           $    $  ANS004.BYTE004  $  if(((X1>>4)&0x03)==0) y=@0014;else if(((X1>>4)&0x03)==1) y=@0420;else if(((X1>>4)&0x03)==2) y=@0421;else if(((X1>>4)&0x03)==3) y=@0422;
  $  009.驾驶员侧升温开关计数器                $    $  Time     $    $  ANS005.BYTE004  $  Y=(X1&15)*1;
  $  010.驾驶员侧降温开关计数器                $    $  Time     $    $  ANS005.BYTE004  $  Y=(X1/0x10&15)*1;
  $  011.驾驶员侧温度设置反馈                  $    $  degC     $    $  ANS006.BYTE004  $  if(X1<=253) Y=X1*0.1+15; else if(X1==254) Y=@041f; else Y=@02b8;
  $  012.副驾驶员侧升温开关计数器              $    $           $    $  ANS007.BYTE004  $  Y=(X1&15)*1;
  $  013.副驾驶员侧降温开关计数器              $    $           $    $  ANS007.BYTE004  $  Y=(X1/0x10&15)*1;
  $  014.副驾驶员温度设置反馈                  $    $  degC     $    $  ANS008.BYTE004  $  if(X1<=253) Y=X1*0.1+15; else if(X1==254) Y=@041f; else Y=@02b8;
  $  015.前风窗除雾开关计数器                  $    $           $    $  ANS009.BYTE004  $  Y=(X1&0xf)*1;
  $  016.前风窗除雾指示灯状态                  $    $           $    $  ANS009.BYTE004  $  if(((X1>>4)&1)) Y=@0425;else Y=@02b1;
  $  017.后风窗除雾开关计数器                  $    $           $    $  ANS010.BYTE004  $  Y=(X1&0xf)*1;
  $  018.后风窗除雾指示灯状态                  $    $           $    $  ANS010.BYTE004  $  if(((X1>>4)&1)) Y=@0425;else Y=@02b1;
  $  019.空调AUTO开关计数器                    $    $           $    $  ANS011.BYTE004  $  Y=(X1&0xf)*1;
  $  020.空调AUTO指示灯状态                    $    $           $    $  ANS011.BYTE004  $  if(((X1>>4)&1)) Y=@0425;else Y=@02b1;
  $  021.空调气候开关计数器                    $    $           $    $  ANS012.BYTE004  $  Y=(X1&15)*1;
  $  022.空调关闭开关计数器                    $    $           $    $  ANS013.BYTE004  $  Y=(X1&15)*1;
  $  023.空调内部/外部循环变化开关计数器       $    $           $    $  ANS014.BYTE004  $  Y=(X1&0xf)*1;
  $  024.空调内部/外部循环变化指示灯           $    $           $    $  ANS014.BYTE004  $  if(((X1>>4)&1)) Y=@0425;else Y=@02b1;
  $  025.空调PM2.5开关计数器                   $    $           $    $  ANS015.BYTE004  $  Y=(X1&0xf)*1;
  $  026.空调PM2.5指示灯                       $    $           $    $  ANS015.BYTE004  $  if(((X1>>4)&1)) Y=@0425;else Y=@02b1;
  $  027.离子开关计数器                        $    $           $    $  ANS016.BYTE004  $  Y=(X1&0xf)*1;
  $  028.离子指示灯                            $    $           $    $  ANS016.BYTE004  $  if(((X1/0x10)&0x03)==0) y=@02b1;else if(((X1/0x10)&0x03)==1) y=@0423;else if(((X1/0x10)&0x03)==2) y=@0424;else y=@0004;
  $  029.空调风量控制信号                      $    $           $    $  ANS017.BYTE004  $  if(X1<=62) Y=X1-31;else Y=@0004;
  $  030.AC(空调系统)风量等级反馈              $    $           $    $  ANS018.BYTE004  $  if(X1==0) y=@0426;else if(X1==1) y=@0299;else if(X1==2) y=@029a;else if(X1==3) y=@029b;else if(X1==4) y=@029c;else if(X1==5) y=@02ae;else if(X1==6) y=@02af;else if(X1==7) y=@02b0;else y=@0004;
  $  031.ACP_F亮度                             $    $           $    $  ANS019.BYTE004  $  if(X1==0) y=@0190;else if(X1==1) y=@0191;else y=@0004;
  $  032.自动泊车开关                          $    $           $    $  ANS020.BYTE004  $  if(((X1>>0)&1)) Y=@00cc;else Y=@00ab;
  $  033.雷达环视开关                          $    $           $    $  ANS020.BYTE004  $  if(((X1>>1)&1)) Y=@00cc;else Y=@00ab;
  $  034.怠速启停开关                          $    $           $    $  ANS020.BYTE004  $  if(((X1>>2)&1)) Y=@00cc;else Y=@00ab;
  $  035.车道偏离预警开关                      $    $           $    $  ANS020.BYTE004  $  if(((X1>>3)&1)) Y=@00cc;else Y=@00ab;
  $  036.盲区探测开关                          $    $           $    $  ANS020.BYTE004  $  if(((X1>>4)&1)) Y=@00cc;else Y=@00ab;
  $  037.交通标志识别开关                      $    $           $    $  ANS020.BYTE004  $  if(((X1>>5)&1)) Y=@00cc;else Y=@00ab;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:742 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
