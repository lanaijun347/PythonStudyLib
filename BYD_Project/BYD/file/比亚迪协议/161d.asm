
    车型ID：161d

    模拟：协议模拟-->161d

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k

进入命令:

  $~  REQ000:754 02 10 01 00 00 00 00 00       $~  ANS000:75C 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:754 02 3E 80 00 00 00 00 00       $!  ANS000:75C 02 3E 80 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  REQ000:754 04 18 00 00 FF 00 00 00       $#  ANS000:75C 04 18 00 00 FF 00 00 00

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

  $$  REQ000:754 03 14 00 FF 00 00 00 00       $$  ANS000:75C 03 14 00 FF 00 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:754 03 22 00 01 00 00 00 00       $%  ANS000:75C 03 22 00 01 00 00 00 00

  $%  000:软件版本:        $%    $%  ANS000.BYTE004  $%  y=x1/10.0;
  $%  001:硬件版本:        $%    $%  ANS000.BYTE005  $%  y=x1/10.0;
  $%  002:生产日期:        $%    $%  ANS000.BYTE007  $%  y=SPRINTF([20%02d%s%02d%s%02d%s],x1,@001d,x2,@001e,x3,@001f);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:754 03 22 00 04 00 00 00 00       $  ANS000:75C 03 22 00 04 00 00 00 00
  $  REQ001:754 03 22 00 05 00 00 00 00       $  ANS001:75C 03 22 00 05 00 00 00 00
  $  REQ002:754 03 22 00 06 00 00 00 00       $  ANS002:75C 03 22 00 06 00 00 00 00
  $  REQ003:754 03 22 00 07 00 00 00 00       $  ANS003:75C 03 22 00 07 00 00 00 00

  $  000:左前轮ID             $    $          $    $  ANS000.BYTE004  $  HEX(x1,x2,x3,x4);
  $  001:左前轮信号状态       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  002:左前轮漏气状态       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@009e;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  003:左前轮压力状态       $    $          $    $  ANS000.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  004:左前轮压力值         $    $  kPa     $    $  ANS000.BYTE008  $  if(x1==0x00) y=(x4%16)*256+x3;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  005:右前轮ID             $    $          $    $  ANS001.BYTE004  $  HEX(x1,x2,x3,x4);
  $  006:右前轮信号状态       $    $          $    $  ANS001.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  007:右前轮漏气状态       $    $          $    $  ANS001.BYTE008  $  if(x1==0x00)y=@009e;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  008:右前轮压力状态       $    $          $    $  ANS001.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  009:右前轮压力值         $    $  kPa     $    $  ANS001.BYTE008  $  if(x1==0x00) y=(x4%16)*256+x3;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  010:左后轮ID             $    $          $    $  ANS002.BYTE004  $  HEX(x1,x2,x3,x4);
  $  011:左后轮信号状态       $    $          $    $  ANS002.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  012:左后轮漏气状态       $    $          $    $  ANS002.BYTE008  $  if(x1==0x00)y=@009e;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  013:左后轮压力状态       $    $          $    $  ANS002.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  014:左后轮压力值         $    $  kPa     $    $  ANS002.BYTE008  $  if(x1==0x00) y=(x4%16)*256+x3;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  015:右后轮ID             $    $          $    $  ANS003.BYTE004  $  HEX(x1,x2,x3,x4);
  $  016:右后轮信号状态       $    $          $    $  ANS003.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  017:右后轮漏气状态       $    $          $    $  ANS003.BYTE008  $  if(x1==0x00)y=@009e;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  018:右后轮压力状态       $    $          $    $  ANS003.BYTE008  $  if(x1==0x00)y=@0022;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;
  $  019:右后轮压力值         $    $  kPa     $    $  ANS003.BYTE008  $  if(x1==0x00) y=(x4%16)*256+x3;else if(x1==0xff)y=@0098;else if(x1==0x01)y=@0099;else y=@0076;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:754 30 00 05 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
