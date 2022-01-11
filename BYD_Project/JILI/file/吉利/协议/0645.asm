
    车型ID：0645

    模拟：协议模拟-->0645

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~7C9

进入命令:

  $~  REQ000:7C1 02 10 01 00 00 00 00 00       $~  ANS000:7C9 02 10 01 00 00 00 00 00
  $~  REQ001:7C1 03 22 F1 8A 00 00 00 00       $~  ANS001:7C9 03 22 F1 8A 00 00 00 00

空闲命令:

  $!  REQ000:7C1 02 3E 00 00 00 00 00 00       $!  ANS000:7C9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7C1 03 19 02 09 00 00 00 00       $#  ANS000:7C9 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/c5000000


  $#  01.读故障码库
  $#  REQ000:7C1 02 19 0A 00 00 00 00 00       $#  ANS000:7C9 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/c5000000


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

  $$  REQ000:7C1 04 14 FF FF FF 00 00 00       $$  ANS000:7C9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7C1 03 22 F1 12 00 00 00 00       $%  ANS000:7C9 03 22 F1 12 00 00 00 00
  $%  REQ001:7C1 03 22 F1 87 00 00 00 00       $%  ANS001:7C9 03 22 F1 87 00 00 00 00
  $%  REQ002:7C1 03 22 F1 8A 00 00 00 00       $%  ANS002:7C9 03 22 F1 8A 00 00 00 00
  $%  REQ003:7C1 03 22 F1 90 00 00 00 00       $%  ANS003:7C9 03 22 F1 90 00 00 00 00
  $%  REQ004:7C1 03 22 F1 93 00 00 00 00       $%  ANS004:7C9 03 22 F1 93 00 00 00 00
  $%  REQ005:7C1 03 22 F1 95 00 00 00 00       $%  ANS005:7C9 03 22 F1 95 00 00 00 00
  $%  REQ006:7C1 03 22 F1 9D 00 00 00 00       $%  ANS006:7C9 03 22 F1 9D 00 00 00 00

  $%  000:车辆名称:                                  $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:零件号:                                    $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  002:供应商代号:                                $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  003:车辆识别号(VIN码):                         $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  004:系统供应商ECU(电子控制器)硬件版本号:       $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  005:系统供应商ECU(电子控制器)软件版本号:       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  006:ECU(电子控制器)安装日期:                   $%    $%  ANS006.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.动态数据流
  $  00.动态数据流
  $  REQ000:7C1 03 22 67 00 00 00 00 00       $  ANS000:7C9 03 22 67 00 00 00 00 00
  $  REQ001:7C1 03 22 67 09 00 00 00 00       $  ANS001:7C9 03 22 67 09 00 00 00 00
  $  REQ002:7C1 03 22 67 0A 00 00 00 00       $  ANS002:7C9 03 22 67 0A 00 00 00 00
  $  REQ003:7C1 03 22 DF 01 00 00 00 00       $  ANS003:7C9 03 22 DF 01 00 00 00 00
  $  REQ004:7C1 03 22 DF 00 00 00 00 00       $  ANS004:7C9 03 22 DF 00 00 00 00 00

  $  000.工作模式                         $    $  /        $    $  ANS000.BYTE004  $  if(x==0x01) y=@01c5;else if(x==0x02) y=@01c6;else if(x==0x03) y=@01c7;else if(x==0x04) y=@01c8;else if(x==0x05) y=@01c9;else if(x==0x0ff) y=@0000;else y=@00b8;
  $  001.车联网连接状态                   $    $  /        $    $  ANS001.BYTE004  $  if(x==0x00) y=@01c3;else if(x==0x01) y=@01c4;else y=@00b8;
  $  002.电源键状态                       $    $  /        $    $  ANS002.BYTE004  $  if(((x1>>0)&1)) y=@01b1;else y=@0018;
  $  003.导航键状态                       $    $  /        $    $  ANS002.BYTE004  $  if(((x1>>2)&1)) y=@01b1;else y=@0018;
  $  004.模式键状态                       $    $  /        $    $  ANS002.BYTE004  $  if(((x1>>3)&1)) y=@01b1;else y=@0018;
  $  005.静音键状态                       $    $  /        $    $  ANS002.BYTE004  $  if(((x1>>4)&1)) y=@01b1;else y=@0018;
  $  006.菜单键状态                       $    $  /        $    $  ANS002.BYTE004  $  if(((x1>>5)&1)) y=@01b1;else y=@0018;
  $  007.上一曲键状态                     $    $  /        $    $  ANS002.BYTE004  $  if(((x1>>6)&1)) y=@01b1;else y=@0018;
  $  008.下一曲键状态                     $    $  /        $    $  ANS002.BYTE004  $  if(((x1>>7)&1)) y=@01b1;else y=@0018;
  $  009.电话键状态                       $    $  /        $    $  ANS002.BYTE004  $  if(((x2>>0)&1)) y=@01b1;else y=@0018;
  $  010.音量加键(在方向盘上)状态         $    $  /        $    $  ANS002.BYTE004  $  if(((x2>>2)&1)) y=@01b1;else y=@0018;
  $  011.音量减键(在方向盘上)状态         $    $  /        $    $  ANS002.BYTE004  $  if(((x2>>3)&1)) y=@01b1;else y=@0018;
  $  012.电话键(在方向盘上)状态           $    $  /        $    $  ANS002.BYTE004  $  if(((x2>>4)&1)) y=@01b1;else y=@0018;
  $  013.模式键(在方向盘上)状态           $    $  /        $    $  ANS002.BYTE004  $  if(((x2>>5)&1)) y=@01b1;else y=@0018;
  $  014.向上搜索键(在方向盘上)状态       $    $  /        $    $  ANS002.BYTE004  $  if(((x2>>6)&1)) y=@01b1;else y=@0018;
  $  015.向下搜索键(在方向盘上)状态       $    $  /        $    $  ANS002.BYTE004  $  if(((x2>>7)&1)) y=@01b1;else y=@0018;
  $  016.车速                             $    $  km/h     $    $  ANS003.BYTE004  $  y=INT((x1*0x100+x2)*0.05625);
  $  017.控制器供电电压                   $    $  V        $    $  ANS004.BYTE004  $  y=x*0.1;

  $)  01.读ECU(电子控制器)功能配置
  $  01.读ECU(电子控制器)功能配置
  $  REQ000:7C1 03 22 F1 01 00 00 00 00       $  ANS000:7C9 03 22 F1 01 00 00 00 00

  $  000.车辆类型       $    $  /     $    $  ANS000.BYTE004  $  if(((x1>>5)&1)) y=@01ba;else y=@01b9;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7C1 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
