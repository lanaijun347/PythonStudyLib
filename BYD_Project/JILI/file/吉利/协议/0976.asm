
    车型ID：0976

    模拟：协议模拟-->0976

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7EE

进入命令:

  $~  REQ000:7E6 02 10 01 00 00 00 00 00       $~  ANS000:7EE 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E6 02 3E 00 00 00 00 00 00       $!  ANS000:7EE 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E6 03 19 02 09 00 00 00 00       $#  ANS000:7EE 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/9b000000


  $#  01.读故障码库
  $#  REQ000:7E6 02 19 0A 00 00 00 00 00       $#  ANS000:7EE 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/9b000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7E6 04 14 FF FF FF 00 00 00       $$  ANS000:7EE 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E6 03 22 F1 12 00 00 00 00       $%  ANS000:7EE 03 22 F1 12 00 00 00 00
  $%  REQ001:7E6 03 22 F1 87 00 00 00 00       $%  ANS001:7EE 03 22 F1 87 00 00 00 00
  $%  REQ002:7E6 03 22 F1 89 00 00 00 00       $%  ANS002:7EE 03 22 F1 89 00 00 00 00
  $%  REQ003:7E6 03 22 F1 8A 00 00 00 00       $%  ANS003:7EE 03 22 F1 8A 00 00 00 00
  $%  REQ004:7E6 03 22 F1 8B 00 00 00 00       $%  ANS004:7EE 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E6 03 22 F1 8C 00 00 00 00       $%  ANS005:7EE 03 22 F1 8C 00 00 00 00
  $%  REQ006:7E6 03 22 F1 90 00 00 00 00       $%  ANS006:7EE 03 22 F1 90 00 00 00 00
  $%  REQ007:7E6 03 22 F1 93 00 00 00 00       $%  ANS007:7EE 03 22 F1 93 00 00 00 00
  $%  REQ008:7E6 03 22 F1 95 00 00 00 00       $%  ANS008:7EE 03 22 F1 95 00 00 00 00
  $%  REQ009:7E6 03 22 F1 9D 00 00 00 00       $%  ANS009:7EE 03 22 F1 9D 00 00 00 00
  $%  REQ010:7E6 03 22 F1 97 00 00 00 00       $%  ANS010:7EE 03 22 F1 97 00 00 00 00
  $%  REQ011:7E6 03 22 F1 98 00 00 00 00       $%  ANS011:7EE 03 22 F1 98 00 00 00 00
  $%  REQ012:7E6 03 22 F1 99 00 00 00 00       $%  ANS012:7EE 03 22 F1 99 00 00 00 00
  $%  REQ013:7E6 03 22 F1 82 00 00 00 00       $%  ANS013:7EE 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                      $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:Geely软件版本号:                             $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:                     $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  010:ECU(电子控制器)系统名称或发动机类型:         $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  011:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS011.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  012:ECU(电子控制器)刷写日期:                     $%    $%  ANS012.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  013:标定软件版本号:                              $%    $%  ANS013.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7E6 03 22 DF 01 00 00 00 00       $  ANS000:7EE 03 22 DF 01 00 00 00 00
  $  REQ001:7E6 03 22 4C 01 00 00 00 00       $  ANS001:7EE 03 22 4C 01 00 00 00 00
  $  REQ002:7E6 03 22 4C 02 00 00 00 00       $  ANS002:7EE 03 22 4C 02 00 00 00 00
  $  REQ003:7E6 03 22 4C 04 00 00 00 00       $  ANS003:7EE 03 22 4C 04 00 00 00 00
  $  REQ004:7E6 03 22 4C 06 00 00 00 00       $  ANS004:7EE 03 22 4C 06 00 00 00 00
  $  REQ005:7E6 03 22 4C 07 00 00 00 00       $  ANS005:7EE 03 22 4C 07 00 00 00 00
  $  REQ006:7E6 03 22 4C 08 00 00 00 00       $  ANS006:7EE 03 22 4C 08 00 00 00 00
  $  REQ007:7E6 03 22 4C 15 00 00 00 00       $  ANS007:7EE 03 22 4C 15 00 00 00 00
  $  REQ008:7E6 03 22 4C 34 00 00 00 00       $  ANS008:7EE 03 22 4C 34 00 00 00 00
  $  REQ009:7E6 03 22 4C 05 00 00 00 00       $  ANS009:7EE 03 22 4C 05 00 00 00 00
  $  REQ010:7E6 03 22 4C 09 00 00 00 00       $  ANS010:7EE 03 22 4C 09 00 00 00 00
  $  REQ011:7E6 03 22 4C 10 00 00 00 00       $  ANS011:7EE 03 22 4C 10 00 00 00 00
  $  REQ012:7E6 03 22 4C 11 00 00 00 00       $  ANS012:7EE 03 22 4C 11 00 00 00 00
  $  REQ013:7E6 03 22 4C 12 00 00 00 00       $  ANS013:7EE 03 22 4C 12 00 00 00 00
  $  REQ014:7E6 03 22 4C 13 00 00 00 00       $  ANS014:7EE 03 22 4C 13 00 00 00 00
  $  REQ015:7E6 03 22 4C 14 00 00 00 00       $  ANS015:7EE 03 22 4C 14 00 00 00 00
  $  REQ016:7E6 03 22 4C 16 00 00 00 00       $  ANS016:7EE 03 22 4C 16 00 00 00 00
  $  REQ017:7E6 03 22 4C 17 00 00 00 00       $  ANS017:7EE 03 22 4C 17 00 00 00 00
  $  REQ018:7E6 03 22 4C 18 00 00 00 00       $  ANS018:7EE 03 22 4C 18 00 00 00 00
  $  REQ019:7E6 03 22 4C 19 00 00 00 00       $  ANS019:7EE 03 22 4C 19 00 00 00 00
  $  REQ020:7E6 03 22 4C 20 00 00 00 00       $  ANS020:7EE 03 22 4C 20 00 00 00 00
  $  REQ021:7E6 03 22 4C 21 00 00 00 00       $  ANS021:7EE 03 22 4C 21 00 00 00 00
  $  REQ022:7E6 03 22 4C 22 00 00 00 00       $  ANS022:7EE 03 22 4C 22 00 00 00 00
  $  REQ023:7E6 03 22 4C 23 00 00 00 00       $  ANS023:7EE 03 22 4C 23 00 00 00 00
  $  REQ024:7E6 03 22 4C 24 00 00 00 00       $  ANS024:7EE 03 22 4C 24 00 00 00 00
  $  REQ025:7E6 03 22 4C 25 00 00 00 00       $  ANS025:7EE 03 22 4C 25 00 00 00 00
  $  REQ026:7E6 03 22 4C 27 00 00 00 00       $  ANS026:7EE 03 22 4C 27 00 00 00 00
  $  REQ027:7E6 03 22 4C 28 00 00 00 00       $  ANS027:7EE 03 22 4C 28 00 00 00 00
  $  REQ028:7E6 03 22 4C 29 00 00 00 00       $  ANS028:7EE 03 22 4C 29 00 00 00 00
  $  REQ029:7E6 03 22 4C 30 00 00 00 00       $  ANS029:7EE 03 22 4C 30 00 00 00 00
  $  REQ030:7E6 03 22 4C 31 00 00 00 00       $  ANS030:7EE 03 22 4C 31 00 00 00 00
  $  REQ031:7E6 03 22 4C 32 00 00 00 00       $  ANS031:7EE 03 22 4C 32 00 00 00 00
  $  REQ032:7E6 03 22 4C 33 00 00 00 00       $  ANS032:7EE 03 22 4C 33 00 00 00 00
  $  REQ033:7E6 03 22 4C 35 00 00 00 00       $  ANS033:7EE 03 22 4C 35 00 00 00 00
  $  REQ034:7E6 03 22 4C 36 00 00 00 00       $  ANS034:7EE 03 22 4C 36 00 00 00 00
  $  REQ035:7E6 03 22 4C 37 00 00 00 00       $  ANS035:7EE 03 22 4C 37 00 00 00 00
  $  REQ036:7E6 03 22 4C 38 00 00 00 00       $  ANS036:7EE 03 22 4C 38 00 00 00 00
  $  REQ037:7E6 03 22 4C 39 00 00 00 00       $  ANS037:7EE 03 22 4C 39 00 00 00 00
  $  REQ038:7E6 03 22 4C 40 00 00 00 00       $  ANS038:7EE 03 22 4C 40 00 00 00 00
  $  REQ039:7E6 03 22 4C 41 00 00 00 00       $  ANS039:7EE 03 22 4C 41 00 00 00 00
  $  REQ040:7E6 03 22 4C 42 00 00 00 00       $  ANS040:7EE 03 22 4C 42 00 00 00 00
  $  REQ041:7E6 03 22 4C 43 00 00 00 00       $  ANS041:7EE 03 22 4C 43 00 00 00 00
  $  REQ042:7E6 03 22 4C 44 00 00 00 00       $  ANS042:7EE 03 22 4C 44 00 00 00 00

  $  000.车速                                                             $    $  km/h     $    $  ANS000.BYTE004  $  if((x1*0x100+x2)<0x1fff)y=INT((x1*256+x2)*0.05625);else y=@0008;
  $  001.换挡过程中对电机端目标档位请求                                   $    $  /        $    $  ANS001.BYTE004  $  if(x1==0x0)y=@017b;else if(x1==0x1)y=@0209;else if(x1==0x2)y=@0119;else if(x1==0x3)y=@0209;else if(x1==0x4)y=@011b;else if(x1==0x5)y=@0209;else if(x1==0x6)y=@011d;else if(x1==0x7)y=@0209;else if(x1==0xA)y=@0ed4;else if(x1==0xB)y=@017c;else if(x1==0xF)y=@0ed6;else y=@0209;
  $  002.换挡过程中对发动机端目标档位请求                                 $    $  /        $    $  ANS002.BYTE004  $  if(x1==0x0)y=@017b;else if(x1==0x1)y=@0118;else if(x1==0x2)y=@0119;else if(x1==0x3)y=@011a;else if(x1==0x4)y=@011b;else if(x1==0x5)y=@011c;else if(x1==0x6)y=@011d;else if(x1==0x7)y=@02bd;else if(x1==0xA)y=@0ed4;else if(x1==0xB)y=@017c;else if(x1==0xF)y=@0ed6;else y=@0209;
  $  003.当前挡位状态                                                     $    $  /        $    $  ANS003.BYTE004  $  if(x1==0x0)y=@017b;if(x1==0xC)y=@017a;else if(x1==0xA)y=@0ed4;else if(x1==0xB)y=@0ed5;else if(x1==0xF)y=@0ed6;else y=@0209;
  $  004.车轮端扭矩                                                       $    $  Nm       $    $  ANS004.BYTE004  $  if((x1*0x100+x2)<0x2ee1)y=(x1*256+x2)-6000;else y=@0008;
  $  005.驾驶员需求扭矩                                                   $    $  Nm       $    $  ANS005.BYTE004  $  if((x1*0x100+x2)<0x2ee1)y=(x1*256+x2)-6000;else y=@0008;
  $  006.判断驾驶员通过油门踏板请求的扭矩                                 $    $  /        $    $  ANS006.BYTE004  $  if(x1==0x0)y=@0eb0;else if(x1==0x1)y=@0ed7;else y=@0209;
  $  007.当前油门踩压位置                                                 $    $  %        $    $  ANS007.BYTE004  $  if(x<0xfb)y=x*0.4;else y=@0008;
  $  008.VCU(整车控制器)净扭矩请求                                        $    $  Nm       $    $  ANS008.BYTE004  $  if((x1*0x100+x2)<0x2ee1)y=(x1*256+x2)-6000;else y=@0008;
  $  009.主动限速控制设置的速度值                                         $    $  /        $    $  ANS009.BYTE004  $  if(x==0xff)y=@0132;else y=x;
  $  010.ePT系统启动过程                                                  $    $  /        $    $  ANS010.BYTE004  $  switxh(x)0x0:y=@0eb2;0x1:y=@0eb3;
  $  011.定速巡航控制状态                                                 $    $  /        $    $  ANS011.BYTE004  $  switxh(x)0x0:y=@0eaa;0x1:y=@0eab;0x2:y=@0eac;0x3:y=@0ae1;0x4:y=@02fc;0x5:y=@0ead;0x6:y=@0eae;0x7:y=@0eaf;
  $  012.巡航开关状态                                                     $    $  /        $    $  ANS012.BYTE004  $  switxh(x)0x0:y=@0000;0x1:y=@0001;
  $  013.巡航控制设置的速度值                                             $    $  km/h     $    $  ANS013.BYTE004  $  if(x==0xff)y=@0132;else y=x;
  $  014.ePT最大可用制动能量回收扭矩                                      $    $  Nm       $    $  ANS014.BYTE004  $  if((x1*0x100+x2)<0xfa1)y=(x1*0x100+x2)-4000;else y=@0132;
  $  015.ePT系统实际回收扭矩                                              $    $  Nm       $    $  ANS015.BYTE004  $  if((x1*0x100+x2)<0xfa1)y=(x1*0x100+x2)-4000;else y=@0132;
  $  016.碰撞输出状态                                                     $    $  /        $    $  ANS016.BYTE004  $  switxh(x)0x0:y=@0209;0x1:y=@0e8b;0x2:y=@0e8c;0x3:y=@0e8d;0x4:y=@0e8e;0x5:y=@0209;0x6:y=@0209;0x7:y=@0209;
  $  017.ESC(电子稳定控制单元)信号提示EPS(电子助力转向系统)失败           $    $  /        $    $  ANS017.BYTE004  $  switxh(x)0x0:y=@0dfb;0x1:y=@01b4;
  $  018.ESC(电子稳定控制单元)信号提示ABS(防抱刹车系统)是否被激活         $    $  /        $    $  ANS018.BYTE004  $  switxh(x)0x0:y=@001d;0x1:y=@001c; 
  $  019.刹车踏板踩下提示                                                 $    $  /        $    $  ANS019.BYTE004  $  switxh(x)0x0:y=@0e85;0x1:y=@0e86; 
  $  020.ESC(电子稳定控制单元)信号提示EBD失败                             $    $  /        $    $  ANS020.BYTE004  $  switxh(x)0x0:y=@0e87;0x1:y=@0e88;
  $  021.ESC(电子稳定控制单元)信号提示ABS(防抱刹车系统)失败               $    $  /        $    $  ANS021.BYTE004  $  switxh(x)0x0:y=@0e9a;0x1:y=@0e9b;
  $  022.ESC(电子稳定控制单元)信号提示TCS(牵引力控制系统)是否被激活       $    $  /        $    $  ANS022.BYTE004  $  switxh(x)0x0:y=@0e9c;0x1:y=@0e9d;
  $  023.ESC(电子稳定控制单元)信号提示ESP(电控稳定系统)是否被激活         $    $  /        $    $  ANS023.BYTE004  $  switxh(x)0x0:y=@0e96;0x1:y=@0e97;
  $  024.TSC信号提示ESP(电控稳定系统)失败                                 $    $  /        $    $  ANS024.BYTE004  $  switxh(x)0x0:y=@0e98;0x1:y=@0e99;
  $  025.ESC(电子稳定控制单元)信号提示ESP(电控稳定系统)失败               $    $  /        $    $  ANS025.BYTE004  $  switxh(x)0x0:y=@0e92;0x1:y=@0e93;
  $  026.ESC(电子稳定控制单元)信号PATA请求被执行                          $    $  /        $    $  ANS026.BYTE004  $  switxh(x)0x0:y=@0e94;0x1:y=@0e95;
  $  027.AVH系统状态                                                      $    $  /        $    $  ANS027.BYTE004  $  switxh(x)0x0:y=@0000;0x1:y=@0e91;0x2:y=@053f;0x3:y=@00be;
  $  028.EPB(电子驻车制动系统)系统状态                                    $    $  /        $    $  ANS028.BYTE004  $  switxh(x)0x0:y=@0018;0x1:y=@0000;0x2:y=@051e;0x3:y=@0209;
  $  029.EPB(电子驻车制动系统)系统错误指示                                $    $  /        $    $  ANS029.BYTE004  $  switxh(x)0x0:y=@04a2;0x1:y=@00be;
  $  030.HHC功能是否失效                                                  $    $  /        $    $  ANS030.BYTE004  $  switxh(x)0x0:y=@04a2;0x1:y=@00be;
  $  031.CDD是否激活                                                      $    $  /        $    $  ANS031.BYTE004  $  switxh(x)0x0:y=@0ea1;0x1:y=@0ea2;
  $  032.激活的VLC是否可以控制目标加速度                                  $    $  /        $    $  ANS032.BYTE004  $  switxh(x)0x0:y=@001d;0x1:y=@001c; 
  $  033.VLC的VCU(整车控制器)净扭矩请求是否激活                           $    $  /        $    $  ANS033.BYTE004  $  switxh(x)0x0:y=@001d;0x1:y=@001c; 
  $  034.左前轮速信号                                                     $    $  km/h     $    $  ANS034.BYTE004  $  if((x1*0x100+x2)<0x1fff)y=INT((x1*0x100+x2)*0.05625);else y=@0132;
  $  035.左前轮轮速值有效状态位                                           $    $  /        $    $  ANS035.BYTE004  $  switxh(x)0x0:y=@0204;0x1:y=@0227;0x2:y=@0228;0x3:y=@0132;
  $  036.右前轮速信号                                                     $    $  km/h     $    $  ANS036.BYTE004  $  if((x1*0x100+x2)<0x1fff)y=INT((x1*0x100+x2)*0.05625);else y=@0132;
  $  037.右前轮轮速值有效状态位                                           $    $  /        $    $  ANS037.BYTE004  $  switxh(x)0x0:y=@0204;0x1:y=@0227;0x2:y=@0228;0x3:y=@0132;
  $  038.主缸压力                                                         $    $  bar      $    $  ANS038.BYTE004  $  if(x==0xff)y=@0132;else y=x;
  $  039.左后轮速信号                                                     $    $  km/h     $    $  ANS039.BYTE004  $  if((x1*0x100+x2)<0x1fff)y=INT((x1*0x100+x2)*0.05625);else y=@0132;
  $  040.左后轮轮速值有效状态位                                           $    $  /        $    $  ANS040.BYTE004  $  switxh(x)0x0:y=@0204;0x1:y=@0227;0x2:y=@0228;0x3:y=@0132;
  $  041.右后轮速信号                                                     $    $  km/h     $    $  ANS041.BYTE004  $  if((x1*0x100+x2)<0x1fff)y=INT((x1*0x100+x2)*0.05625);else y=@0132;
  $  042.右后轮轮速值有效状态位                                           $    $  /        $    $  ANS042.BYTE004  $  switxh(x)0x0:y=@0204;0x1:y=@0227;0x2:y=@0228;0x3:y=@0132;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E6 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
