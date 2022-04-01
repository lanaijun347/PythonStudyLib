
    车型ID：734b

    模拟：协议模拟-->734b

;******************************************************************************************************************************************************

    通讯线: $~03$~08$~500k$~71D

进入命令:

  $~  REQ000:715 02 10 01 00 00 00 00 00       $~  ANS000:71D 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:715 02 3E 00 00 00 00 00 00       $!  ANS000:71D 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:715 03 19 02 09 00 00 00 00       $#  ANS000:71D 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/734b0000_2BYTE


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:715 04 14 FF FF FF 00 00 00       $$  ANS000:71D 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:715 03 22 F1 87 00 00 00 00       $%  ANS000:71D 03 22 F1 87 00 00 00 00
  $%  REQ001:715 03 22 F1 97 00 00 00 00       $%  ANS001:71D 03 22 F1 97 00 00 00 00
  $%  REQ002:715 03 22 F1 8A 00 00 00 00       $%  ANS002:71D 03 22 F1 8A 00 00 00 00
  $%  REQ003:715 03 22 F1 89 00 00 00 00       $%  ANS003:71D 03 22 F1 89 00 00 00 00
  $%  REQ004:715 03 22 F1 79 00 00 00 00       $%  ANS004:71D 03 22 F1 79 00 00 00 00
  $%  REQ005:715 03 22 F1 7F 00 00 00 00       $%  ANS005:71D 03 22 F1 7F 00 00 00 00
  $%  REQ006:715 03 22 F1 99 00 00 00 00       $%  ANS006:71D 03 22 F1 99 00 00 00 00
  $%  REQ007:715 03 22 F1 8C 00 00 00 00       $%  ANS007:71D 03 22 F1 8C 00 00 00 00
  $%  REQ008:715 03 22 F1 93 00 00 00 00       $%  ANS008:71D 03 22 F1 93 00 00 00 00
  $%  REQ009:715 03 22 F1 95 00 00 00 00       $%  ANS009:71D 03 22 F1 95 00 00 00 00
  $%  REQ010:715 03 22 F1 A1 00 00 00 00       $%  ANS010:71D 03 22 F1 A1 00 00 00 00

  $%  000:零件号:                $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14);
  $%  001:系统名称:              $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3);
  $%  002:供应商代码:            $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  003:软件版本(OEM):         $%    $%  ANS003.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4)&0x0F,(x1&0x0F),x2);
  $%  004:硬件版本(OEM):         $%    $%  ANS004.BYTE004  $%  y=SPRINTF([V%X.%X.%02X],(x1>>4)&0x0F,(x1&0x0F),x2);
  $%  005:软件校验码:            $%    $%  ANS005.BYTE004  $%  HEX(x1,x2);
  $%  006:软件发布日期:          $%    $%  ANS006.BYTE004  $%  if((x1==0xff&&x2==0xff&&x3==0xff&&x4==0xff)||(x1==0&&x2==0&&x3==0&&x4==0))y=@0425;else y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  007:ECU生产序列号:         $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12);
  $%  008:硬件版本号(SYS):       $%    $%  ANS008.BYTE004  $%  HEX(x1,x2);
  $%  009:软件版本号(SYS):       $%    $%  ANS009.BYTE004  $%  HEX(x1,x2);
  $%  010:维修店编码:            $%    $%  ANS010.BYTE004  $%  ASCII(x1,x2,x3,x4,x5);
  $%  011:维修日期:              $%    $%  ANS010.BYTE009  $%  if((x1==0xff&&x2==0xff&&x3==0xff&&x4==0xff)||(x1==0&&x2==0&&x3==0&&x4==0))y=@0425;else y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:维修时的里程:          $%    $%  ANS010.BYTE013  $%  y=x1*65536+x2*256+x3;

;******************************************************************************************************************************************************

读数据流: 

  $)  00.方向盘左快拨键
  $  00.方向盘左快拨键
  $  REQ000:715 03 22 FD 01 00 00 00 00       $  ANS000:71D 03 22 FD 01 00 00 00 00

  $  000.CRUISE巡航按键                    $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@00e8;else y=@00e9;
  $  001.CRUISE(巡航关闭)按键              $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@00e8;else y=@00e9;
  $  002.CANCEL(取消)按键                  $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@00e8;else y=@00e9;
  $  003.RES+按键                          $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@00e8;else y=@00e9;
  $  004.RES-按键                          $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@00e8;else y=@00e9;
  $  005.语音识别按键                      $    $       $    $  ANS000.BYTE004  $  if(((x>>5)&1))y=@00e8;else y=@00e9;
  $  006.MUTE按键                          $    $       $    $  ANS000.BYTE004  $  if(((x>>6)&1))y=@00e8;else y=@00e9;
  $  007.ACC(自适应巡航)开关按键           $    $       $    $  ANS000.BYTE004  $  if(((x>>7)&1))y=@00e8;else y=@00e9;
  $  008.ACC(自适应巡航)取消按键           $    $       $    $  ANS000.BYTE005  $  if(((x>>0)&1))y=@00e8;else y=@00e9;
  $  009.ACC(自适应巡航)距离减少按键       $    $       $    $  ANS000.BYTE005  $  if(((x>>1)&1))y=@00e8;else y=@00e9;
  $  010.ACC(自适应巡航)距离增加按键       $    $       $    $  ANS000.BYTE005  $  if(((x>>2)&1))y=@00e8;else y=@00e9;

  $)  01.方向盘右快拨键
  $  01.方向盘右快拨键
  $  REQ000:715 03 22 FD 02 00 00 00 00       $  ANS000:71D 03 22 FD 02 00 00 00 00

  $  000.音源选择按键             $    $       $    $  ANS000.BYTE004  $  if(((x>>0)&1))y=@00e8;else y=@00e9;
  $  001.音量+ 按键               $    $       $    $  ANS000.BYTE004  $  if(((x>>1)&1))y=@00e8;else y=@00e9;
  $  002.音量- 按键               $    $       $    $  ANS000.BYTE004  $  if(((x>>2)&1))y=@00e8;else y=@00e9;
  $  003.SEEK+/蓝牙接听按键       $    $       $    $  ANS000.BYTE004  $  if(((x>>3)&1))y=@00e8;else y=@00e9;
  $  004.SEEK-/蓝牙挂断按键       $    $       $    $  ANS000.BYTE004  $  if(((x>>4)&1))y=@00e8;else y=@00e9;
  $  005.OK按键                   $    $       $    $  ANS000.BYTE004  $  if(((x>>5)&1))y=@00e8;else y=@00e9;
  $  006.翻页按键                 $    $       $    $  ANS000.BYTE004  $  if(((x>>6)&1))y=@00e8;else y=@00e9;
  $  007.仪表上翻按键             $    $       $    $  ANS000.BYTE004  $  if(((x>>7)&1))y=@00e8;else y=@00e9;
  $  008.仪表下翻按键             $    $       $    $  ANS000.BYTE005  $  if(((x>>0)&1))y=@00e8;else y=@00e9;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:715 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
