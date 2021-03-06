
    车型ID：2c07

    模拟：协议模拟-->2c07

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~683,603

进入命令:

  $~  REQ000:683 02 10 03 00 00 00 00 00       $~  ANS000:683 02 10 03 00 00 00 00 00

空闲命令:

  $!  REQ000:683 02 3E 00 00 00 00 00 00       $!  ANS000:683 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读当前故障码
  $#  REQ000:683 03 19 01 01 00 00 00 00       $#  ANS000:683 03 19 01 01 00 00 00 00
  $#  REQ001:683 03 19 02 01 00 00 00 00       $#  ANS001:683 03 19 02 01 00 00 00 00

		控制公式：
			y=(x1<<8)+x2; 
			y=(x1<<16)+(x2<<8)+x3; 

  ANS000.BYTE05-06 控制故障码个数，从$#ANS001.BYTE04$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ce000000


  $#  01.读历史故障码
  $#  REQ000:683 03 19 01 08 00 00 00 00       $#  ANS000:683 03 19 01 08 00 00 00 00
  $#  REQ001:683 03 19 02 08 00 00 00 00       $#  ANS001:683 03 19 02 08 00 00 00 00

		控制公式：
			y=(x1<<8)+x2; 
			y=(x1<<16)+(x2<<8)+x3; 

  ANS000.BYTE05-06 控制故障码个数，从$#ANS001.BYTE04$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/ce000000


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="2"/>
   </FUNCTION>
  <FUNCTION type="0" num="1">
     <param type="string" value="2"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:683 04 14 FF FF FF 00 00 00       $$  ANS000:683 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:683 03 22 F0 15 00 00 00 00       $  ANS000:683 03 22 F0 15 00 00 00 00
  $  REQ001:683 03 22 FD 01 00 00 00 00       $  ANS001:683 03 22 FD 01 00 00 00 00
  $  REQ002:683 03 22 FD 02 00 00 00 00       $  ANS002:683 03 22 FD 02 00 00 00 00
  $  REQ003:683 03 22 FD 03 00 00 00 00       $  ANS003:683 03 22 FD 03 00 00 00 00
  $  REQ004:683 03 22 FD 04 00 00 00 00       $  ANS004:683 03 22 FD 04 00 00 00 00
  $  REQ005:683 03 22 F1 86 00 00 00 00       $  ANS005:683 03 22 F1 86 00 00 00 00
  $  REQ006:683 03 22 F1 8A 00 00 00 00       $  ANS006:683 03 22 F1 8A 00 00 00 00
  $  REQ007:683 03 22 F1 8B 00 00 00 00       $  ANS007:683 03 22 F1 8B 00 00 00 00
  $  REQ008:683 03 22 F1 90 00 00 00 00       $  ANS008:683 03 22 F1 90 00 00 00 00
  $  REQ009:683 03 22 F1 92 00 00 00 00       $  ANS009:683 03 22 F1 92 00 00 00 00
  $  REQ010:683 03 22 F1 94 00 00 00 00       $  ANS010:683 03 22 F1 94 00 00 00 00
  $  REQ011:683 03 22 F1 98 00 00 00 00       $  ANS011:683 03 22 F1 98 00 00 00 00
  $  REQ012:683 03 22 F1 01 00 00 00 00       $  ANS012:683 03 22 F1 01 00 00 00 00
  $  REQ013:683 03 22 F1 02 00 00 00 00       $  ANS013:683 03 22 F1 02 00 00 00 00
  $  REQ014:683 03 22 F1 03 00 00 00 00       $  ANS014:683 03 22 F1 03 00 00 00 00

  $  000.BMS服务日期                       $    $       $    $  ANS000.BYTE004  $  Y=SPRINTF([20%.2x.%.2x.%.2x],x1,x2,x3);
  $  001.BMS零件号                         $    $       $    $  ANS001.BYTE004  $  Y=SPRINTF([%.2x%.2x%s],x1,x2,ASCII(x3,x4,x5,x6,x7,x8,x9));
  $  002.BMS标定软件零件号                 $    $       $    $  ANS002.BYTE004  $  Y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8);
  $  003.BMS装载程序版本号                 $    $       $    $  ANS003.BYTE004  $  Y=SPRINTF([%x%x%x%c%x%x],x1,x2,x3,x4,x5,x6);
  $  004.BMS应用软件零件号                 $    $       $    $  ANS004.BYTE004  $  Y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15);
  $  005.BMS当前诊断层                     $    $       $    $  ANS005.BYTE004  $  Y=SPRINTF([%.2x],x1);
  $  006.BMS供应商标识符                   $    $       $    $  ANS006.BYTE004  $  Y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $  007.BMS生产日期                       $    $       $    $  ANS007.BYTE004  $  Y=SPRINTF([20%.2x.%.2x.%.2x],x1,x2,x3);
  $  008.车辆识别码                        $    $       $    $  ANS008.BYTE004  $  Y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $  009.BMS硬件版本号                     $    $       $    $  ANS009.BYTE004  $  Y=SPRINTF([%s%x],ASCII(x1,x2,x3,x4),x5);
  $  010.BMS软件版本号                     $    $       $    $  ANS010.BYTE004  $  Y=SPRINTF([%s%x],ASCII(x1,x2,x3,x4),x5);
  $  011.BMS维修站编码或诊断仪序列号       $    $       $    $  ANS011.BYTE004  $  Y=ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27);
  $  012.BMS硬件版本号（OEM定义）          $    $       $    $  ANS012.BYTE004  $  Y=SPRINTF([%x%x%x%c%x%x],x1,x2,x3,x4,x5,x6);
  $  013.BMS系统名称                       $    $       $    $  ANS013.BYTE004  $  Y=ASCII(x1,x2,x3);
  $  014.BMS_BOM号                         $    $       $    $  ANS014.BYTE004  $  Y=ASCII(x1,x2,x3,x4,x5,x6,x7);

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:683 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
