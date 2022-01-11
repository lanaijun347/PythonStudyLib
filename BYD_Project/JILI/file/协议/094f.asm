
    车型ID：094f

    模拟：协议模拟-->094f

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7A9

进入命令:

  $~  REQ000:7A1 02 10 01 00 00 00 00 00       $~  ANS000:7A9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7A1 02 3E 00 00 00 00 00 00       $!  ANS000:7A9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7A1 03 19 02 09 00 00 00 00       $#  ANS000:7A9 03 19 02 09 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/29000000


  $#  01.读故障码库
  $#  REQ000:7A1 02 19 0A 00 00 00 00 00       $#  ANS000:7A9 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/29000000


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

  $$  REQ000:7A1 04 14 FF FF FF 00 00 00       $$  ANS000:7A9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7A1 03 22 F1 12 00 00 00 00       $%  ANS000:7A9 03 22 F1 12 00 00 00 00
  $%  REQ001:7A1 03 22 F1 80 00 00 00 00       $%  ANS001:7A9 03 22 F1 80 00 00 00 00
  $%  REQ002:7A1 03 22 F1 87 00 00 00 00       $%  ANS002:7A9 03 22 F1 87 00 00 00 00
  $%  REQ003:7A1 03 22 F1 8A 00 00 00 00       $%  ANS003:7A9 03 22 F1 8A 00 00 00 00
  $%  REQ004:7A1 03 22 F1 8B 00 00 00 00       $%  ANS004:7A9 03 22 F1 8B 00 00 00 00
  $%  REQ005:7A1 03 22 F1 8C 00 00 00 00       $%  ANS005:7A9 03 22 F1 8C 00 00 00 00
  $%  REQ006:7A1 03 22 F1 90 00 00 00 00       $%  ANS006:7A9 03 22 F1 90 00 00 00 00
  $%  REQ007:7A1 03 22 F1 93 00 00 00 00       $%  ANS007:7A9 03 22 F1 93 00 00 00 00
  $%  REQ008:7A1 03 22 F1 95 00 00 00 00       $%  ANS008:7A9 03 22 F1 95 00 00 00 00
  $%  REQ009:7A1 03 22 F1 98 00 00 00 00       $%  ANS009:7A9 03 22 F1 98 00 00 00 00
  $%  REQ010:7A1 03 22 F1 99 00 00 00 00       $%  ANS010:7A9 03 22 F1 99 00 00 00 00
  $%  REQ011:7A1 03 22 F1 9D 00 00 00 00       $%  ANS011:7A9 03 22 F1 9D 00 00 00 00
  $%  REQ012:7A1 03 22 F1 82 00 00 00 00       $%  ANS012:7A9 03 22 F1 82 00 00 00 00

  $%  000:车辆名称:                                    $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $%  001:引导程序软件识别号:                          $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  002:零件号:                                      $%    $%  ANS002.BYTE004  $%  0 ASCII
  $%  003:供应商代码:                                  $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  004:ECU(电子控制器)生产日期:                     $%    $%  ANS004.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  005:ECU(电子控制器)序列号:                       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  006:车辆识别号（VIN码）:                         $%    $%  ANS006.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  007:ECU(电子控制器)硬件版本号:                   $%    $%  ANS007.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  008:ECU(电子控制器)软件版本号:                   $%    $%  ANS008.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  009:ECU(电子控制器)刷写维修店代号或设备号:       $%    $%  ANS009.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  010:ECU(电子控制器)刷写日期:                     $%    $%  ANS010.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  011:ECU(电子控制器)安装日期:                     $%    $%  ANS011.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  012:标定软件版本号:                              $%    $%  ANS012.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);

;******************************************************************************************************************************************************

读数据流: 

  $)  00.读数据流
  $  00.读数据流
  $  REQ000:7A1 03 22 70 00 00 00 00 00       $  ANS000:7A9 03 22 70 00 00 00 00 00
  $  REQ001:7A1 03 22 70 01 00 00 00 00       $  ANS001:7A9 03 22 70 01 00 00 00 00
  $  REQ002:7A1 03 22 70 02 00 00 00 00       $  ANS002:7A9 03 22 70 02 00 00 00 00
  $  REQ003:7A1 03 22 70 04 00 00 00 00       $  ANS003:7A9 03 22 70 04 00 00 00 00

  $  000.转角传感器故障状态              $    $  /     $    $  ANS000.BYTE004  $  if(x==0x00) y=@0132; else if(x==0x01) y=@0169;else y=@0209;
  $  001.触摸屏输入故障状态              $    $  /     $    $  ANS001.BYTE004  $  if(x==0x00) y=@0132; else if(x==0x01) y=@0169;else y=@0209;
  $  002.全自动泊车开关状态              $    $  /     $    $  ANS002.BYTE004  $  if(x==0x00) y=@0d40; else if(x==0x01) y=@0d41;else y=@0209;
  $  003.AVM(全景影像模块)开关状态       $    $  /     $    $  ANS003.BYTE004  $  if(x==0x00) y=@0d40; else if(x==0x01) y=@0d41;else y=@0209;

  $)  01.全自动泊车故障状态
  $  01.全自动泊车故障状态
  $  REQ000:7A1 03 22 70 03 00 00 00 00       $  ANS000:7A9 03 22 70 03 00 00 00 00

  $  000.自动泊车_旗舰_电动助力转向系统_临时中止         $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@0d41; else y=@0d40;
  $  001.自动泊车_旗舰_电子稳定控制系统_临时中止         $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@0d41; else y=@0d40;
  $  002.自动泊车_旗舰_无级变速箱控制器_临时中止         $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@0d41; else y=@0d40;
  $  003.自动泊车_旗舰_电子驻车制动系统_临时中止         $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@0d41; else y=@0d40;
  $  004.自动泊车_旗舰_汽车发动机管理系统_临时中止       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@0d41; else y=@0d40;
  $  005.自动泊车_旗舰_电动助力转向系统_故障             $    $  /     $    $  ANS000.BYTE004  $  if(((x>>5)&1)) y=@0d41; else y=@0d40;
  $  006.自动泊车_旗舰_电子稳定控制系统_故障             $    $  /     $    $  ANS000.BYTE004  $  if(((x>>6)&1)) y=@0d41; else y=@0d40;
  $  007.自动泊车_旗舰_无级变速箱控制器_故障             $    $  /     $    $  ANS000.BYTE004  $  if(((x>>7)&1)) y=@0d41; else y=@0d40;
  $  008.自动泊车_旗舰_泊车辅助系统_临时中止             $    $  /     $    $  ANS000.BYTE005  $  if(((x>>0)&1)) y=@0d41; else y=@0d40;
  $  009.自动泊车_旗舰_全景影像监测系统_临时中止         $    $  /     $    $  ANS000.BYTE005  $  if(((x>>1)&1)) y=@0d41; else y=@0d40;
  $  010.自动泊车_旗舰_电子驻车制动系统_临时中止         $    $  /     $    $  ANS000.BYTE005  $  if(((x>>2)&1)) y=@0d41; else y=@0d40;
  $  011.自动泊车_旗舰_汽车发动机管理系统_临时中止       $    $  /     $    $  ANS000.BYTE005  $  if(((x>>3)&1)) y=@0d41; else y=@0d40;
  $  012.自动泊车_旗舰_自动泊车_内部错误_临时中止        $    $  /     $    $  ANS000.BYTE005  $  if(((x>>4)&1)) y=@0d41; else y=@0d40;
  $  013.自动泊车_旗舰_发动机_关闭                       $    $  /     $    $  ANS000.BYTE005  $  if(((x>>5)&1)) y=@0d41; else y=@0d40;
  $  014.自动泊车_旗舰_加速_油门_位置_无效               $    $  /     $    $  ANS000.BYTE005  $  if(((x>>6)&1)) y=@0d41; else y=@0d40;
  $  015.自动泊车_旗舰_转向角传感器未校正状态            $    $  /     $    $  ANS000.BYTE005  $  if(((x>>7)&1)) y=@0d41; else y=@0d40;
  $  016.自动泊车_旗舰_转向角_其他_信号_错误             $    $  /     $    $  ANS000.BYTE006  $  if(((x>>0)&1)) y=@0d41; else y=@0d40;
  $  017.自动泊车_旗舰_轮速_信号_无效                    $    $  /     $    $  ANS000.BYTE006  $  if(((x>>1)&1)) y=@0d41; else y=@0d40;
  $  018.自动泊车_旗舰_轮速_脉冲_算数_信号_无效          $    $  /     $    $  ANS000.BYTE006  $  if(((x>>2)&1)) y=@0d41; else y=@0d40;
  $  019.自动泊车_旗舰_车速_无效                         $    $  /     $    $  ANS000.BYTE006  $  if(((x>>3)&1)) y=@0d41; else y=@0d40;
  $  020.自动泊车_旗舰_防抱死刹车系统_激活               $    $  /     $    $  ANS000.BYTE006  $  if(((x>>4)&1)) y=@0d41; else y=@0d40;
  $  021.自动泊车_旗舰_牵引力控制系统_激活               $    $  /     $    $  ANS000.BYTE006  $  if(((x>>5)&1)) y=@0d41; else y=@0d40;
  $  022.自动泊车_旗舰_车身电子稳定系统_激活             $    $  /     $    $  ANS000.BYTE006  $  if(((x>>6)&1)) y=@0d41; else y=@0d40;
  $  023.自动泊车_旗舰_制动_油门_开关_无效               $    $  /     $    $  ANS000.BYTE006  $  if(((x>>7)&1)) y=@0d41; else y=@0d40;
  $  024.自动泊车_旗舰_偏航角速度_无效                   $    $  /     $    $  ANS000.BYTE007  $  if(((x>>0)&1)) y=@0d41; else y=@0d40;
  $  025.自动泊车_旗舰_纵向加速信号无效                  $    $  /     $    $  ANS000.BYTE007  $  if(((x>>1)&1)) y=@0d41; else y=@0d40;
  $  026.横向加速信号无效                                $    $  /     $    $  ANS000.BYTE007  $  if(((x>>2)&1)) y=@0d41; else y=@0d40;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7A1 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7A1 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
