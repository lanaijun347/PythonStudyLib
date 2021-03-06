
    车型ID：095c

    模拟：协议模拟-->095c

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7E9

进入命令:

  $~  REQ000:7E1 02 10 01 00 00 00 00 00       $~  ANS000:7E9 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7E1 02 3E 00 00 00 00 00 00       $!  ANS000:7E9 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7E1 03 19 02 09 00 00 00 00       $#  ANS000:7E9 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b9000000


  $#  01.读故障码库
  $#  REQ000:7E1 02 19 0A 00 00 00 00 00       $#  ANS000:7E9 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/b9000000


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

  $$  REQ000:7E1 04 14 FF FF FF 00 00 00       $$  ANS000:7E9 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7E1 03 22 F1 12 00 00 00 00       $%  ANS000:7E9 03 22 F1 12 00 00 00 00
  $%  REQ001:7E1 03 22 F1 80 00 00 00 00       $%  ANS001:7E9 03 22 F1 80 00 00 00 00
  $%  REQ002:7E1 03 22 F1 87 00 00 00 00       $%  ANS002:7E9 03 22 F1 87 00 00 00 00
  $%  REQ003:7E1 03 22 F1 8A 00 00 00 00       $%  ANS003:7E9 03 22 F1 8A 00 00 00 00
  $%  REQ004:7E1 03 22 F1 8B 00 00 00 00       $%  ANS004:7E9 03 22 F1 8B 00 00 00 00
  $%  REQ005:7E1 03 22 F1 8C 00 00 00 00       $%  ANS005:7E9 03 22 F1 8C 00 00 00 00
  $%  REQ006:7E1 03 22 F1 90 00 00 00 00       $%  ANS006:7E9 03 22 F1 90 00 00 00 00
  $%  REQ007:7E1 03 22 F1 93 00 00 00 00       $%  ANS007:7E9 03 22 F1 93 00 00 00 00
  $%  REQ008:7E1 03 22 F1 95 00 00 00 00       $%  ANS008:7E9 03 22 F1 95 00 00 00 00
  $%  REQ009:7E1 03 22 F1 98 00 00 00 00       $%  ANS009:7E9 03 22 F1 98 00 00 00 00
  $%  REQ010:7E1 03 22 F1 99 00 00 00 00       $%  ANS010:7E9 03 22 F1 99 00 00 00 00
  $%  REQ011:7E1 03 22 F1 9D 00 00 00 00       $%  ANS011:7E9 03 22 F1 9D 00 00 00 00
  $%  REQ012:7E1 03 22 F1 82 00 00 00 00       $%  ANS012:7E9 03 22 F1 82 00 00 00 00

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
  $  REQ000:7E1 03 22 13 00 00 00 00 00       $  ANS000:7E9 03 22 13 00 00 00 00 00
  $  REQ001:7E1 03 22 13 01 00 00 00 00       $  ANS001:7E9 03 22 13 01 00 00 00 00
  $  REQ002:7E1 03 22 13 02 00 00 00 00       $  ANS002:7E9 03 22 13 02 00 00 00 00
  $  REQ003:7E1 03 22 13 03 00 00 00 00       $  ANS003:7E9 03 22 13 03 00 00 00 00
  $  REQ004:7E1 03 22 13 04 00 00 00 00       $  ANS004:7E9 03 22 13 04 00 00 00 00
  $  REQ005:7E1 03 22 13 05 00 00 00 00       $  ANS005:7E9 03 22 13 05 00 00 00 00
  $  REQ006:7E1 03 22 13 06 00 00 00 00       $  ANS006:7E9 03 22 13 06 00 00 00 00
  $  REQ007:7E1 03 22 13 07 00 00 00 00       $  ANS007:7E9 03 22 13 07 00 00 00 00
  $  REQ008:7E1 03 22 13 08 00 00 00 00       $  ANS008:7E9 03 22 13 08 00 00 00 00
  $  REQ009:7E1 03 22 13 09 00 00 00 00       $  ANS009:7E9 03 22 13 09 00 00 00 00
  $  REQ010:7E1 03 22 13 0A 00 00 00 00       $  ANS010:7E9 03 22 13 0A 00 00 00 00
  $  REQ011:7E1 03 22 13 0B 00 00 00 00       $  ANS011:7E9 03 22 13 0B 00 00 00 00
  $  REQ012:7E1 03 22 13 0C 00 00 00 00       $  ANS012:7E9 03 22 13 0C 00 00 00 00
  $  REQ013:7E1 03 22 13 0D 00 00 00 00       $  ANS013:7E9 03 22 13 0D 00 00 00 00
  $  REQ014:7E1 03 22 13 0E 00 00 00 00       $  ANS014:7E9 03 22 13 0E 00 00 00 00
  $  REQ015:7E1 03 22 13 0F 00 00 00 00       $  ANS015:7E9 03 22 13 0F 00 00 00 00
  $  REQ016:7E1 03 22 13 11 00 00 00 00       $  ANS016:7E9 03 22 13 11 00 00 00 00
  $  REQ017:7E1 03 22 13 16 00 00 00 00       $  ANS017:7E9 03 22 13 16 00 00 00 00
  $  REQ018:7E1 03 22 13 17 00 00 00 00       $  ANS018:7E9 03 22 13 17 00 00 00 00
  $  REQ019:7E1 03 22 13 19 00 00 00 00       $  ANS019:7E9 03 22 13 19 00 00 00 00
  $  REQ020:7E1 03 22 13 1A 00 00 00 00       $  ANS020:7E9 03 22 13 1A 00 00 00 00
  $  REQ021:7E1 03 22 13 E0 00 00 00 00       $  ANS021:7E9 03 22 13 E0 00 00 00 00
  $  REQ022:7E1 03 22 13 E1 00 00 00 00       $  ANS022:7E9 03 22 13 E1 00 00 00 00
  $  REQ023:7E1 03 22 13 E2 00 00 00 00       $  ANS023:7E9 03 22 13 E2 00 00 00 00
  $  REQ024:7E1 03 22 13 1B 00 00 00 00       $  ANS024:7E9 03 22 13 1B 00 00 00 00
  $  REQ025:7E1 03 22 13 1C 00 00 00 00       $  ANS025:7E9 03 22 13 1C 00 00 00 00
  $  REQ026:7E1 03 22 13 1E 00 00 00 00       $  ANS026:7E9 03 22 13 1E 00 00 00 00
  $  REQ027:7E1 03 22 13 1F 00 00 00 00       $  ANS027:7E9 03 22 13 1F 00 00 00 00
  $  REQ028:7E1 03 22 13 20 00 00 00 00       $  ANS028:7E9 03 22 13 20 00 00 00 00
  $  REQ029:7E1 03 22 13 21 00 00 00 00       $  ANS029:7E9 03 22 13 21 00 00 00 00
  $  REQ030:7E1 03 22 13 22 00 00 00 00       $  ANS030:7E9 03 22 13 22 00 00 00 00
  $  REQ031:7E1 03 22 13 23 00 00 00 00       $  ANS031:7E9 03 22 13 23 00 00 00 00
  $  REQ032:7E1 03 22 13 25 00 00 00 00       $  ANS032:7E9 03 22 13 25 00 00 00 00
  $  REQ033:7E1 03 22 13 80 00 00 00 00       $  ANS033:7E9 03 22 13 80 00 00 00 00
  $  REQ034:7E1 03 22 13 81 00 00 00 00       $  ANS034:7E9 03 22 13 81 00 00 00 00
  $  REQ035:7E1 03 22 13 82 00 00 00 00       $  ANS035:7E9 03 22 13 82 00 00 00 00
  $  REQ036:7E1 03 22 13 84 00 00 00 00       $  ANS036:7E9 03 22 13 84 00 00 00 00
  $  REQ037:7E1 03 22 13 90 00 00 00 00       $  ANS037:7E9 03 22 13 90 00 00 00 00
  $  REQ038:7E1 03 22 13 92 00 00 00 00       $  ANS038:7E9 03 22 13 92 00 00 00 00
  $  REQ039:7E1 03 22 13 94 00 00 00 00       $  ANS039:7E9 03 22 13 94 00 00 00 00

  $  000.离合器接触点（中期接触点）                                  $    $  mm                $    $  ANS000.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  001.离合器接触点（长期接触点）                                  $    $  mm                $    $  ANS000.BYTE006  $  y=(x1*0x100+x2)*0.01;
  $  002.离合器摩擦系数                                              $    $  /                 $    $  ANS001.BYTE004  $  y=(x1*0x100+x2);
  $  003.离合器摩擦形状系数                                          $    $  %                 $    $  ANS002.BYTE004  $  y=x*0.390625;
  $  004.离合器模型温度                                              $    $  degC              $    $  ANS003.BYTE004  $  y=(x1*0x100+x2);
  $  005.离合器温度状态                                              $    $  /                 $    $  ANS004.BYTE004  $  if(x==0x00)y=@0cdf; else if(x==0x01) y=@0169; else y=@0220;
  $  006.离合器模型EOL学习完成状态(离合器接触点自适应学习)           $    $  /                 $    $  ANS005.BYTE004  $  if(((x1>>0)&1))y=@02de;else y=@02df;
  $  007.离合器模型EOL学习完成状态(离合器参数学习)                   $    $  /                 $    $  ANS005.BYTE004  $  if(((x1>>2)&1))y=@02de;else y=@02df;
  $  008.离合器执行器EOL学习完成状态(离合器加注检查或加注服务)       $    $  /                 $    $  ANS006.BYTE004  $  if(((x1>>1)&1))y=@02de;else y=@02df;
  $  009.MCA供电电压(供电电压)                                       $    $  V                 $    $  ANS007.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  010.MCA供电电压(信号状态)                                       $    $  /                 $    $  ANS007.BYTE006  $  if(x==0xaa)y=@0169;else if(x==0x0f)y=@000b;else if(x==0xff)y=@0132;else if(x==0xf0) y=@0318;else if(x==0xc3)y=@0cdf; else y=@0220;
  $  011.当前档位和状态(档位)                                        $    $  /                 $    $  ANS008.BYTE004  $  if(x==0x00)y=@011f;else if(x==0x01)y=@0118;else if(x==0x2)y=@0119;else if(x==0x3)y=@011a;else if(x==0x4)y=@011b; else if(x==0x05) y=@011c; else if(x==0x06) y=@011d; else if(x==0x07) y=@011e;else y=@0220;
  $  012.当前档位和状态(状态)                                        $    $  /                 $    $  ANS008.BYTE005  $  if(x==0xff)y=@0132;else if(x==0xcc)y=@0ce0;else if(x==0xC3)y=@0ce1;else if(x==0xAA)y=@0ce2;else if(x==0x0f)y=@00be; else y=@0220;
  $  013.变速箱选档PWM(脉宽调制)信号(SYW)                            $    $  % PWM             $    $  ANS009.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  014.变速箱换挡PWM(脉宽调制)信号(SYW)                            $    $  % PWM             $    $  ANS010.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  015.离合器执行器实际压力(压力)                                  $    $  bar               $    $  ANS011.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  016.离合器执行器实际压力(信号状态)                              $    $  /                 $    $  ANS011.BYTE006  $  if(x==(0-2))y=@0132;else if(x==(0-1))y=@000b;else if(x==0)y=@0318;else if(x==1)y=@0cdf;else if(x==2)y=@0169; else y=@0220;
  $  017.离合器执行器目标位置                                        $    $  mm                $    $  ANS012.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  018.换挡杆PWM(脉宽调制)信号                                     $    $  % PWM             $    $  ANS013.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  019.离合器寿命计数器                                            $    $  /                 $    $  ANS014.BYTE004  $  y=(x1*0x100+x2);
  $  020.控制单元寿命计数器                                          $    $  min               $    $  ANS015.BYTE004  $  y=(x1*0x1000000+x2*0x10000+x3*0x100+x4);
  $  021.离合器扭矩可信度                                            $    $  /                 $    $  ANS016.BYTE004  $  if(x==0)y=@0024;else if(x==1)y=@00bc;else if(x==2)y=@02fa;else if(x==3)y=@00bd;else y=@0220;
  $  022.PCB温度传感器(PCB温度)                                      $    $  degC              $    $  ANS017.BYTE004  $  y=(x1*0x100+x2);
  $  023.PCB温度传感器(信号状态)                                     $    $  /                 $    $  ANS017.BYTE006  $  if(x==0xaa)y=@0169;else if(x==0x0f)y=@000b;else if(x==0xff)y=@0132;else if(x==0xf0) y=@0318;else if(x==0xc3)y=@0cdf; else y=@0220;
  $  024.里程表（冻结帧使用）                                        $    $  km                $    $  ANS018.BYTE004  $  y=(x1*0x10000+x2*0x100+x3);
  $  025.手刹状态（按下/未按下）                                     $    $  /                 $    $  ANS019.BYTE004  $  if(x==0) y=@0cee; else if(x==1)y=@0cef;else y=@0220;
  $  026.脚刹状态（应用/未应用）                                     $    $  /                 $    $  ANS020.BYTE004  $  if(x==0) y=@0cee; else if(x==1)y=@0cef;else y=@0220;
  $  027.离合器执行器位置控制(位置)                                  $    $  mm                $    $  ANS021.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  028.离合器执行器位置控制(速度限制)                              $    $  mm/sec            $    $  ANS021.BYTE006  $  y=(x1*0x100+x2)*0.1;
  $  029.离合器执行器电压控制                                        $    $  V                 $    $  ANS022.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  030.补液孔状态控制                                              $    $  /                 $    $  ANS023.BYTE004  $  if(x==0x0)y=@0cf0;else if(x==0x1)y=@0cf1;else y=@0220;
  $  031.CAN测量激活                                                 $    $  /                 $    $  ANS024.BYTE004  $  y=(x1*0x100+x2);
  $  032.EOL学习模式                                                 $    $  /                 $    $  ANS025.BYTE004  $  y=(x1*0x100+x2);
  $  033.补液未执行计数                                              $    $  /                 $    $  ANS026.BYTE004  $  y=(x1*0x100+x2);
  $  034.ST(正时电磁阀)角度补偿                                      $    $  tbd               $    $  ANS027.BYTE004  $  y=(x1*0x100+x2);
  $  035.发动机扭矩质量标志                                          $    $  tbd               $    $  ANS028.BYTE004  $  if(x==(0-2))y=@0132;else if(x==(0-1))y=@000b;else if(x==0)y=@0318;else if(x==1)y=@0cdf;else if(x==2)y=@0169; else y=@0220;
  $  036.输入轴转速                                                  $    $  rpm               $    $  ANS029.BYTE004  $  y=(x1*0x100+x2);
  $  037.输入轴转速(信号状态)                                        $    $  /                 $    $  ANS029.BYTE006  $  if(x==(0-2))y=@0132;else if(x==(0-1))y=@000b;else if(x==0)y=@0318;else if(x==1)y=@0cdf;else if(x==2)y=@0169; else y=@0220;
  $  038.离合器执行器参考位置                                        $    $  mm                $    $  ANS030.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  039.离合器执行器参考角度                                        $    $  deg               $    $  ANS031.BYTE004  $  y=(x1*0x100+x2);
  $  040.换挡意图                                                    $    $  /                 $    $  ANS032.BYTE004  $  if(x==0x0)y=@00be;else if(x==0x1)y=@02d3;else y=@0220;
  $  041.MT传感器调试模式                                            $    $  /                 $    $  ANS033.BYTE004  $  if(x==0x1)y=@0cec;else if(x==0x2)y=@0ced;else y=@0220;
  $  042.底层软件产线模式                                            $    $  /                 $    $  ANS034.BYTE004  $  if(x1==0x01 && x2==0x01) y=@0ce6; else if(x1==0x01 && x2==0x02) y=@0ce7; else if(x1==0x02 && x2==0x01) y=@0ce8;else if(x1==0x02 && x2==0x02) y=@0ce9;else if(x1==0x03 && x2==0x01) y=@0cea; else if(x1==0x03 && x2==0x02) y=@0ceb; else y=@0220;
  $  043.外部角度(位置索引)                                          $    $  /                 $    $  ANS035.BYTE004  $  y=x;
  $  044.外部角度(外部角度)                                          $    $  /                 $    $  ANS035.BYTE005  $  y=(x1*0x100+x2);
  $  045.外部角度(外部角度补充)                                      $    $  /                 $    $  ANS035.BYTE007  $  y=(x1*0x100+x2);
  $  046.BEMF占空比                                                  $    $  %                 $    $  ANS036.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  047.压力偏移                                                    $    $  bar               $    $  ANS037.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  048.当前的X位置                                                 $    $  2048count/rev     $    $  ANS038.BYTE004  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  049.底层软件产线模式完成标志位                                  $    $  /                 $    $  ANS039.BYTE004  $  if(x==0x0)y=@0ce3;else if(x==0x1)y=@0ce4;else if(x==03) y=@0ce5;else y=@0220;

  $)  01.换挡杆自由位置（每个档位+空档）
  $  01.换挡杆自由位置（每个档位+空档）
  $  REQ000:7E1 03 22 13 13 00 00 00 00       $  ANS000:7E9 03 22 13 13 00 00 00 00

  $  000.换挡杆自由位置（空档）       $    $  % PWM     $    $  ANS000.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  001.换挡杆自由位置（1档）        $    $  % PWM     $    $  ANS000.BYTE006  $  y=(x1*0x100+x2)*0.01;
  $  002.换挡杆自由位置（2档）        $    $  % PWM     $    $  ANS000.BYTE008  $  y=(x1*0x100+x2)*0.01;
  $  003.换挡杆自由位置（3档）        $    $  % PWM     $    $  ANS000.BYTE010  $  y=(x1*0x100+x2)*0.01;
  $  004.换挡杆自由位置（4档）        $    $  % PWM     $    $  ANS000.BYTE012  $  y=(x1*0x100+x2)*0.01;
  $  005.换挡杆自由位置（5档）        $    $  % PWM     $    $  ANS000.BYTE014  $  y=(x1*0x100+x2)*0.01;
  $  006.换挡杆自由位置（6档）        $    $  % PWM     $    $  ANS000.BYTE016  $  y=(x1*0x100+x2)*0.01;
  $  007.换挡杆自由位置（倒档）       $    $  % PWM     $    $  ANS000.BYTE018  $  y=(x1*0x100+x2)*0.01;

  $)  02.变速箱换挡自由位置（每个档位+空档)
  $  02.变速箱换挡自由位置（每个档位+空档)
  $  REQ000:7E1 03 22 13 14 00 00 00 00       $  ANS000:7E9 03 22 13 14 00 00 00 00

  $  000.变速箱换挡自由位置（空档)       $    $  % PWM     $    $  ANS000.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  001.变速箱换挡自由位置（1档)        $    $  % PWM     $    $  ANS000.BYTE006  $  y=(x1*0x100+x2)*0.01;
  $  002.变速箱换挡自由位置（2档)        $    $  % PWM     $    $  ANS000.BYTE008  $  y=(x1*0x100+x2)*0.01;
  $  003.变速箱换挡自由位置（3档)        $    $  % PWM     $    $  ANS000.BYTE010  $  y=(x1*0x100+x2)*0.01;
  $  004.变速箱换挡自由位置（4档)        $    $  % PWM     $    $  ANS000.BYTE012  $  y=(x1*0x100+x2)*0.01;
  $  005.变速箱换挡自由位置（5档)        $    $  % PWM     $    $  ANS000.BYTE014  $  y=(x1*0x100+x2)*0.01;
  $  006.变速箱换挡自由位置（6档)        $    $  % PWM     $    $  ANS000.BYTE016  $  y=(x1*0x100+x2)*0.01;
  $  007.变速箱换挡自由位置（倒档)       $    $  % PWM     $    $  ANS000.BYTE018  $  y=(x1*0x100+x2)*0.01;

  $)  03.变速箱换挡自由位置（每个档位+空档)
  $  03.变速箱换挡自由位置（每个档位+空档)
  $  REQ000:7E1 03 22 13 15 00 00 00 00       $  ANS000:7E9 03 22 13 15 00 00 00 00

  $  000.变速箱选档自由位置（空档）       $    $  % PWM     $    $  ANS000.BYTE004  $  y=(x1*0x100+x2)*0.01;
  $  001.变速箱选档自由位置（1档）        $    $  % PWM     $    $  ANS000.BYTE006  $  y=(x1*0x100+x2)*0.01;
  $  002.变速箱选档自由位置（2档）        $    $  % PWM     $    $  ANS000.BYTE008  $  y=(x1*0x100+x2)*0.01;
  $  003.变速箱选档自由位置（3档）        $    $  % PWM     $    $  ANS000.BYTE010  $  y=(x1*0x100+x2)*0.01;
  $  004.变速箱选档自由位置（4档）        $    $  % PWM     $    $  ANS000.BYTE012  $  y=(x1*0x100+x2)*0.01;
  $  005.变速箱选档自由位置（5档）        $    $  % PWM     $    $  ANS000.BYTE014  $  y=(x1*0x100+x2)*0.01;
  $  006.变速箱选档自由位置（6档）        $    $  % PWM     $    $  ANS000.BYTE016  $  y=(x1*0x100+x2)*0.01;
  $  007.变速箱选档自由位置（倒档）       $    $  % PWM     $    $  ANS000.BYTE018  $  y=(x1*0x100+x2)*0.01;

  $)  04.齿轮位置EOL学习状态（包括空档）
  $  04.齿轮位置EOL学习状态（包括空档）
  $  REQ000:7E1 03 22 13 18 00 00 00 00       $  ANS000:7E9 03 22 13 18 00 00 00 00

  $  000.齿轮位置EOL学习状态（空档）       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>0)&1)) y=@0131; else y=@0130;
  $  001.齿轮位置EOL学习状态（1档）        $    $  /     $    $  ANS000.BYTE004  $  if(((x>>1)&1)) y=@0131; else y=@0130;
  $  002.齿轮位置EOL学习状态（2档）        $    $  /     $    $  ANS000.BYTE004  $  if(((x>>2)&1)) y=@0131; else y=@0130;
  $  003.齿轮位置EOL学习状态（3档）        $    $  /     $    $  ANS000.BYTE004  $  if(((x>>3)&1)) y=@0131; else y=@0130;
  $  004.齿轮位置EOL学习状态（4档）        $    $  /     $    $  ANS000.BYTE004  $  if(((x>>4)&1)) y=@0131; else y=@0130;
  $  005.齿轮位置EOL学习状态（5档）        $    $  /     $    $  ANS000.BYTE004  $  if(((x>>5)&1)) y=@0131; else y=@0130;
  $  006.齿轮位置EOL学习状态（6档）        $    $  /     $    $  ANS000.BYTE004  $  if(((x>>6)&1)) y=@0131; else y=@0130;
  $  007.齿轮位置EOL学习状态（倒档）       $    $  /     $    $  ANS000.BYTE004  $  if(((x>>7)&1)) y=@0131; else y=@0130;

  $)  05.MT传感器信息
  $  05.MT传感器信息
  $  REQ000:7E1 03 22 13 91 00 00 00 00       $  ANS000:7E9 03 22 13 91 00 00 00 00

  $  000.MT1传感器角度值           $    $  /     $    $  ANS000.BYTE004  $  y=(x1*0x100+x2);
  $  001.MT1传感器半转数数据       $    $  /     $    $  ANS000.BYTE006  $  y=(x1*0x100+x2);
  $  002.MT1传感器温度值           $    $  /     $    $  ANS000.BYTE008  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  003.MT1传感器场数据           $    $  /     $    $  ANS000.BYTE012  $  y=(x1*0x100+x2);
  $  004.MT1传感器转数增量值       $    $  /     $    $  ANS000.BYTE014  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  005.MT2传感器角度值           $    $  /     $    $  ANS000.BYTE018  $  y=(x1*0x100+x2);
  $  006.MT2传感器半转数数据       $    $  /     $    $  ANS000.BYTE020  $  y=(x1*0x100+x2);
  $  007.MT2传感器温度值           $    $  /     $    $  ANS000.BYTE022  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;
  $  008.MT2传感器场数据           $    $  /     $    $  ANS000.BYTE026  $  y=(x1*0x100+x2);
  $  009.MT2传感器转数增量值       $    $  /     $    $  ANS000.BYTE028  $  y=x1*0x1000000+x2*0x10000+x3*0x100+x4;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7E1 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7E1 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
