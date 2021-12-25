
    车型ID：07cd

    模拟：协议模拟-->07cd

;******************************************************************************************************************************************************

    通讯线: $~03$~11$~500k$~7DA

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
			y=(x1<<16)+(x2<<8)+x3; 

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/74000000


  $#  01.读故障码库
  $#  REQ000:7D2 02 19 0A 00 00 00 00 00       $#  ANS000:7DA 02 19 0A 00 00 00 00 00

  帧长控制故障码个数，从$#ANS000.BYTE4$#开始每$#4$#个字节表示一个故障码，前$#3$#表示码号。

  码库:

  $*$*DTC/74000000


;******************************************************************************************************************************************************

清除故障码:

  $$  REQ000:7D2 04 14 FF FF FF 00 00 00       $$  ANS000:7DA 04 14 FF FF FF 00 00 00

;******************************************************************************************************************************************************

版本信息:

  $%  REQ000:7D2 03 22 F1 8A 00 00 00 00       $%  ANS000:7DA 03 22 F1 8A 00 00 00 00
  $%  REQ001:7D2 03 22 F1 8C 00 00 00 00       $%  ANS001:7DA 03 22 F1 8C 00 00 00 00
  $%  REQ002:7D2 03 22 F1 90 00 00 00 00       $%  ANS002:7DA 03 22 F1 90 00 00 00 00

  $%  000:供应商代码:                   $%    $%  ANS000.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6);
  $%  001:ECU(电子控制器)序列号:        $%    $%  ANS001.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10);
  $%  002:车辆识别号(VIN码):            $%    $%  ANS002.BYTE004  $%  ASCII(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17);

;******************************************************************************************************************************************************

读数据流: 

  $  REQ000:7D2 03 22 DE 00 00 00 00 00       $  ANS000:7DA 03 22 DE 00 00 00 00 00
  $  REQ001:7D2 03 22 FD 02 00 00 00 00       $  ANS001:7DA 03 22 FD 02 00 00 00 00
  $  REQ002:7D2 03 22 FD 03 00 00 00 00       $  ANS002:7DA 03 22 FD 03 00 00 00 00
  $  REQ003:7D2 03 22 FD 04 00 00 00 00       $  ANS003:7DA 03 22 FD 04 00 00 00 00

  $  000.车辆调校选择器             $    $  /       $    $  ANS000.BYTE004  $  y=x;
  $  001.齿条左端行程初始化值       $    $  deg     $    $  ANS001.BYTE004  $  if((x1*0x100 + x2)<0x8000) y=(x1*0x100 + x2)*0.1; else y=(x1*0x100 + x2 -0xffff)*0.1;
  $  002.齿条右端行程初始化值       $    $  deg     $    $  ANS002.BYTE004  $  y=((x1<<8)+x2)*0.1;
  $  003.齿条长度                   $    $  deg     $    $  ANS003.BYTE004  $  y=(x1<<8)+x2;

;******************************************************************************************************************************************************

30帧:

  $FC REQ000:7D2 30 00 00 00 00 00 00 00  $FC 

;******************************************************************************************************************************************************
