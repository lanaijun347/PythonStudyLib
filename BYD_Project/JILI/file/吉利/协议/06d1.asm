
    车型ID：06d1

    模拟：协议模拟-->06d1

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~79C

进入命令:

  $~  REQ000:794 02 10 01 00 00 00 00 00       $~  ANS000:79C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:794 02 3E 00 00 00 00 00 00       $!  ANS000:79C 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:794 03 19 02 09 00 00 00 00       $#  ANS000:79C 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/6e000000


  $#  01.读故障码库
  $#  REQ000:794 02 19 0A 00 00 00 00 00       $#  ANS000:79C 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/6e000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="0"/>
   </FUNCTION>
  <FUNCTION type="0" num="1">
     <param type="string" value="0"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:794 04 14 FF FF FF 00 00 00       $$  ANS000:79C 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:794 03 22 F1 12 00 00 00 00       $%  ANS000:79C 03 22 F1 12 00 00 00 00
  $%  REQ001:794 03 22 F1 87 00 00 00 00       $%  ANS001:79C 03 22 F1 87 00 00 00 00
  $%  REQ002:794 03 22 F1 89 00 00 00 00       $%  ANS002:79C 03 22 F1 89 00 00 00 00
  $%  REQ003:794 03 22 F1 8A 00 00 00 00       $%  ANS003:79C 03 22 F1 8A 00 00 00 00
  $%  REQ004:794 03 22 F1 8B 00 00 00 00       $%  ANS004:79C 03 22 F1 8B 00 00 00 00
  $%  REQ005:794 03 22 F1 8C 00 00 00 00       $%  ANS005:79C 03 22 F1 8C 00 00 00 00
  $%  REQ006:794 03 22 F1 90 00 00 00 00       $%  ANS006:79C 03 22 F1 90 00 00 00 00
  $%  REQ007:794 03 22 F1 93 00 00 00 00       $%  ANS007:79C 03 22 F1 93 00 00 00 00
  $%  REQ008:794 03 22 F1 95 00 00 00 00       $%  ANS008:79C 03 22 F1 95 00 00 00 00
  $%  REQ009:794 03 22 F1 9D 00 00 00 00       $%  ANS009:79C 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                        $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:Geely软件版本号:                 $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3);
  $%  003:供应商代码:                      $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  004:ECU(电子控制器)生产日期:         $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:           $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:             $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:       $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:       $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)安装日期:         $%    $%  ANS009.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读数据流
  $  00.读数据流
  $  REQ000:794 03 22 10 00 00 00 00 00       $  ANS000:79C 03 22 10 00 00 00 00 00
  $  REQ001:794 03 22 10 02 00 00 00 00       $  ANS001:79C 03 22 10 02 00 00 00 00
  $  REQ002:794 03 22 10 03 00 00 00 00       $  ANS002:79C 03 22 10 03 00 00 00 00
  $  REQ003:794 03 22 10 04 00 00 00 00       $  ANS003:79C 03 22 10 04 00 00 00 00
  $  REQ004:794 03 22 F1 01 00 00 00 00       $  ANS004:79C 03 22 F1 01 00 00 00 00

  $  000.电子换挡器档位位置            $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>0)&1)) y=@06c5; else if(((x1>>1)&1)) y=@06c6; else if(((x1>>2)&1)) y=@06c7; else if(((x1>>3)&1)) y=@06c8; else if(((x1>>4)&1)) y=@06c9; else if(((x1>>5)&1)) y=@06ca; else if(((x1>>6)&1)) y=@06cb; else if(x1*256+x2 == 0xffff) y=@06cc;
  $  001.P挡解锁按键状态               $    $  /     $    $  ANS001.BYTE004  $  switxh(x) 0x00:y=@01b2;0x01:y=@01b1;default:y=@0168;
  $  002.P挡按键状态                   $    $  /     $    $  ANS002.BYTE004  $  switxh(x) 0x00:y=@01b2;0x01:y=@01b1;default:y=@0168;
  $  003.换挡拨片状态                  $    $  /     $    $  ANS003.BYTE004  $  switxh(x) 0x00:y=@001d;0x01:y=@06c0;0x02:y=@06c1;0x03:y=@06c2;0x0FF:y=@0132;default:y=@0168;
  $  004.ECU(电子控制器)功能配置       $    $  /     $    $  ANS004.BYTE004  $  if(((x>>0)&1)) y=@06c3;else y=@06c4;

  $)  01.电子换挡器探测位置
  $  01.电子换挡器探测位置
  $  REQ000:794 03 22 10 00 00 00 00 00       $  ANS000:79C 03 22 10 00 00 00 00 00

  $  000.手动模式                $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@001c;else y=@001d;
  $  001.自动模式                $    $  /     $    $  ANS000.BYTE005  $  if(((x>>5)&1)) y=@001c;else y=@001d;
  $  002.双减档(Down-Down)       $    $  /     $    $  ANS000.BYTE005  $  if(((x>>0)&1)) y=@001c;else y=@001d;
  $  003.减档(Down)              $    $  /     $    $  ANS000.BYTE005  $  if(((x>>1)&1)) y=@001c;else y=@001d;
  $  004.中间                    $    $  /     $    $  ANS000.BYTE005  $  if(((x>>2)&1)) y=@001c;else y=@001d;
  $  005.加档(UP)                $    $  /     $    $  ANS000.BYTE005  $  if(((x>>3)&1)) y=@001c;else y=@001d;
  $  006.双加档(UP-UP)           $    $  /     $    $  ANS000.BYTE005  $  if(((x>>4)&1)) y=@001c;else y=@001d;
  $  007.减档(M-)                $    $  /     $    $  ANS000.BYTE005  $  if(((x>>6)&1)) y=@001c;else y=@001d;
  $  008.加档(M+)                $    $  /     $    $  ANS000.BYTE005  $  if(((x>>7)&1)) y=@001c;else y=@001d;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:794 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
