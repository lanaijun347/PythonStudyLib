
    车型ID：1f15

    模拟：协议模拟-->1f15

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~72C

进入命令:

  $~  REQ000:724 02 10 01 00 00 00 00 00       $~  ANS000:72C 02 10 01 00 00 00 00 00
  $~  REQ001:724 02 10 01 00 00 00 00 00       $~  ANS001:72C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:724 02 3E 80 00 00 00 00 00       $!  ANS000:72C 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:724 04 18 00 00 FF 00 00 00       $#  ANS000:72C 04 18 00 00 FF 00 00 00

		控制公式：
			y=(x1<<8)+x2;

  ANS000.BYTE02 控制故障码个数，从$#ANS000.BYTE3$#开始每$#3$#个字节表示一个故障码，前$#2$#表示码号。

  码库:

  $*$*DTC/feff0000_2BYTE


<RDTC>
  <FUNCTION type="0" num="0">
     <param type="string" value="1"/>
   </FUNCTION>
</RDTC>

;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:724 03 14 00 FF 00 00 00 00       $$  ANS000:72C 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:724 03 22 00 01 00 00 00 00       $%  ANS000:72C 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=x1*0.1;
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=x1*0.1;
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@0197,x2,@0198,x3,@0199);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:724 03 22 B0 00 00 00 00 00       $  ANS000:72C 03 22 B0 00 00 00 00 00
  $  REQ001:724 03 22 B0 01 00 00 00 00       $  ANS001:72C 03 22 B0 01 00 00 00 00
  $  REQ002:724 03 22 B0 02 00 00 00 00       $  ANS002:72C 03 22 B0 02 00 00 00 00
  $  REQ003:724 03 22 B0 03 00 00 00 00       $  ANS003:72C 03 22 B0 03 00 00 00 00
  $  REQ004:724 03 22 B0 04 00 00 00 00       $  ANS004:72C 03 22 B0 04 00 00 00 00
  $  REQ005:724 03 22 B0 05 00 00 00 00       $  ANS005:72C 03 22 B0 05 00 00 00 00
  $  REQ006:724 03 22 B0 06 00 00 00 00       $  ANS006:72C 03 22 B0 06 00 00 00 00
  $  REQ007:724 03 22 B0 07 00 00 00 00       $  ANS007:72C 03 22 B0 07 00 00 00 00
  $  REQ008:724 03 22 B0 08 00 00 00 00       $  ANS008:72C 03 22 B0 08 00 00 00 00
  $  REQ009:724 03 22 B0 09 00 00 00 00       $  ANS009:72C 03 22 B0 09 00 00 00 00
  $  REQ010:724 03 22 B0 0A 00 00 00 00       $  ANS010:72C 03 22 B0 0A 00 00 00 00
  $  REQ011:724 03 22 B0 0B 00 00 00 00       $  ANS011:72C 03 22 B0 0B 00 00 00 00
  $  REQ012:724 03 22 B0 0C 00 00 00 00       $  ANS012:72C 03 22 B0 0C 00 00 00 00
  $  REQ013:724 03 22 B0 0D 00 00 00 00       $  ANS013:72C 03 22 B0 0D 00 00 00 00
  $  REQ014:724 03 22 B0 0E 00 00 00 00       $  ANS014:72C 03 22 B0 0E 00 00 00 00
  $  REQ015:724 03 22 B0 0F 00 00 00 00       $  ANS015:72C 03 22 B0 0F 00 00 00 00

  $  000.昼行灯继电器使用次数           $    $  次       $    $  ANS000.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  001.昼行灯继电器使用时间           $    $  小时     $    $  ANS000.BYTE007  $  y=x2+x1*256;
  $  002.喇叭继电器使用次数             $    $  次       $    $  ANS001.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  003.喇叭继电器使用时间             $    $  小时     $    $  ANS001.BYTE007  $  y=x2+x1*256;
  $  004.小灯继电器使用次数             $    $  次       $    $  ANS002.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  005.小灯继电器使用时间             $    $  小时     $    $  ANS002.BYTE007  $  y=x2+x1*256;
  $  006.前洗涤继电器使用次数           $    $  次       $    $  ANS003.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  007.前洗涤继电器使用时间           $    $  小时     $    $  ANS003.BYTE007  $  y=x2+x1*256;
  $  008.前高速雨刮继电器使用次数       $    $  次       $    $  ANS004.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  009.前高速雨刮继电器使用时间       $    $  小时     $    $  ANS004.BYTE007  $  y=x2+x1*256;
  $  010.前低速继电器使用次数           $    $  次       $    $  ANS005.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  011.前低速继电器使用时间           $    $  小时     $    $  ANS005.BYTE007  $  y=x2+x1*256;
  $  012.前雾灯继电器使用次数           $    $  次       $    $  ANS006.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  013.前雾灯继电器使用时间           $    $  小时     $    $  ANS006.BYTE007  $  y=x2+x1*256;
  $  014.报警器继电器使用次数           $    $  次       $    $  ANS007.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  015.报警器继电器使用时间           $    $  小时     $    $  ANS007.BYTE007  $  y=x2+x1*256;
  $  016.后除霜继电器使用次数           $    $  次       $    $  ANS008.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  017.后除霜继电器使用时间           $    $  小时     $    $  ANS008.BYTE007  $  y=x2+x1*256;
  $  018.前舱盖打开次数                 $    $  次       $    $  ANS009.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  019.近光灯继电器使用次数           $    $  次       $    $  ANS010.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  020.近光灯继电器使用时间           $    $  小时     $    $  ANS010.BYTE007  $  y=x2+x1*256;
  $  021.远光灯继电器使用次数           $    $  次       $    $  ANS011.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  022.远光灯继电器使用时间           $    $  小时     $    $  ANS011.BYTE007  $  y=x2+x1*256;
  $  023.后雾灯继电器使用次数           $    $  次       $    $  ANS012.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  024.后雾灯继电器使用时间           $    $  小时     $    $  ANS012.BYTE007  $  y=x2+x1*256;
  $  025.后雨刮继电器使用次数           $    $  次       $    $  ANS013.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  026.后雨刮继电器使用时间           $    $  小时     $    $  ANS013.BYTE007  $  y=x2+x1*256;
  $  027.后洗涤继电器使用次数           $    $  次       $    $  ANS014.BYTE004  $  y=x1*256*256+x2*256+x3;
  $  028.后洗涤继电器使用时间           $    $  小时     $    $  ANS014.BYTE007  $  y=x2+x1*256;
  $  029.电源电压                       $    $  V        $    $  ANS015.BYTE004  $  y=x1;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:724 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
