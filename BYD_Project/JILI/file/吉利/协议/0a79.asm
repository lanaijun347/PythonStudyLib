
    车型ID：0a79

    模拟：协议模拟-->0a79

;******************************************************************************************************************************************************

    通讯线: $~06$~14$~500k$~7DA

进入命令:

  $~  REQ000:7D2 02 10 01 00 00 00 00 00       $~  ANS000:7DA 02 10 01 00 00 00 00 00

空闲命令:

  $!  REQ000:7D2 02 3E 00 00 00 00 00 00       $!  ANS000:7DA 02 3E 00 00 00 00 00 00

退出命令:



;******************************************************************************************************************************************************

读取故障码:

  $#  00.读故障码
  $#  REQ000:7D2 03 19 02 09 00 00 00 00       $#  ANS000:7DA 03 19 02 09 00 00 00 00

		控制公式：
			y=(x1<<16)+(x2<<8)+x3;

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/af000000


  $#  01.读故障码库
  $#  REQ000:7D2 02 19 0A 00 00 00 00 00       $#  ANS000:7DA 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/af000000


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

  $$  REQ000:7D2 04 14 FF FF FF 00 00 00       $$  ANS000:7DA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7D2 03 22 F1 89 00 00 00 00       $%  ANS000:7DA 03 22 F1 89 00 00 00 00
  $%  REQ001:7D2 03 22 F1 8A 00 00 00 00       $%  ANS001:7DA 03 22 F1 8A 00 00 00 00
  $%  REQ002:7D2 03 22 F1 8B 00 00 00 00       $%  ANS002:7DA 03 22 F1 8B 00 00 00 00
  $%  REQ003:7D2 03 22 F1 8C 00 00 00 00       $%  ANS003:7DA 03 22 F1 8C 00 00 00 00
  $%  REQ004:7D2 03 22 F1 90 00 00 00 00       $%  ANS004:7DA 03 22 F1 90 00 00 00 00
  $%  REQ005:7D2 03 22 F1 97 00 00 00 00       $%  ANS005:7DA 03 22 F1 97 00 00 00 00

  $%  000:Geely软件版本号:                           $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16);
  $%  001:供应商代码:                                $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  002:ECU(电子控制器)生产日期:                   $%    $%  ANS002.BYTE004  $%  y=SPRINTF([%02X%02X-%02X-%02X],x1,x2,x3,x4);
  $%  003:ECU(电子控制器)序列号:                     $%    $%  ANS003.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24);
  $%  004:车辆识别号（VIN码）:                       $%    $%  ANS004.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);
  $%  005:ECU(电子控制器)系统名称或发动机类型:       $%    $%  ANS005.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7D2 03 22 DE 00 00 00 00 00       $  ANS000:7DA 03 22 DE 00 00 00 00 00
  $  REQ001:7D2 03 22 FD 02 00 00 00 00       $  ANS001:7DA 03 22 FD 02 00 00 00 00
  $  REQ002:7D2 03 22 FD 03 00 00 00 00       $  ANS002:7DA 03 22 FD 03 00 00 00 00
  $  REQ003:7D2 03 22 FD 04 00 00 00 00       $  ANS003:7DA 03 22 FD 04 00 00 00 00
  $  REQ004:7D2 03 22 FD 08 00 00 00 00       $  ANS004:7DA 03 22 FD 08 00 00 00 00

  $  000.车辆变量调谐选择器                    $    $  NA      $    $  ANS000.BYTE004  $  switxh(x)0x01:y=@012f;0x02:y=@0837;0x03:y=@0838;0x04:y=@0839;default:y=x;
  $  001.初始左侧RES位置(SYW)                  $    $  deg     $    $  ANS001.BYTE004  $  if(x1>=0x80) y=((x1*0x100+x2)-65536)*0.1; else y=((x1*0x100+x2)*0.1);
  $  002.初始右侧RES位置(SYW)                  $    $  deg     $    $  ANS002.BYTE004  $  y=(x1*0x100+x2)*0.1;
  $  003.支架长度                              $    $  deg     $    $  ANS003.BYTE004  $  y=x1*0x100+x2;
  $  004.PDC(倒车雷达控制系统)初始扭矩值       $    $  Nm      $    $  ANS004.BYTE004  $  y=(x1*0x100+x2)/4096;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7D2 30 00 00 00 00 00 00 00  $FC 
  $FC REQ001:7D2 30 00 0B 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
